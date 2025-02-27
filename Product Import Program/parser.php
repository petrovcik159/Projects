<?php
require ("SimpleXLSXGen.php"); //kniznica pre excel
$parts = [
    ['Cislo artiklu obchodnika', 'Cislo artiklu', 'Vyrobca', 'Nazov artiklu', 'Popis', 'Obrazok', 'Sort', 'Feed' ]
];
$file = file_get_contents('./html/inner.html', true);
//$file = file_get_contents('./html/Katalog części samochodowych APcat - Auto Partner S.A..html', true);

$items = explode ('class="pnl_pice"',$file);
$header=1;

foreach ($items as $item) {
	if ($header==1) { 
		$header = 0; //odignoruj uvodny bordel
		$tmp = explode('class="main_artikel_panel_tr_genart colorClass5_sub1"',$item);
		$tmp1 = explode("<span>",$tmp[1]);
		$tmp2 = explode("</span>",$tmp1[1]);
		$filename = "$tmp2[0].xlsx"; //Nazov tabulky
	}
	else {
		$tmp1 = explode('src="',$item);
		$tmp2 = explode('">',$tmp1[1]);
		$obrazok = strtolower($tmp2[0]); //Link na Obrazok
		if (! str_ends_with($obrazok,".jpg")) $obrazok="";
		
		$tmp = explode('class="tc_number"',$item);
		$tmp1 = explode("<nobr>",$tmp[1]);
		$tmp2 = explode("</nobr>",$tmp1[1]);
		$cao = $tmp2[0]; //Cislo artiklu obchodnika
		
		$tmp = explode('class="pnl_link_eartnr"',$item);
		$tmp1 = explode("<nobr>",$tmp[1]);
		$tmp2 = explode("</nobr>",$tmp1[1]);
		$ca = $tmp2[0]; //Cislo artiklu
		
		$tmp = explode('class="tr_bez"',$item);
		$tmp1 = explode("<span>",$tmp[1]);
		$tmp2 = explode("</span>",$tmp1[1]);
		$nazov = $tmp2[0]; //Nazov artiklu
		
		$tmp = explode('class="tr_artikel_infos"',$item);
		$tmp1 = explode("<span>",$tmp[1]);
		$tmp2 = explode("</span>",$tmp1[1]);
		$popis = $tmp2[0]; //Popis
		
		$tmp = explode('class="pnl_customNumbers"',$item);
		$tmp1 = explode('">',$tmp[1]);
		$tmp2 = explode("</a>",$tmp1[1]);
		$vyrobca = $tmp2[0]; //Popis
		
		$parts[] = [ $cao, $ca, $vyrobca, $nazov, $popis, $obrazok, 0, 0];
		
	}
}

//echo $filename;exit();

$xlsx = Shuchkin\SimpleXLSXGen::fromArray( $parts );
$xlsx->saveAs($filename); // or downloadAs('books.xlsx') or $xlsx_content = (string) $xlsx 
//$xlsx->saveAs('export.xlsx');

?>
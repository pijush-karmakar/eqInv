<?php 
interface iItem{
	public function insert_item($iN, $sN, $mN, $b, $itd, $a, $pD, $wD, $vD, $eID, $cID, $coID);
	public function update_item($iN, $sN, $mN, $b, $itd, $a, $pD, $wD, $vD, $eID, $cID, $coID, $iID);
	public function get_item($id);
	public function get_all_items();
	public function item_categories();
	public function item_conditions();
	public function item_report($choice);
	public function item_avl($choice);
}



///scr_view_zoom(amount,view)
var amount = 1+argument[0];
var view = argument[1];

//Limit to zoom
if (view_wview[view]<=256 and amount<1) exit;
if (view_wview[view]>=2560 and amount>1) exit;

//get the offset
var offx = abs(view_wview[view]*amount - view_wview[view]);
var offy = abs(view_wview[view]*amount - view_hview[view]);

//scale
view_wview[view] *= amount;
view_hview[view] *= amount;

//adjust the posn based on scale
if (amount<1){
view_xview[view] += offx/2;
view_yview[view] += offy/2;
}
if (amount>1){
view_xview[view] -= offx/2;
view_yview[view] -= offy/2;

}
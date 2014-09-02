
bind('player_interact', null, array(item: 374, button: 'left'), @e){
  @player = @e['player']
  if(pinfo(@player, 11)){
    if(has_permission(@player, 'expbottles.use')){
      if(ptexp(@player) < 12){
        msg(colorize('&8[&3Exp&7Bottles&8] &cError: &4You do not have enough xp!'))
       }else{
          @newxp = ptexp(player(@player))
          @newxp = @newxp - 12
          set_ptexp(@player, @newxp)
          @given = pgive_item(@player, 384, 1)
          if(@given != 1){
            die(colorize('&8[&3Exp&7Bottles&8] &cError: &4You do not have enough inventory space!'))
           }
          ptake_item(@player, 374, 1)
       }
     }else{
       msg(colorize('&8[&3Exp&7Bottles&8] &cError: &4You do not have permission to use this feature'))
      }
   }
}
/// @description Insert description here
// You can write your code in this editor
randomize()

player_health = 10;
player_max_health = 10;
player_stamina = 20;
player_max_stamina = 20;
player_stamina_drain = .2;
player_stamina_regen = .05;
player_run_stutter = false;
play_death_animation = false;
has_died = false;

view_collection_log = false;
persistent = true;

// items
transition_to_credits_ready = false;
make_fade = false;
fade_amount = 0;
time_since = 0;
can_heal = true;
heal_amount = .25;
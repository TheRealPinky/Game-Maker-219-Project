switch(global.musicChoice) {
    case 1:
        if(audio_is_playing(snd_getting_paid)) {
            audio_pause_all();
            audio_resume_sound(snd_getting_paid);
        } else {
            audio_pause_all();
            audio_play_sound(snd_getting_paid, 0, 1);
        }
        break;
    case 2:
        if(audio_is_playing(snd_challenger_start)) {
            audio_pause_all();
            audio_resume_sound(snd_challenger_start);
        } else if (audio_is_playing(snd_challenger_loop)) {
            audio_pause_all();
            audio_resume_sound(snd_challenger_loop);
        } else {
            audio_pause_all();
            audio_play_sound(snd_challenger_start, 0, 0); //===No loop.
        }
        break;
}

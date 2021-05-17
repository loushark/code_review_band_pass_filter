class BandPassFilter

  def filter(sound_wave, min_freq, max_freq)
    new_sound_wave = []

    if sound_wave[0] < min_freq
      new_sound_wave << min_freq
    else
      sound_wave
    end
  end
end

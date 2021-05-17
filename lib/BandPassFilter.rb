class BandPassFilter

  def filter(sound_wave, min_freq=40, max_freq=1000)
    check_sound_wave(sound_wave)
    change_sound_wave(sound_wave, min_freq, max_freq)
  end

private

  def check_sound_wave(sound_wave)
    raise "There is no sound wave given" if sound_wave == []
  end

  def change_sound_wave(sound_wave, min_freq, max_freq)
    new_sound_wave = sound_wave.map do |freq|
      freq < min_freq ? min_freq : freq && freq > max_freq ? max_freq : freq
    end
  end
end

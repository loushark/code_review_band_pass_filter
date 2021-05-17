class BandPassFilter

  def filter(sound_wave, min_freq, max_freq)

  new_sound_wave = sound_wave.map do |freq|
    if freq < min_freq
      min_freq
    elsif freq > max_freq
      max_freq
    else
      freq
    end
  end
  end
end

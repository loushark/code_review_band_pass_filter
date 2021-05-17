class BandPassFilter

  def filter(sound_wave, min_freq, max_freq)

    raise "There is no sound wave given" if sound_wave == []

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

class String

  #中文字符串字数 > 指定字数
  def is_chinese_longer(sum, omission_bytesize=0)
    bsize = sum * 2
    tsize = bsize - omission_bytesize
    l = i = 0
    out = nil
    is_longer = false
    self.each_char do |word|
      w = word.bytesize>1 ? 2 : 1
      xsize = l + w
      if xsize > tsize
        out ||= i
        if xsize > bsize
          is_longer = true
          break
        end
      end

      i += 1
      l += w
    end

    is_longer && out
  end

  #中文字符串字数 <= 指定字数
  def is_chinese_shorter(sum)
    !is_chinese_longer(sum)
  end

  #中文字符串字符数
  def chinese_bytesize
    self.each_char.inject(0) do |sum,word|
      w = word.bytesize>1 ? 2 : 1
      sum += w
    end
  end

  #中文字符串字数
  def chinese_size
    sum,remain = self.chinese_bytesize.divmod(2)
    sum += 1 if remain > 0
    sum
  end

  #中文字符串截取
  def chinese_truncate(truncate_at, options = {})
    if (omission = options[:omission])
      ol = omission.chinese_bytesize
    elsif omission==false
      omission = ''
      ol = 0
    else
      omission = '...'
      ol = 3
    end
    if i = self.is_chinese_longer(truncate_at,ol)
      head = self[0, i]
      head + omission
    else
      self
    end
  end

end
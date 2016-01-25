require './q07_helper_methods.rb'

module Blog
  class Article
    attr_accessor :title, :body
    include HelperMethods
    def initialize(title, body)
      @title = titleize(title)
      @body = body
    end
  end
  class Snippet < Article
    attr_accessor :title, :body
    include HelperMethods
    def initialize(title, body)
      super
      if (body.length > 100)
        then @body = body[0..99] + "..."
      else
        @body = body
      end
    end
  end
end

p article = Blog::Article.new("starbucks or tim's", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla laoreet at eros eget tempus. Vivamus ornare mollis erat non consequat. Ut accumsan ligula quis ligula volutpat imperdiet. Aliquam scelerisque fermentum risus ac luctus. Vestibulum pharetra erat sed neque tristique efficitur. Nam sit amet neque quis ante feugiat semper sit amet nec velit. Nullam non lectus vitae orci ultricies pellentesque. Vivamus porta scelerisque mauris, vitae elementum libero maximus molestie. Praesent scelerisque volutpat dolor, quis viverra augue tristique nec. Nulla eleifend, tortor sit amet feugiat consequat, magna leo efficitur magna, quis placerat leo ligula non ligula. Donec et imperdiet nisi. Duis volutpat pellentesque velit. Donec a sollicitudin dolor, sed dignissim nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras vehicula mi mauris, eget consequat felis congue eget.

Praesent interdum vitae est sed sollicitudin. Praesent aliquam interdum elit. Integer porttitor massa lacus, nec eleifend massa dictum nec. Nullam sit amet eros ipsum. Fusce ac porttitor nibh. Sed urna sapien, ultrices vel vehicula eu, posuere at dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer sit amet convallis nisi. Pellentesque ac eros malesuada, molestie arcu in, placerat magna.

Vestibulum gravida lacus vitae pulvinar cursus. Proin luctus elit at dui efficitur pulvinar. Aenean at lorem arcu. Nam dignissim velit non posuere tempor. Mauris consequat massa at auctor tempor. Aliquam non scelerisque lorem. In pulvinar congue lacinia. Vestibulum dignissim ultricies bibendum. Ut posuere lorem ut metus rutrum, eget accumsan nulla luctus.

In faucibus id ligula sed viverra. Sed nec tincidunt lectus. Fusce id auctor tortor. Nulla id bibendum massa. Mauris purus sapien, facilisis id facilisis nec, pretium id lectus. Donec quis arcu non leo ullamcorper suscipit. Nam nisi turpis, tristique id velit vitae, dapibus commodo diam. Aenean lobortis feugiat ipsum sit amet ornare. Proin justo libero, tempor sed elementum in, posuere in sem. Aliquam erat volutpat. Nunc venenatis congue sem, vel tempus erat eleifend eu. Suspendisse faucibus blandit odio pretium ornare. In hac habitasse platea dictumst. Nulla venenatis nisi sit amet sodales tincidunt. Donec ultricies, nibh eu bibendum interdum, libero est dapibus velit, quis mattis justo odio hendrerit nisl.

Nunc commodo nulla eget hendrerit eleifend. Phasellus gravida purus et tincidunt suscipit. Duis sem tellus, dictum sit amet diam non, rutrum pretium est. Vivamus faucibus suscipit tortor eu varius. Sed tristique ullamcorper augue non lacinia. Ut mi lacus, faucibus sed felis eget, convallis lobortis urna. Vestibulum non justo tincidunt, imperdiet neque quis, dictum felis. Suspendisse vitae magna ex. Vestibulum vitae iaculis nunc. Sed scelerisque ipsum nec diam vestibulum vulputate. Sed nec pretium nisl. Curabitur tempus, sem non egestas pharetra, elit dui ultricies arcu, eget finibus sapien lorem nec justo.")

p snip = Blog::Snippet.new("man of the wild", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla laoreet at eros eget tempus. Vivamus ornare mollis erat non consequat. Ut accumsan ligula quis ligula volutpat imperdiet. Aliquam scelerisque fermentum risus ac luctus. Vestibulum pharetra erat sed neque tristique efficitur. Nam sit amet neque quis ante feugiat semper sit amet nec velit. Nullam non lectus vitae orci ultricies pellentesque. Vivamus porta scelerisque mauris, vitae elementum libero maximus molestie. Praesent scelerisque volutpat dolor, quis viverra augue tristique nec. Nulla eleifend, tortor sit amet feugiat consequat, magna leo efficitur magna, quis placerat leo ligula non ligula. Donec et imperdiet nisi. Duis volutpat pellentesque velit. Donec a sollicitudin dolor, sed dignissim nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras vehicula mi mauris, eget consequat felis congue eget.

Praesent interdum vitae est sed sollicitudin. Praesent aliquam interdum elit. Integer porttitor massa lacus, nec eleifend massa dictum nec. Nullam sit amet eros ipsum. Fusce ac porttitor nibh. Sed urna sapien, ultrices vel vehicula eu, posuere at dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer sit amet convallis nisi. Pellentesque ac eros malesuada, molestie arcu in, placerat magna.

Vestibulum gravida lacus vitae pulvinar cursus. Proin luctus elit at dui efficitur pulvinar. Aenean at lorem arcu. Nam dignissim velit non posuere tempor. Mauris consequat massa at auctor tempor. Aliquam non scelerisque lorem. In pulvinar congue lacinia. Vestibulum dignissim ultricies bibendum. Ut posuere lorem ut metus rutrum, eget accumsan nulla luctus.

In faucibus id ligula sed viverra. Sed nec tincidunt lectus. Fusce id auctor tortor. Nulla id bibendum massa. Mauris purus sapien, facilisis id facilisis nec, pretium id lectus. Donec quis arcu non leo ullamcorper suscipit. Nam nisi turpis, tristique id velit vitae, dapibus commodo diam. Aenean lobortis feugiat ipsum sit amet ornare. Proin justo libero, tempor sed elementum in, posuere in sem. Aliquam erat volutpat. Nunc venenatis congue sem, vel tempus erat eleifend eu. Suspendisse faucibus blandit odio pretium ornare. In hac habitasse platea dictumst. Nulla venenatis nisi sit amet sodales tincidunt. Donec ultricies, nibh eu bibendum interdum, libero est dapibus velit, quis mattis justo odio hendrerit nisl.

Nunc commodo nulla eget hendrerit eleifend. Phasellus gravida purus et tincidunt suscipit. Duis sem tellus, dictum sit amet diam non, rutrum pretium est. Vivamus faucibus suscipit tortor eu varius. Sed tristique ullamcorper augue non lacinia. Ut mi lacus, faucibus sed felis eget, convallis lobortis urna. Vestibulum non justo tincidunt, imperdiet neque quis, dictum felis. Suspendisse vitae magna ex. Vestibulum vitae iaculis nunc. Sed scelerisque ipsum nec diam vestibulum vulputate. Sed nec pretium nisl. Curabitur tempus, sem non egestas pharetra, elit dui ultricies arcu, eget finibus sapien lorem nec justo.")

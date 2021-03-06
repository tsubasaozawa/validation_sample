module FormHelper                                                               
  class CustomFormHelper < ActionView::Helpers::FormBuilder

    # ①エラーメッセージを含んだ要素を生成してあげる記述
    def pick_errors(attribute)
      return nil if @object.nil? || (messages = @object.errors.messages[attribute]).nil?

      lis = messages.collect do |message|
        %{<li>#{@object.errors.full_message(attribute, message)}</li>}
      end.join

      %{<ul class="errors">#{lis}</ul>}.html_safe
    end

    # ②既存のFormHelperをオーバーライドさせる記述
    def text_field(attribute, options={})
      return super if options[:no_errors]
      super + pick_errors(attribute)
    end

  end
end  
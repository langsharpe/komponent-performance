class ApplicationController < ActionController::Base
  def index
    render inline: <<~ERB
    <%= c "nested_yielder" do |ctx| %>
      <%= ctx.inner_yield do %>
        <div>Broken</div>
      <% end %>
    <% end %>

    <%= c "nested_yielder" do |ctx| %>
      <%= c "inner_yield" do %>
        <div>Ok</div>
      <% end %>
    <% end %>
    ERB
  end
end

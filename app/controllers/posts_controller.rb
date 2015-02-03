class PostsController < ApplicationController
  Post = Struct.new(:permalink, :image_name, :content)

  def post
    @posts = []
    @posts << Post.new("waffles-are-okay", "waffles.jpg", "A waffle is a leavened batter or dough cooked between two plates, patterned to give a characteristic size, shape and surface impression. There are many variations based on the type of waffle iron and recipe used. Waffles are eaten throughout the world, particularly in Belgium, France, Netherlands, Germany, Poland, Hungary, Scandinavia, United States, with over a dozen regional varieties in Belgium alone.[1]")
    @posts << Post.new("pancakes-are-better", "pancakes.jpg", "A pancake is a flat cake, often thin, and round, prepared from a starch-based batter and cooked on a hot surface such as a griddle or frying pan. In Britain, pancakes are often unleavened, and resemble a crêpe. In North America, a raising agent is used (typically baking powder). The North American pancake is similar to a Scotch pancake or drop scone.

    They may be served at any time with a variety of toppings or fillings including jam, fruit, syrup, chocolate chips, or meat. In America, they are typically considered to be a breakfast food. In Britain and the Commonwealth, they are associated with Shrove Tuesday, commonly known as Pancake Day, when perishable ingredients had to be used up before the fasting period of Lent began.

    Archaeological evidence suggests that pancakes are probably the earliest and most widespread cereal food eaten in prehistoric societies.[1] The pancake's shape and structure varies worldwide. A crêpe is a thin Breton pancake cooked on one or both sides in a special pan or crepe maker to achieve a lacelike network of fine bubbles. A well-known variation originating in Southeast Europe is Palačinke, a thin moist pancake fried on both sides and filled with jam, cheese cream, chocolate, or ground walnuts, but many other fillings, both sweet or savory, can also be used.")
    @posts << Post.new("bacon-is-good", "bacon.jpg", "Bacon is a meat product prepared from a pig and usually cured.[1][2] It is first cured using large quantities of salt,[2] either in a brine or in a dry packing; the result is fresh bacon (also known as green bacon).[3] Fresh bacon may then be further dried for weeks or months in cold air, or it may be boiled or smoked.[1] Fresh and dried bacon is typically cooked before eating. Boiled bacon is ready to eat, as is some smoked bacon, but may be cooked further before eating.")
    @posts << Post.new("fried-chicken-is-best", "chicken.jpg", "Fried chicken (also referred to as Southern fried chicken) is a dish consisting of chicken pieces usually from broiler chickens which have been floured or battered and then pan-fried, deep fried, or pressure fried. The breading adds a crisp coating or crust to the exterior. What separates fried chicken from other fried forms of chicken is that generally the chicken is cut at the joints and the bones and skin are left intact. Crisp well-seasoned skin, rendered of excess fat, is a hallmark of well made fried chicken.")

    @post = @posts.find {|p| p.permalink == params[:id]}

  end

  def index
     @posts = []
     @posts << Post.new("waffles-are-okay", "waffles.jpg", "A waffle is a leavened batter or dough cooked between two plates, patterned to give a characteristic size, shape and surface impression. There are many variations based on the type of waffle iron and recipe used. Waffles are eaten throughout the world, particularly in Belgium, France, Netherlands, Germany, Poland, Hungary, Scandinavia, United States, with over a dozen regional varieties in Belgium alone.[1]")
     @posts << Post.new("pancakes-are-better", "pancakes.jpg", "A pancake is a flat cake, often thin, and round, prepared from a starch-based batter and cooked on a hot surface such as a griddle or frying pan. In Britain, pancakes are often unleavened, and resemble a crêpe. In North America, a raising agent is used (typically baking powder). The North American pancake is similar to a Scotch pancake or drop scone.

     They may be served at any time with a variety of toppings or fillings including jam, fruit, syrup, chocolate chips, or meat. In America, they are typically considered to be a breakfast food. In Britain and the Commonwealth, they are associated with Shrove Tuesday, commonly known as Pancake Day, when perishable ingredients had to be used up before the fasting period of Lent began.

     Archaeological evidence suggests that pancakes are probably the earliest and most widespread cereal food eaten in prehistoric societies.[1] The pancake's shape and structure varies worldwide. A crêpe is a thin Breton pancake cooked on one or both sides in a special pan or crepe maker to achieve a lacelike network of fine bubbles. A well-known variation originating in Southeast Europe is Palačinke, a thin moist pancake fried on both sides and filled with jam, cheese cream, chocolate, or ground walnuts, but many other fillings, both sweet or savory, can also be used.")
     @posts << Post.new("bacon-is-good", "bacon.jpg", "Bacon is a meat product prepared from a pig and usually cured.[1][2] It is first cured using large quantities of salt,[2] either in a brine or in a dry packing; the result is fresh bacon (also known as green bacon).[3] Fresh bacon may then be further dried for weeks or months in cold air, or it may be boiled or smoked.[1] Fresh and dried bacon is typically cooked before eating. Boiled bacon is ready to eat, as is some smoked bacon, but may be cooked further before eating.")
     @posts << Post.new("fried-chicken-is-best", "chicken.jpg", "Fried chicken (also referred to as Southern fried chicken) is a dish consisting of chicken pieces usually from broiler chickens which have been floured or battered and then pan-fried, deep fried, or pressure fried. The breading adds a crisp coating or crust to the exterior. What separates fried chicken from other fried forms of chicken is that generally the chicken is cut at the joints and the bones and skin are left intact. Crisp well-seasoned skin, rendered of excess fat, is a hallmark of well made fried chicken.")

    @post = @posts.last

 end

end

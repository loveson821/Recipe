# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
# 


# initial data for testing
recipeData = 
  next:yes,
  page:1,
  recipes:[
      title: "焦糖椰汁軟糕1"
      imageUrl: "http://lorempixel.com/64/64/food/1"
      price: 60
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 1
      estimateTime: 20
      quantity: 1
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 70
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 2
      estimateTime: 20
      quantity: 1
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 120
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 3
      estimateTime: 4
      quantity: 3
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 10
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 4
      estimateTime: 20
      quantity: 1
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 20
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 5
      estimateTime: 20
      quantity: 2
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 20
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 6
      estimateTime: 20
      quantity: 2
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 70
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 7
      estimateTime: 20
      quantity: 1
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 120
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 8
      estimateTime: 4
      quantity: 3
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 10
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 9
      estimateTime: 20
      quantity: 1
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 20
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 10
      estimateTime: 20
      quantity: 2
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 20
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 11
      estimateTime: 20
      quantity: 2
    ]

recipeData2 = 
  categoryID:2,
  total:100,
  next:true,
  recipes:[
      title: "焦糖椰汁軟糕1"
      imageUrl: "http://lorempixel.com/64/64/food/1"
      price: 60
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 6
      estimateTime: 20
      quantity: 1
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 70
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 6
      estimateTime: 20
      quantity: 1
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 120
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 6
      estimateTime: 4
      quantity: 3
    ,
      title: "焦糖椰汁軟糕2"
      imageUrl: "http://lorempixel.com/64/64/food/2"
      price: 10
      description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
      id: 1
      estimateTime: 20
      quantity: 9
    ]


featuredRecipeTestData = [
  title: "焦糖椰汁軟糕1"
  imageUrl: "http://lorempixel.com/64/64/food/1"
  price: 60
  description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
  id: 6
  estimateTime: 20
  quantity: 1
,
  title: "焦糖椰汁軟糕2"
  imageUrl: "http://lorempixel.com/64/64/food/2"
  price: 70
  description: "使用台灣特有的椰子汁所制成的軟糕。入口鬆化，回味無窮。加上香脆的紅焦糖口."
  id: 6
  estimateTime: 20
  quantity: 1
]

genTestDataForCategory = (categoryID) ->
  switch categoryID
    when 1 then recipeData
    when 2 then recipeData2


categoryData = [
  id: 1
  name: "蛋糕食譜"
,
  id: 2
  name: "涼品甜點"
,
  id: 3
  name: "西式點心"
,
  id: 4
  name: "電鍋食譜"
,
  id: 5
  name: "便當食譜"
,
  id: 6
  name: "雞肉料理"
,
  id: 7
  name: "牛肉料理"
,
  id: 8
  name: "豬肉料理"
,
  id: 9
  name: "全素料理"
,
  id: 10
  name: "早餐食譜"
]




#init functions on load
$("img").hisrc()
$('.dropdown-toggle').dropdown()


###
Description: this is a script for knockoutjs
###

Step = (data)->
  self = @
  @


# Wrap a Recipe Object
Recipe = (data)->
  self = @
  @.description = data.description
  @.estimateTime = data.estimateTime
  @.id = data.id
  @.imageUrl = data.imageUrl
  @.price = data.price
  @.quantity = data.quantity
  @.title = data.title
  @.steps = data.steps
  @.ingredient = data.ingredient
  @.author = data.author
  @ # return self


# Wrapper for Category Object
Category = (data)->
  @.id = data.id
  @.name = data.name
  @.recipes = ko.observableArray()
  @


# Wrap a Recipe Object
Bookmark = (data)->
  self = @
  @.categoryID = data.categoryID
  @.categoryName = data.categoryName
  @.dateAdded = data.dateAdded
  @.recipe = data.recipe
  @ # return self


AppViewModel = ->
  self = @
  @.categories = $.map categoryData, (data)-> new Category(data)  
  @.bookmarks = ko.observableArray()
  @.chosenCategoryData = ko.observable()
  @.chosenCategoryId = ko.observable()
  @.chosenRecipeData = ko.observable()
  @.chosenRecipeId = ko.observable(null)
  @.featuredRecipes = ko.observableArray()
  @.appStates = isLoadingMore: false, currentPage: 0, hasNext: no 

  # this function would called after the recipe list template has rendered
  # add popover function to .detail > .pop DOM elements
  @.recipeListDidRender = ->
    self.appStates.isLoadingMore = no
    # $('.pop').each ->
    #   $(@).popover
    #     html: true
    #     title: $("##{$(@).attr("id")}_content > .popTitle").html()
    #     content: $("##{$(@).attr("id")}_content > .popContent").html()

  ###
  Description: this function is used to determine whether allow the user scrolls further at specified vertical position
  ###
  scrollable = (e, delta) ->
    #detect mouse event is scrolling down or up
    isScrollDown = (if (delta <= 0) then true else false)
    
    #the top position y of current div
    topPosY = $(this).scrollTop()
    
    #current div height
    height = $(this).innerHeight()
    
    #the actual height of a div content size
    actualHeight = $(this)[0].scrollHeight
    
    # if the scroll position is out of its range, we should prevent the mouse scroll event. 
    # otherwise, other div will be affected to scroll, we just want to specific element scroll at a time
    isReachBottom = topPosY + height >= actualHeight and isScrollDown
    isReachTop = topPosY is 0 and not isScrollDown
    # triggerLoadMore = topPosY + height >= actualHeight * 0.9 and isScrollDown

    $(@).trigger 'loadMore' if isReachBottom and not self.appStates.isLoadingMore

    not isReachTop and not isReachBottom


  ###
  Description: a loading more funtion
  ###
  loadMore = (e)-> 
    if self.appStates.hasNext
      self.appStates.isLoadingMore = yes
      # prevData = self.chosenCategoryData().recipes
      # prevData.push.apply(prevData, newRaw.recipes);

      self.appStates.isLoadingMore = no
    #   currentPage = self.chosenCategoryData().page




  #call back function for main page template did render
  @.pageDidRender = ->
    #add the detector to DOM element to prevent over scrolling
    $('.scrollable').on('mousewheel', '.media-list', scrollable)
    $('.scrollable').on('loadMore', '.media-list', loadMore)
    $(".content").on "mousewheel", scrollable
    #loading more indicator is added after page is render
    
      

  # return a correct template for knockout to render if recipe has been selected
  # otherwise return a featured-page-template
  @.templateToUse = -> 
    if self.chosenRecipeId()?  
      'recipe-page-template' 
    else 
      self.featuredRecipes ($.map featuredRecipeTestData, (data)-> new Recipe data)
      'featured-page-template'


  # used to determine which category has been selected
  @.goToCategory = (category)-> 
    self.chosenCategoryId category.id
    raw = genTestDataForCategory category.id
    # raw.recipes = $.map raw.recipes, (data)-> new Recipe data
    self.chosenCategoryData raw
    self.appStates.hasNext = raw.next
    self.appStates.currentPage = raw.page


  # used to determine which recipe has been selected
  @.goToRecipe = (recipe)-> 
    if self.chosenRecipeData() != recipe
      self.chosenRecipeData (null)
      self.chosenRecipeId (recipe.id unless self.chosenRecipeId() is recipe.id)
      self.chosenRecipeData recipe


  @.goToCategory @.categories[0]

  @ # return self

ko.applyBindings (new AppViewModel())

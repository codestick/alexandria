class Sorter
    def initialize(scope, params)
        @scope = scope
        @column = params[:sort]
        @direction = params[:dir]
    end
    
    def sort
        return @scope unless @column && @direction
        @scope.order("#{@column} #{@direction}")
    end
end
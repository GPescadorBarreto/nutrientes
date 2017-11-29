class Experiment
    attr_reader :food_values
    def initialize(food_values_)
        @food_values = food_values_
    end
    
    def get_food_GI()
        return get_people_GI(food_values.length-1)/food_values.length
    end
    
    def get_people_GI(person)
        if(person==0)
            return (get_AUC(person,1,24)/get_AUC(person,0,24))*100
        else
            return (get_AUC(person,1,24)/get_AUC(person,0,24))*100+get_people_GI(person-1)
        end
    end
    
    def get_AUC(person,food,i)
        if(i==1)
            return ((food_values[person][food][i]-food_values[person][food][0])+(food_values[person][food][i-1]-food_values[person][food][0]))*5/2
        else
            return ((food_values[person][food][i]-food_values[person][food][0])+(food_values[person][food][i-1]-food_values[person][food][0]))*5/2+get_AUC(person,food,i-1)
        end
    end
end
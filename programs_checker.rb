M='land'
o = 'water'
world = [[o,o,o,o,o,o,o,o,o,o,o],
        [o,o,o,o,M,M,o,o,o,o,o],
        [o,o,o,o,o,o,o,o,M,M,o],
        [o,o,o,M,o,o,o,o,o,M,o],
        [o,o,o,M,o,M,M,o,o,o,o],
        [o,o,o,o,M,M,M,M,o,o,o],
        [o,o,o,M,M,M,M,M,M,M,o],
        [o,o,o,M,M,o,M,M,M,o,o],
        [o,o,o,o,o,o,M,M,o,o,o],
        [o,M,o,o,o,M,o,o,o,o,o],
        [o,o,o,o,o,o,o,o,o,o,o]]

def count_islands world,x,y
    
    count=1
    
    if(world[y][x]!='land')
        return 0
    end
    world[y][x]='counted'

        count=count+count_islands(world,x,y-1)
        count=count+count_islands(world,x,y+1)
        count=count+count_islands(world,x+1,y-1)
        count=count+count_islands(world,x-1,y-1)
        count=count+count_islands(world,x+1,y)
        count=count+count_islands(world,x-1,y)
        count=count+count_islands(world,x-1,y+1)
        count=count+count_islands(world,x+1,y+1)
    
    return count

end
puts  count_islands(world,5,5)

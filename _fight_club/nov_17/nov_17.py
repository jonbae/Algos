# js null
# ruby nil
# python None

# js objects, array
# py dictionaries ,lists

# for mac only :(
# pwd | pbcopy copies into clipboard


def depth_first(neighbors, start, visited=None):
    if visited == None:
        visited = set()
    if start in visited:
        return
    visited.add(start)
    # start = 'b'
    # if a has no neighbors
    print(start)
    # print(visited)
    # code below is unnecessary because of the for loop below
    # if len(neighbors[start]) == 0:
    #     return
    for next_neighbor in neighbors[start]:
        depth_first(neighbors, next_neighbor, visited)


adj_list = {
    "a": ["b", "c"],
    "b": ["d"],
    "c": ["d"],
    "d": []
}

depth_first(adj_list, 'a')

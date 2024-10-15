class Location:
    def __init__(self, id : int, name : str, description : str, logo : str, x : int, y : int, fon : str, father_id : int, childs_id : list) -> None:
        self.id = id,
        self.name = name
        self.description = description
        self.logo = logo
        self.x = x
        self.y = y
        self.fon = fon
        self.father_id = father_id
    
    def load(id):
        #загрузить из postgre
        pass

    def dump(id):
        #загрузить в postgre
        pass
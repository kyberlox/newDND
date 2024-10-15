class PersonClass:
    def __init__(self, id : int, name : str, description : str, characteristic : dict) -> None:
        self.id = id
        self.name = name
        self.description = description
        self.characteristic = characteristic
    
    def load(id):
        #загрузить из postgre
        pass

    def dump(id):
        #загрузить в postgre
        pass
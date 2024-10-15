class Object:
    def __init__(self, id : int, name : str, description : str, object_class_id : int, characteristic : dict) -> None:
        self.id = id
        self.name = name
        self.description = description
        self.object_class_id = object_class_id
        self.characteristic = characteristic
    
    def load(id):
        #загрузить из postgre
        pass

    def dump(id):
        #загрузить в postgre
        pass
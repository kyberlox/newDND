class Person:
    def __init__(self, id : int, name : str, description : str, logo : str, person_class_id : int, is_payer : bool, characteristic : dict, inventary : dict, current_location_id : int) -> None:
        self.id = id
        self.name = name
        self.description = description
        self.logo = logo
        self.person_class_id = person_class_id
        self.is_payer = is_payer
        self.characteristic = characteristic
        self.inventary = inventary
        self.current_location_id = current_location_id
    
    def load(id):
        #загрузить из postgre
        pass

    def dump(id):
        #загрузить в postgre
        pass

    def fight(data):
        #собрать бонусы классов
        #собрать бонусы объектов
        #сравнить
        #вывести сообщение
        #применить изменения
        pass

    def damage(attac, protect, bones):
        #нанести урон
        #провериь критичность
        #вывести сообщение
        #применить изменения
        pass
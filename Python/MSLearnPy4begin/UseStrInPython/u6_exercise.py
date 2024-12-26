name = 'Ganymede'
planet = 'Mars'
gravity = '1.43'

template = """
    Gravity Facts about {name}
    ---------------------------------
    Planet Name: {planet}
    Gravity on {name}: {gravity} m/s2
    """

print(template.format(name=name, planet=planet, gravity=gravity))
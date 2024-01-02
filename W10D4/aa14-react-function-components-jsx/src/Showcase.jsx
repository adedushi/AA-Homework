import bulbasaur from './images/bulbasaur.jpg'
function Showcase () {
    const favPokemon = "Bulbasur";
    const pokeCharacteristics = {
        type: 'Grass',
        move: 'Vine Whip'
    }

    return (
        <div>
            <h1>{favPokemon}&apos;s Showcase Component</h1>
            <img src={bulbasaur} alt={favPokemon} />
            <h2>
                {favPokemon}&apos;s Type is
                <span style={{ backgroundColor: "green", color: "white" }}> {pokeCharacteristics.type} </span>
                 and one of their moves is 
                <span style={{ backgrounColor: "white", color: "#008000"}}> {pokeCharacteristics.move}</span>
            </h2>

        </div>
    )
}

export default Showcase;
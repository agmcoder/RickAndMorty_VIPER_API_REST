# RickAndMorty_VIPER_API_REST

An iOS app that lists Rick and Morty characters consumed from [The Rick and Morty API](https://rickandmortyapi.com/), built to showcase the **VIPER** architecture.

## Features

- Character list fetched over REST and mapped through a dedicated DTO/Entity layer
- Clean separation of concerns following VIPER: **V**iew, **I**nteractor, **P**resenter, **E**ntity, **R**outer
- Unit and UI test targets

## Tech stack

Swift · UIKit · VIPER · URLSession (REST)

## Project structure

```
RickAndMorty/Modules/CharactersList/
├── View/        # ListOfCharactersView, CharacterCellView
├── Presenter/   # ListOfCharactersPresenter
├── Interactor/  # ListOfCharactersInteractor
├── Entity/      # API response models
├── DTO/         # Mapper between DTOs and entities
└── Protocol/    # Module contracts
Modules/Router/  # ListOfCharactersRouter
```

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # mostrar todas as tarefas para o usuario
  get 'tasks', to: 'tasks#index'

  #mostrar formulario de criacao de nova task
  get 'tasks/new', to: 'tasks#new', as: :new

  #mostrar uma tarefa especifica para o usuario
  get 'tasks/:id', to: 'tasks#show', as: :task

  #salvar nova task
  post 'tasks', to: 'tasks#create'

  #editar nova task = pagina de edicao
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  #atualizar task editada
  patch 'tasks/:id', to: 'tasks#update'

  #deletar uma task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

end

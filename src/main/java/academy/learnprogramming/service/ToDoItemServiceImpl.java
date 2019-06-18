package academy.learnprogramming.service;

import academy.learnprogramming.model.ToDoData;
import academy.learnprogramming.model.ToDoItem;
import org.springframework.stereotype.Service;

@Service
public class ToDoItemServiceImpl implements ToDoItemService{

    private final ToDoData toDoData = new ToDoData();

    @Override
    public void addItem(ToDoItem toAdd) {
        toDoData.addItem(toAdd);
    }

    @Override
    public void removeItem(int id) {
        toDoData.removeItem(id);
    }

    @Override
    public ToDoItem getItem(int id) {
        return toDoData.getItem(id);
    }

    @Override
    public void updateItem(ToDoItem toDoItemUpdate) {
        toDoData.updateItem(toDoItemUpdate);
    }
    @Override
    public ToDoData getData() {
        return toDoData;
    }
}

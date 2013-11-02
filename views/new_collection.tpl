<div>
    <p>Create a new collection:</p>
        <form action="/new" method="POST">
            <label>Collection Name</label>
            <input type="text" size="100" maxlength="100" name="collection" required>
            <label>Etherpad URL</label>
            <input type="url" size="100" maxlength="100" name="etherpad" required>
            <input type="submit" name="save" value="save">
        </form>
</div>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html lang="en">
<head>
    <title>Dispeer - Home</title>
</head>
<body>
    <nav>
        <li><a href="/">Home</a></li>
        <li><a href="/new">Create New Collection</a></li>
    </nav>

    <h1>My Collections</h1>
    <p>{{ greeting }}</p>
    <ul>
        {% for collection in collections %}
        <li><a href="/collection/{{ collection._id }}">{{ collection.name }}</a></li>
        {% else %}
        <li><em>No collections found!</em></li>
        {% endfor %}
    </ul>
    {% if collections %}
        <div>
        {% for collection in collections %}
            <code><pre>
                {{ collection.data }}
            </pre></code>
        {% endfor %}
        </div>
    {% endif %}

</body>
</html>
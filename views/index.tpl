{% extends "base.tpl" %}
{% block title %}Dispeer - Home{% endblock title %}

{% block content %}
    <h1>My Collections</h1>
    <p>{{ greeting }}</p>
    <ul>
        {% for collection in collections %}
        <li><a href="/collection/{{ collection._id }}">{{ collection.name }}</a> -- <button type="button" value="etherpage" onclick="location.href='{{ collection.url }}';">Edit</button></li>
        {% else %}
        <li><em>No collections found!</em></li>
        {% endfor %}
    </ul>
{% endblock content %}
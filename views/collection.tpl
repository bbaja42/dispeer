{% extends "base.tpl" %}
{% block title %}Dispeer - {{ collection.name }}{% endblock title %}

{% block content %}
    <h1>{{ collection.name }}</h1>

    <div>
        <code><pre>
            {{ collection_data }}
        </pre></code>
        <button type="button" value="etherpage" onclick="location.href='{{ collection.url }}';">Edit</button>
    </div>
{% endblock content %}
<template lang='pug'>
div
    v-expansion-panel
        v-expansion-panel-content
            template(v-slot:header)
                v-btn item1
            p test1
        v-expansion-panel-content
            template(v-slot:header)
                v-btn item2
            p test2
        v-expansion-panel-content
            template(v-slot:header)
                v-btn item3
            p test3
    v-alert(type='info' value='true') test
    v-badge(left)
        template(v-slot:badge)
            span 6
        v-icon(large) send
    //- qidjqjfljf //- sfgjij
    v-breadcrumbs(:items='items')
        template(v-slot:divider)
            v-icon arrow_right
    v-chip(v-model='chip' close) une bonne chips
    v-btn(v-if='!chip' @click='chip=!chip') reset la bonne chips
    v-data-table(:headers='headers' :items='personnes')
        template(v-slot:items='items')
            td(v-for='value in items.item') {{value}}
    v-data-table(:headers='headers' :items='personnes')
        template(v-slot:items='items')
            td {{items.item.name}}
            td {{items.item.age}} ans
    v-btn-toggle(v-model='toggle' multiple)
        v-btn(flat v-for='icon in icon_list')
            v-icon {{icon}}
    v-menu(open-on-hover)
        template(v-slot:activator='{on}')
            v-btn(v-on='on') coucou
        v-list
            v-list-tile(v-for='icon in icon_list' @click='')
                v-list-tile-title {{icon}}
    v-dialog(v-model='dialog' width=300)
        template(v-slot:activator='{on}')
            v-btn(v-on='on') dialog
        v-card
            v-card-title.primary.headline(primary-title) Le Titre
            v-card-text Du texte.s
    v-timeline
        v-timeline-item(v-for='n in 3')
            template(v-slot:opposite) yo de lautre côté
            v-card
                v-card-title.headline coucou {{n}}
                v-card-text un petit coucou
</template>

<script lang='coffee'>
class item
    constructor: (@text) ->
class per
    constructor: (@name, @age) ->
class head
    constructor: (@text, @value) ->
export default
    data: ->
        # breadcrumbs
        items: [
            new item 'test'
            new item 'yo'
        ]
        # chip
        chip: on
        # data table
        personnes: [
            new per 'Vincent', 23
            new per 'Pierre', 22
        ]
        headers: [
            # new head "L'Âge", 'age'
            new head 'Le Nom', 'name'
            new head "L'Âge", 'age'
        ]
        # btn toggle
        toggle: []
        icon_list: [
            'send'
            'add'
            'home'
        ]
        #dialog
        dialog: on
</script>
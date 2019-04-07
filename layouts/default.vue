<template lang='pug'>
v-app(:dark='dark')
    v-navigation-drawer(app clipped v-model='drawer')
        v-list
            v-list-tile(v-for='item in items' :to='item.path')
                v-list-tile-action
                    v-icon {{item.icon}}
                v-list-tile-content
                    v-list-tile-title {{item.name}}
    v-toolbar.primary(app clipped-left scroll-off-screen)
        v-toolbar-side-icon(@click.stop='drawer = !drawer')
        v-toolbar-title Le Titre
        v-spacer
        v-toolbar-items
            v-btn(flat icon @click='dark = !dark')
                v-icon(v-if='dark') brightness_5
                v-icon(v-else) brightness_2
    v-content
        v-container
            nuxt
    v-footer(app absolute).primary
        v-layout
            v-flex(text-xs-center) &copy;2019 -- #[strong Vuetify]
    v-bottom-nav(app value='true' shift)
        v-btn(v-for='item in items' :to='item.path')
            span {{item.name}}
            v-icon {{item.icon}}
</template>

<script lang='coffee'>
class item
    constructor: (@name, @icon, @path) ->
export default
    data: ->
        drawer: null
        active: null
        items: [
            new item 'New Home',
                'dashboard'
                '/'
            new item 'Truc',
                'add'
                'truc'
            new item 'Muche',
                'send'
                'muche'
            new item 'Bidule',
                'home'
                'bidule'
            new item 'Test Dark',
                'edit'
                'test_dark'
            new item 'Test API',
                'public'
                'test-api'
        ]
        dark: on
</script>
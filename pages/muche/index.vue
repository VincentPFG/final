<template lang='pug'>
div
    p {{date}} {{time}}
    v-date-picker(v-model='date' landscape)
    v-time-picker(v-model='time' landscape format='24hr')
    v-progress-circular(value='' indeterminate color='secondary')
    v-progress-linear(value='' indeterminate)
    v-rating(v-model='rating')
    v-tooltip(bottom)
        template(v-slot:activator='{on}')
            v-icon(v-on='on') home
        span Home
    v-treeview(:items='tree')
    v-list
        v-subheader test
        v-list-tile truc
    v-snackbar(v-model='snack') test
        v-btn(flat icon @click='snack=false' color='secondary')
            v-icon close 
    v-btn(@click='snack=true') snackbar
</template>

<script lang='coffee'>
export default
    data: ->
        date: new Date().toISOString().substr 0, 10
        time: null
        rating: null
        tree: [
            name: 'coucou'
            children: [
                name: 'yo'
            ,
                name: 'cha!'
            ]
        ,
            name: 'bof'
        ]
        snack: on
</script>
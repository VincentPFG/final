<template lang='pug'>
div
    // nuxt-link(to='test_dark') Test du dark mode avec valeur dans le store.
    test(texte='coucou from prop') coucou from slot
    v-btn(fixed fab right)
        v-icon add
    v-speed-dial(
        fixed
        v-model='fab'
        right bottom
        direction='top'
        transition='slide-y-reverse-transition'
    )
        template(v-slot:activator)
            v-btn(v-model='fab' fab relative)
                v-icon account_circle
                v-icon close 
        v-btn(v-for='i in 3' fab small)
            v-icon add
</template>

<script lang='coffee'>
import test from '~/components/test'
export default
    components: {test}
    layout: 'neutre'
    data: ->
        fab: no
</script>
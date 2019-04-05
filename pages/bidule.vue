<template lang='pug'>
div
    p Hello new {{msg}}!
    p {{truc}}
    p {{count}}
    v-btn(@click.native='increment') click
</template>

<script lang='coffee'>
import x from 'vuex'
export default
    computed: {
        truc: ->
            'mon truc'
        ...x.mapState [
          'msg'
          'count'
        ]
    }
    methods: {
        ...x.mapMutations [
            'increment'
        ]
    }
</script>
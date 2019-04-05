<template lang='pug'>
v-btn(flat icon @click='switch_light')
    v-icon(v-if='dark') brightness_5
    v-icon(v-else) brightness_2
</template>

<script lang='coffee'>
import x from 'vuex'

export default
    computed: {
        ...x.mapState [
            'dark'
        ]
    }
    methods: {
        ...x.mapMutations [
            'switch_light'
        ]
    }
</script>
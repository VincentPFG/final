// ça marche pas parce que la valeur dark nest pas accessible
// il faut soit limporter par le store
// soit modeler le composant

<template lang='pug'>
dark(v-model='dark')
</template>

<script lang='coffee'>
import dark from '~/components/dark'
export default
    layout: 'test_dark'
    components: {dark}
</script>
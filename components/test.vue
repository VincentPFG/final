<template lang='pug'>
div
    p.red {{texte}}
    p.blue
        slot
</template>

<script lang='coffee'>
export default
    props: ['texte']
</script>
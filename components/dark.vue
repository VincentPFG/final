<template lang='pug'>
v-btn(flat icon @click='$emit("input",!value)')
    v-icon(v-if='value') brightness_5
    v-icon(v-else) brightness_2
</template>

<script lang='coffee'>
export default
    props:
        value: Boolean
</script>
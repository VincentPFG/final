<template lang='pug'>
div
  v-carousel
    v-carousel-item(v-for='item in items' :src='item.src')
      h3.white--text Du texte

  v-form
    v-text-field(v-model='nom' label='nom' )
    v-text-field(v-model='age' label='age' )
  v-btn(@click.native='poster') poster
  p {{nom}} {{age}}
  p(v-for='route in $router.routes') {{route.path}}

  v-parallax(:src='items[1].src')
  v-parallax(src='https://cdn.vuetifyjs.com/images/carousel/sky.jpg')

  v-card
    v-card-media
      v-img(src='https://www.poitout-tp-41.com/wp-content/uploads/2017/05/Cerisier-japonaise-730x430.jpg')
    v-card-title Le Titre
    v-card-text Du texte.
    v-card-actions
      v-btn.success.warning--text(nuxt to='truc') Truc
      v-btn.orange--text(nuxt to='muche' flat) Muche
  v-btn(fixed fab right bottom app)
    v-icon add
</template>

<script lang='coffee'>
class im
  constructor: (@src) ->
export default
  data: ->
    nom: null
    age: null
    items: [
      new im 'https://cdn.vuetifyjs.com/images/carousel/sky.jpg'
      new im 'https://cdn.vuetifyjs.com/images/carousel/planet.jpg'
      new im 'https://www.poitout-tp-41.com/wp-content/uploads/2017/05/Cerisier-japonaise-730x430.jpg'
    ]
  methods: 
    poster: ->
      @$axios.post 'http://localhost:1337/personnes',
        nom: @nom
        age: @age
  # mounted: ->
  #   @$axios.post 'http://localhost:1337/personnes',
  #       nom: 'audrey'
  #       age: 20
</script>
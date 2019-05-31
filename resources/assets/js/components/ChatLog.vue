<template>
    <div class="chat-log">
        <chat-message v-for="message in messages"
                      v-bind:data="message"
                      v-bind:key="message.id"
                      :message="message"></chat-message>
        <div class="empty" v-show="messages.length===0">
            There is no messages here!
        </div>
</div>
</template>

<script>
    export default {
     props:['messages']

    }
</script>
<style>
</style>
<template>
  <div>
    <h1>{{ message }}</h1>
    <button @click="fetchMessage">백엔드에서 메시지 가져오기</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: '버튼을 눌러 백엔드와 통신하세요',
    };
  },
  methods: {
    async fetchMessage() {
      try {
        const res = await fetch('http://localhost:8080/');
        const text = await res.text();
        this.message = text;
      } catch (err) {
        this.message = 'API 호출 실패 😢';
        console.error(err);
      }
    },
  },
};
</script>
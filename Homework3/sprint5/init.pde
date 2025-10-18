void initialize(float[] x, float[] y,
  float[] vx, float[] vy, float[] d, int[] c) {
  for (int i=0; i<N; i++) {
    x[i] = random(width);
    y[i] = random(height);
    d[i] = 10;
    c[i] = 0;
    vx[i] = random(-6, -3);
    vy[i] = random(3, 6);
  }
}

void moveObject(float[] x, float[] y,
  float[] vx, float[] vy, float[] d, int[] c) {
  for (int i = 0; i < N; i++) {
    if (x[i] > width - 50 || x[i] < 50) {
      vx[i] = -vx[i];
      c[i] = int(random(2));       // random color
      vx[i] *= random(0.8, 1.3);   // random speed change
    }

    if (y[i] > height - 50 || y[i] < 50) {
      vy[i] = -vy[i];
      d[i] *= 0.9;
      c[i] = int(random(2));       // also change color
      vy[i] *= random(0.8, 1.3);   // and random speed
    }

    x[i] += vx[i];
    y[i] += vy[i];
  }
}

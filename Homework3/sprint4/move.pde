void moveObject(float[] x, float[] y,
  float[] vx, float[] vy, float[] d, int[] c) {
  for (int i=0; i<N; i++) {
    if (x[i]>width-50 || x[i]<50) {
      vx[i] = -vx[i];
      c[i] = (++c[i] % 2);
    }
    if (y[i]>height-50 || y[i]<50) {
      vy[i] = -vy[i];
      d[i] *= 0.9;
    }    
    x[i] += vx[i];
    y[i] += vy[i];
  }
}

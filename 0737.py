import numpy as np
import matplotlib.pylab as plt

def get_beta(time, alpha, theta, inc, Omega_SO, phi_0, t_0):
   phi = phi_0 - Omega_SO*(time - t_0)
   zeta = np.pi - np.arccos((np.cos(theta)*np.cos(inc) - (np.sin(theta)*np.sin(inc)*np.cos(phi))))
   return (zeta - alpha) * 180/np.pi

mjd = np.arange(51000,70000,20)
#val=get_beta(mjd/365.25,61.2*np.pi/180.0,139.4*np.pi/180.0,89.35*np.pi/180.0,5.27*np.pi/180.0,3.47*np.pi/180.0,59289)

val=get_beta(51000/365.25,61.2*np.pi/180.0,139.4*np.pi/180.0,89.35*np.pi/180.0,5.27*np.pi/180.0,3.47*np.pi/180.0,59289)
print(val)
val=get_beta(70000/365.25,61.2*np.pi/180.0,139.4*np.pi/180.0,89.35*np.pi/180.0,5.27*np.pi/180.0,3.47*np.pi/180.0,59289)
print(val)

plt.plot(mjd, get_beta(mjd/365.25,61.2*np.pi/180.0,139.4*np.pi/180.0,89.35*np.pi/180.0,5.27*np.pi/180.0,3.47*np.pi/180.0,59289/365.25))
plt.show()


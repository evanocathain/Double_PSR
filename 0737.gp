# Evan Keane
# Feb 2024
#
set term x11

theta = 139.4*pi/180.0
inc   = 89.35*pi/180.0
omega = 5.27*pi/180.0/365.25
phi0  = 3.47*pi/180.0
alpha = 61.2*pi/180.0

beta_rad(x) = pi - alpha - acos(cos(theta)*cos(inc) - sin(theta)*sin(inc)*cos(phi0 - (x-59289)*omega))
other_side(x) = beta_rad(x) + 2*alpha - pi

set title "0737 PSR B Impact Factor(t)"
set ylabel "Beta (degrees)"
set xlabel "Time (MJD)"
set mxtics 4
set mytics 4

zero(x)=0
cut_hi(x)=39.0
cut_lo(x)=16.6

#PSR B
#First detection: 52143
#Last detection: 54552
print beta_rad(52143)*180.0/pi
print beta_rad(54552)*180.0/pi
print beta_rad(64510)*180.0/pi
print beta_rad(66920)*180.0/pi
set arrow from 52143, -80 to 52143, 80 nohead lt -1
set arrow from 54552, -80 to 54552, 80 nohead lt -1
set arrow from 64510, -80 to 64510, 80 nohead lt -1
set arrow from 66920, -80 to 66920, 80 nohead lt -1
plot [51000:69000][-80:80]beta_rad(x)*180.0/pi notitle, other_side(x)*180.0/pi notitle, cut_hi(x) lt -1 notitle, cut_lo(x) lt -1 notitle 
#zero(x) lt -1 notitle, 



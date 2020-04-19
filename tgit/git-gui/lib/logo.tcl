# git-gui Git Gui logo
# Copyright (C) 2007 Shawn Pearce

# Henrik Nyh's alternative Git logo, from his blog post
# http://henrik.nyh.se/2007/06/alternative-git-logo-and-favicon
#
image create photo ::git_logo_data -data {
R0lGODdhYQC8AIQbAGZmZtg4LW9vb3l5eYKCgoyMjEC/TOJpYZWVlZ+fn2/PeKmpqbKysry8vMXF
xZ/fpc/Pz7fnvPXNytnZ2eLi4s/v0vja1+zs7Of36fX19f3z8v///////////////////ywAAAAA
YQC8AAAF/uAmjmRpnmiqrmzrvq4hz3RtGw+s7zx5/7dcb0hUAY8zYXHJRCKVzGjPeYRKry8q0Irt
GrVBr3gFDo/PprKNix6ra+y2902Ly7H05L2dl9n3UX04gGeCf4RFhohiiotdjY5XkJGBfYeUOpOY
iZablXmXURgPpKWmp6ipqYIKqq6vqREjFYK1trUKs7e7vFq5IrS9wsM0vxvBxMm8xsjKzqy6z9J5
zNPWatXX2k7Z29433d/iMuHj3+Xm2+jp1+vs0+7vz/HyyvT1xPf4wvr7y9H+pBkbBasgLFYGE8ba
o8nTlE4OOYGKKJFOKIopGmLMAnHjDo0eWYAM+WUiSRgj/k+eSKmyBMuWI17C3CATZs2WN1XmPLmT
ZM+QPz0G3VihqNGjSJNWwDCzqdOnUKPu0SChqtWrWLNq3cq1q9evYCVYGCEhgNmzaNOqXcu2rdu3
cOMGOEBWrt27ePPCpSuirN6/gAO35bvBr+DDiPMSNpy4sWO2ix9Lnmw2MuXLiS1j3gxYM+fPdz2D
Hv1WNOnTak2jXj23LuvXlV3DZq16Nujatjnjzo15N2/Kvn9LDi7cMfHimaUqX868ufPn0KPPpOCA
AQMWCQBo3869u/fv4MNrd3DlQoMC3QlkSJFdvPv38LVDWJLBAYHwE1LE38+/+/UhGTAggHv5odDf
gfv9/seDgPAVeAKCELqnIAwU3BefgyZEqOF3E7rAQH8YlrDhiNt1uEIG6IGoH4kjmpjCBRaqaCCL
G7p4AgUDIhgiCTTW2AKOEe44Qo8a2khCBgNoKKQIREZopAgZxAjhkhs0CeGTG7Sn5IpW9vekAyRS
2eWBRl6Q44ZijhlfAQlQmeKIaarpHZsMTHABCxDQGKec3JH3QpIs7snndn6yAKaeXA7aZwuABppo
fAws0GiEhaKQJ40F3DkjfwVC8CaCAlCgAgIkJjDfCgdiOMGn/Q2w3gkZtPgqC6ma0ECECaBwa4QE
aOpCrSYAqeMJpEKYqw7ABnsmfwQ8aCwPySqLYKUb/kwAYbPQyoiCtQcOUMKHBwrgK7LaogBuuaxC
OkS0KEwa37EiLBufALPuwO4Jh/InwAixkknEvSe4C9+p3PY3rr3lpnDufguIcCmzRQAc7IHYLhxf
w/8mnILA74lg8cARa4xCsZxusMCBomZccgsfv0deuh2HvLKh/sLs3hJSvieuCwUzvIHN4tGXc3ih
vtDzmj8fSNLR8BWQdH9LH+g00OFF3d/UBx4cUcvuOc21eFRiouV+Xvvr0dDvlX21R/2uzTR89TqU
L3+5UoBgAxtRHd5/CHpLkd13i4D2e3hHRLKMY+9Hr0Nvx/fq3Pw57cng7/m9wQVObnIyhAiQwHF8
/tQS8nDgI2wOYeh3CAvhuIBHiDEgqvdtwudkaz3GBPKaTcKuGgqAJRMZmK6h1hnk3ncDcUvhgPFS
o5B476ZKQcECzCN4qgmYN4lAncmzcAEEkhJp+QlfkyhAAdtbN8H67FvHQAF6b4g6v9UryqfkKkBu
v/0prxD//kR63YnqB8AeqcdoBRxU/1zAuwRaaX4reJ4DSSRAHUhwgrgqwgUx2B94EWGDHISPBzUY
QgSNcAn6K6F4fscDCtBOhdoRwPW6kIHDwZA7vWoDBF44Qd/tIUAEBCACbIeG4AXxfmFrQ4B4OCYE
JBEQELChmgbAACJioj4JOCKCCLCABZ6EAg1IHwDlyLYAB1gRJhSYgHUQAD9WnQ9+CWBAA+wknTpC
JwQAOw==
}

proc git_logo {w} {
	label $w \
		-borderwidth 1 \
		-relief sunken \
		-background white \
		-image ::git_logo_data
	return $w
}

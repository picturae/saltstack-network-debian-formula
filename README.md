# saltstack-network-debian-formula
Poor mans formula to create an interfaces file.

Since I need to do special stuff in the interfaces file which saltstack
does not support (yet) and I still want to use pillar to config this, I
decided to write a poor mans saltstack formula to do this.

Be careful because this formula  does not do any checking at all.

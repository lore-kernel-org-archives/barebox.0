Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xntwk-0004qa-2S
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 18:44:15 +0000
Date: Mon, 10 Nov 2014 19:43:45 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141110184345.GC27002@pengutronix.de>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de>
 <5460FFB0.9080205@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5460FFB0.9080205@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Hello Ezequiel,

On Mon, Nov 10, 2014 at 03:10:56PM -0300, Ezequiel Garcia wrote:
> On 11/10/2014 05:06 AM, Uwe Kleine-K=F6nig wrote:
> > I tested this series on top of 784b352aeeed with a patch to support my
> > ReadyNAS 104 (by Netgear, Armada 370 system, currently only second stage
> > booting from U-Boot, similar to mirabox with
> > armada-370-netgear-rn104.dts from next-20141106).
> > =

> > 	Marvell>> tftp start_netgear_rn104.pblx
> > 	Using egiga1 device
> > 	TFTP from server 192.168.77.157; our IP address is 192.168.77.133
> > 	Filename 'start_netgear_rn104.pblx'.
> > 	Load address: 0x2000000
> > 	Loading: ####################
> > 	done
> > 	Bytes transferred =3D 292148 (47534 hex)
> > 	Marvell>> go 0x2000000
> > 	## Starting application at 0x02000000 ...
> > =

> > =

> > 	barebox 2014.11.0-00123-g422a0a9d46a8 #3 Sun Nov 9 21:35:11 CET 2014
> > =

> > =

> > 	Board: NETGEAR ReadyNAS 104
> > 	SoC: Marvell 6710 rev 1
> > 	mdio_bus: miibus0: probed
> > 	eth1: got preset MAC address: 28:c6:8e:36:df:57
> > 	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -19
> > 	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -19
> > 	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -19
> > 	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -19
> > 	malloc space: 0x01f00000 -> 0x03dfffff (size 31 MiB)
> > 	environment load /dev/env0: No such file or directory
> > 	Maybe you have to create the partition.
> > 	no valid environment found on /dev/env0. Using default environment
> > 	running /env/bin/init...
> > 	/env/bin/init not found
> > 	barebox:/ ethact eth1
> > 	barebox:/ dhcp
> > 	eth1: 1000Mbps full duplex link detected
> > 	T T T T T T T T T T T T T T T T T T T T dhcp failed: Connection timed =
out
> > 	dhcp: Connection timed out
> > 	barebox:/ eth1.ipaddr=3D192.168.77.133
> > 	barebox:/ eth1.netmask=3D255.255.255.0
> > 	barebox:/ echo $eth1.ethaddr
> > 	28:c6:8e:36:df:57
> > 	barebox:/ ping 192.168.77.157
> > 	T T T T T ping failed: Connection timed out
> > 	barebox:/ =

> > =

> > tcpdump on 192.168.77.157 (which is connected via a switch) worked just
> > fine from U-Boot, after all it served the barebox image.
> > =

> > The pca9554 i2c device is only used for leds, so I don't think the error
> > messages above are related.
> > =

> > Yesterday I saw a different error, that I cannot reproduce now with the
> > same barebox image. IIRC I first played around a bit with eth0 until
> > noticing that I need eth1. I didn't save the full log, but it resulted
> > in:
> > =

> > 	barebox:/ ethact eth1
> > 	barebox:/ dhcp
> > 	eth1: 1000Mbps full duplex link detected
> > 	eth1: transmit error 3
> > 	dhcp failed: I/O error
> > 	dhcp: I/O error
> > =

> > Any ideas? I can try to use a dtb without pinmux definitions later
> > today.
> > =

> =

> Hm, not really. I've tested this with my Armada 370 Mirabox and Armada
> XP Openblocks AX3-4 boards (I use kwboot to load the barebox image, so I
> don't jump from U-Boot).
I would expect to use second stage booting to be more robust, because a
missing gpio to enable some hardware component in barebox is already
setup by U-Boot.

Do you have a command line for me? I used

	scripts/kwboot -b images/barebox-netgear-rn104-uart.img /dev/ttyUSB0

which took much longer than I expected (didn't time it, but I'd say in
the several minutes range). And I didn't know what to do then. Ctrl-C
and then connecting microcom was wrong. Adding -t to the command line
above, too.
 =

> I guess we must be missing some config. What's confusing is that the
> Mirabox and the RN104 should be pretty similar in this regard (e.g. they
> use the same phy mode).
How do you know which phy is used? I assume from Arnaud's webpage?

Any hints how I can debug this apart from using a dtb without pinmuxing
stuff? (OTOH the same dtb works with linux, hmm.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

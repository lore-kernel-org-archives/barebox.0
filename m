Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoqPj-0005Fq-AB
 for barebox@lists.infradead.org; Thu, 13 Nov 2014 09:10:04 +0000
Date: Thu, 13 Nov 2014 10:09:38 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141113090938.GO27002@pengutronix.de>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de>
 <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
 <20141112105637.GN27002@pengutronix.de> <546342EE.20500@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <546342EE.20500@gmail.com>
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
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Wed, Nov 12, 2014 at 12:22:22PM +0100, Sebastian Hesselbarth wrote:
> On 11/12/2014 11:56 AM, Uwe Kleine-K=F6nig wrote:
> >Hello again,
> >
> >here come the recent insights.
> [...]
> >
> >It seems to be not possible to easily dump the register space in both
> >U-Boot and barebox for comparison. md 0xf1074000+0x4000 just hangs
> >somewhere in the middle.
> >
> >A difference between U-Boot and barebox is the location where the
> >internal registers are mapped. Maybe something that depends on U-Boot's
> >memory layout leaks into barebox because I do 2nd stage booting?
> >
> >Out of ideas at the moment. :-(
> =

> Uwe,
> =

> Nice comparison, but did you double check caches are disabled? There is
> no support for Dcache on mvebu SoCs in barebox atm.
I would expect that U-Boot disables caches on go. But I remember there
was a bug in that area some time ago.

Now I saw a different behaviour:

	Marvell>> dhcp
	BOOTP broadcast 1
	*** Unhandled DHCP Option in OFFER/ACK: 28
	*** Unhandled DHCP Option in OFFER/ACK: 28
	DHCP client bound to address 192.168.77.133
	Marvell>> tftp barebox-netgear-rn104-2nd.img
	Using egiga1 device
	TFTP from server 192.168.77.157; our IP address is 192.168.77.133
	Filename 'barebox-netgear-rn104-2nd.img'.
	Load address: 0x2000000
	Loading: ####################
	done
	Bytes transferred =3D 292299 (475cb hex)
	Marvell>> md 0x01f15000
That is where the descriptor ...

	01f15000: ffffffff ffffffff ffffffff ffffffff    ................
	01f15010: ffffffff ffffffff ffffffff ffffffff    ................
	01f15020: ffffffff ffffffff ffffffff ffffffff    ................
	01f15030: ffffffff ffffffff ffffffff ffffffff    ................
	01f15040: ffffffff ffffffff ffffffff ffffffff    ................
	01f15050: ffffffff ffffffff ffffffff ffffffff    ................
	01f15060: ffffffff ffffffff ffffffff ffffffff    ................
	01f15070: ffffffff ffffffff ffffffff ffffffff    ................
	01f15080: ffffffff ffffffff ffffffff ffffffff    ................
	01f15090: ffffffff ffffffff ffffffff ffffffff    ................
	01f150a0: ffffffff ffffffff ffffffff ffffffff    ................
	01f150b0: ffffffff ffffffff ffffffff ffffffff    ................
	01f150c0: ffffffff ffffffff ffffffff ffffffff    ................
	01f150d0: ffffffff ffffffff ffffffff ffffffff    ................
	01f150e0: ffffffff ffffffff ffffffff ffffffff    ................
	01f150f0: ffffffff ffffffff ffffffff ffffffff    ................
	Marvell>> md 0x01f12040
... and the actual data will be located by barebox:

	01f12040: ffffffff ffffffff ffffffff ffffffff    ................
	01f12050: ffffffff ffffffff ffffffff ffffffff    ................
	01f12060: ffffffff ffffffff ffffffff ffffffff    ................
	01f12070: ffffffff ffffffff ffffffff ffffffff    ................
	01f12080: ffffffff ffffffff ffffffff ffffffff    ................
	01f12090: ffffffff ffffffff ffffffff ffffffff    ................
	01f120a0: ffffffff ffffffff ffffffff ffffffff    ................
	01f120b0: ffffffff ffffffff ffffffff ffffffff    ................
	01f120c0: ffffffff ffffffff ffffffff ffffffff    ................
	01f120d0: ffffffff ffffffff ffffffff ffffffff    ................
	01f120e0: ffffffff ffffffff ffffffff ffffffff    ................
	01f120f0: ffffffff ffffffff ffffffff ffffffff    ................
	01f12100: ffffffff ffffffff ffffffff ffffffff    ................
	01f12110: ffffffff ffffffff ffffffff ffffffff    ................
	01f12120: ffffffff ffffffff ffffffff ffffffff    ................
	01f12130: ffffffff ffffffff ffffffff ffffffff    ................
	Marvell>> go $loadaddr
	## Starting application at 0x02000000 ...


	barebox 2014.11.0-00127-g263044f25b47-dirty #14 Thu Nov 13 09:26:54 CET 20=
14


	Board: NETGEAR ReadyNAS 104
	SoC: Marvell 6710 rev 1
	mdio_bus: miibus0: probed
	mvneta_setup_tx_rx: port =3D 0x01f11210, regbase =3D f1070000
	mvneta_setup_tx_rx: port =3D 0x01f11520, regbase =3D f1074000
	eth1: got preset MAC address: 28:c6:8e:36:df:57
	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -19
	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -19
	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -19
	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -19
	malloc space: 0x01f00000 -> 0x03dfffff (size 31 MiB)
	environment load /dev/env0: No such file or directory
	Maybe you have to create the partition.
	no valid environment found on /dev/env0. Using default environment
	running /env/bin/init...
	/env/bin/init not found
	barebox:/ ethact eth1
	barebox:/ eth1.ipaddr=3D192.168.77.133
	barebox:/ eth1.netmask=3D255.255.255.0
	barebox:/ ping 192.168.77.1
	eth1: 1000Mbps full duplex link detected
	Send a packet (len =3D 42, txdesc=3D0x01f15000):
	01f12040: ff ff ff ff ff ff 28 c6 8e 36 df 57 08 06 00 01    ......(..6.W.=
...
	01f12050: 08 00 06 04 00 01 28 c6 8e 36 df 57 c0 a8 4d 85    ......(..6.W.=
.M.
	01f12060: 00 00 00 00 00 00 c0 a8 4d 01                      ........M.
	eth1: transmit error 3
	ping failed: I/O error

Hmm, never saw an I/O error before. What does error 3 mean?

	barebox:/ md 0x01f15000
	01f15000: ffffffff 002affff 01f12040 ffffffff                ......*.@ ...=
...
	01f15010: ffffffff ffffffff ffffffff 01f14ff8                .............=
O..
	01f15020: 00000028 03e303f0 03e30408 00000000                (............=
...
	01f15030: 00000000 01f11fd8 00000000 03e616fc                .............=
...
	01f15040: 00000000 01f15070 01f11fbc 00000028                ....pP......(=
...
	01f15050: 03e303f0 03e30408 00000000 00000000                .............=
...
	01f15060: 01f1507c 00000000 03e616fc 00000000                |P...........=
...
	01f15070: 01f150b0 01f15044 00000010 746f6f62                .P..DP......b=
oot
	01f15080: 666f2e6d 65657274 01f15000 00000028                m.oftree.P..(=
...
	01f15090: 03e303f0 03e30408 00000000 00000000                .............=
...
	01f150a0: 01f150bc 00000000 03e616fc 00000000                .P...........=
...
	01f150b0: 01f150f0 01f15070 00000010 746f6f62                .P..pP......b=
oot
	01f150c0: 6e692e6d 64727469 01f15000 00000028                m.initrd.P..(=
...
	01f150d0: 03e303f0 03e30408 00000000 00000000                .............=
...
	01f150e0: 01f150fc 00000000 03e616fc 00000000                .P...........=
...
	01f150f0: 01f15224 01f150b0 00000018 746f6f62                $R...P......b=
oot
	barebox:/ md 0x01f12040
	01f12040: ffffffff c628ffff 57df368e 01000608                ......(..6.W.=
...
	01f12050: 04060008 c6280100 57df368e 854da8c0                ......(..6.W.=
.M.
	01f12060: 00000000 a8c00000 ffff014d ffffffff                ........M....=
...
	01f12070: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f12080: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f12090: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f120a0: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f120b0: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f120c0: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f120d0: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f120e0: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f120f0: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f12100: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f12110: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f12120: ffffffff ffffffff ffffffff ffffffff                .............=
...
	01f12130: ffffffff ffffffff ffffffff ffffffff                .............=
...

That looks ok. And when I warm reset and look at these memory locations
using U-Boot again, they are still holding that arp packet. So if it's
really a cache problem, the cache is very insistent and U-Boot has a
problem, too.

Furthermore Sascha interpreted

	barebox:/ cpuinfo
	implementer: Marvell Semiconductor Inc.
	architecture: v7
	core: unknown r1p1
	cache: 512 bytes (linelen =3D 64)
	Control register: A W P D L Z I DT IT U XP =


as: The MMU is off (as there is no M in the Control register line) and
so caches must be off, too.

Looking into the vendor U-Boot sources and they didn't change
drivers/net/kirkwood_egiga.c compared to v2009.08.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xo7Pu-0005PQ-RL
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 09:07:17 +0000
Date: Tue, 11 Nov 2014 10:06:49 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141111090649.GE27002@pengutronix.de>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de>
 <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <546113A7.30500@gmail.com>
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

Hello Sebastian,

On Mon, Nov 10, 2014 at 08:36:07PM +0100, Sebastian Hesselbarth wrote:
> On 11/10/2014 07:43 PM, Uwe Kleine-K=F6nig wrote:
> >On Mon, Nov 10, 2014 at 03:10:56PM -0300, Ezequiel Garcia wrote:
> >>On 11/10/2014 05:06 AM, Uwe Kleine-K=F6nig wrote:
> >>>I tested this series on top of 784b352aeeed with a patch to support my
> >>>ReadyNAS 104 (by Netgear, Armada 370 system, currently only second sta=
ge
> >>>booting from U-Boot, similar to mirabox with
> >>>armada-370-netgear-rn104.dts from next-20141106).
> >>>
> >>>	Marvell>> tftp start_netgear_rn104.pblx
> >>>	Using egiga1 device
> >>>	TFTP from server 192.168.77.157; our IP address is 192.168.77.133
> >>>	Filename 'start_netgear_rn104.pblx'.
> >>>	Load address: 0x2000000
> >>>	Loading: ####################
> >>>	done
> >>>	Bytes transferred =3D 292148 (47534 hex)
> >>>	Marvell>> go 0x2000000
> >>>	## Starting application at 0x02000000 ...
> >>>
> >>>	barebox 2014.11.0-00123-g422a0a9d46a8 #3 Sun Nov 9 21:35:11 CET 2014
> >>>
> >>>	Board: NETGEAR ReadyNAS 104
> >>>	SoC: Marvell 6710 rev 1
> >>>	mdio_bus: miibus0: probed
> >>>	eth1: got preset MAC address: 28:c6:8e:36:df:57
> >>>	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -=
19
> >>>	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -=
19
> >>>	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -=
19
> >>>	of_get_named_gpio_flags: unable to get gpio num of device pca95540: -=
19
> >>>	malloc space: 0x01f00000 -> 0x03dfffff (size 31 MiB)
> >>>	environment load /dev/env0: No such file or directory
> >>>	Maybe you have to create the partition.
> >>>	no valid environment found on /dev/env0. Using default environment
> >>>	running /env/bin/init...
> >>>	/env/bin/init not found
> >>>	barebox:/ ethact eth1
> >>>	barebox:/ dhcp
> >>>	eth1: 1000Mbps full duplex link detected
> >>>	T T T T T T T T T T T T T T T T T T T T dhcp failed: Connection timed=
 out
> >>>	dhcp: Connection timed out
> >>>	barebox:/ eth1.ipaddr=3D192.168.77.133
> >>>	barebox:/ eth1.netmask=3D255.255.255.0
> >>>	barebox:/ echo $eth1.ethaddr
> >>>	28:c6:8e:36:df:57
> >>>	barebox:/ ping 192.168.77.157
> >>>	T T T T T ping failed: Connection timed out
> >>>	barebox:/
> >>>
> >>>tcpdump on 192.168.77.157 (which is connected via a switch) worked just
> >>>fine from U-Boot, after all it served the barebox image.
> >>>
> [...]
> >>Hm, not really. I've tested this with my Armada 370 Mirabox and Armada
> >>XP Openblocks AX3-4 boards (I use kwboot to load the barebox image, so I
> >>don't jump from U-Boot).
> =

> >I would expect to use second stage booting to be more robust, because a
> >missing gpio to enable some hardware component in barebox is already
> >setup by U-Boot.
> >
> >Do you have a command line for me? I used
> >
> >	scripts/kwboot -b images/barebox-netgear-rn104-uart.img /dev/ttyUSB0
> >
> >which took much longer than I expected (didn't time it, but I'd say in
> >the several minutes range). And I didn't know what to do then. Ctrl-C
> >and then connecting microcom was wrong. Adding -t to the command line
> >above, too.
Any hints on how kwboot is used? It loads the binary into RAM and runs
it from there, right? I timed my above command and it took 38m28.225s
for my image (341304 bytes).

> >>I guess we must be missing some config. What's confusing is that the
> >>Mirabox and the RN104 should be pretty similar in this regard (e.g. they
> >>use the same phy mode).
> >How do you know which phy is used? I assume from Arnaud's webpage?
> >
> >Any hints how I can debug this apart from using a dtb without pinmuxing
> >stuff? (OTOH the same dtb works with linux, hmm.)
> =

> If you use barebox as first-stage BL, then you definitely need the
> pinmuxing. If you use it as second-stage BL, u-boot should have set
> it up already. The log above suggests that you already used the same
> egiga/mvneta controller before on u-boot so that should be fine.
right.

> Currently, I cannot tell what is the problem here. I never tried 2nd
> stage booting. Can you add the pinmuxing and try uart booting? Also,
I have the pinmuxing, the dts I used is

	https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/tree/arch=
/arm/boot/dts/armada-370-netgear-rn104.dts?id=3Db0187bd33fba065ec736dc33085=
914a137d390d3

And arch/arm/dts/armada-370-rn104-bb.dts contains:

	#include "arm/armada-370-netgear-rn104.dts"
	/ {
		chosen {
			stdout-path =3D "/soc/internal-regs/serial@12000";
		};
	};

Double checking using

	dtc -I dtb -O dts arch/arm/dts/armada-370-rn104-bb.dtb

shows that not all nodes (e.g. serial@12000) have pinctrl-* nodes, but
the same applies to armada-370-mirabox.dts.

> can you connect the RN104 directly to a PC and run wireshark on the
> interface? You should see packets from the MAC above when e.g. ping
> from RN104.
Running

	tcpdump -i br-lan -vvv not ip6 and not host 192.168.77.177 and not host 19=
2.168.77.157 and not host 192.168.77.151

on my router (which isn't a PC, but still should be good enough,
shouldn't it? It has the address 192.168.77.1). Running "ping 192.168.77.1"
seems to result in packages like this:

10:01:30.233928 42:40:00:10:40:60 > 00:00:00:34:00:12, ethertype MOP RC (0x=
6002), length 60: =

        0x0000:  0000 0034 0012 4240 0010 4060 6002 4000  ...4..B@..@``.@.
        0x0010:  0054 8080 0012 4100 0002 c095 08e8 01a0  .T....A.........
        0x0020:  1420 0020 8001 1020 0000 0000 0000 0000  ................
        0x0030:  0000 0000 0000 0000 0000 0000            ............

which is utter nonsense.

Will debug that further later today.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoVbf-0003mJ-N7
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 10:57:00 +0000
Date: Wed, 12 Nov 2014 11:56:37 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141112105637.GN27002@pengutronix.de>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de>
 <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141111090649.GE27002@pengutronix.de>
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

Hello again,

here come the recent insights.

On Tue, Nov 11, 2014 at 10:06:49AM +0100, Uwe Kleine-K=F6nig wrote:
> shouldn't it? It has the address 192.168.77.1). Running "ping 192.168.77.=
1"
> seems to result in packages like this:
> =

> 10:01:30.233928 42:40:00:10:40:60 > 00:00:00:34:00:12, ethertype MOP RC (=
0x6002), length 60: =

>         0x0000:  0000 0034 0012 4240 0010 4060 6002 4000  ...4..B@..@``.@.
>         0x0010:  0054 8080 0012 4100 0002 c095 08e8 01a0  .T....A.........
>         0x0020:  1420 0020 8001 1020 0000 0000 0000 0000  ................
>         0x0030:  0000 0000 0000 0000 0000 0000            ............
> =

> which is utter nonsense.
I sprinkled printfs over the network driver. The packet that is intended
to be sent looks ok:

	Send a packet (len =3D 42, txdesc=3D0x01f15000):
	01f12040: ff ff ff ff ff ff 28 c6 8e 36 df 57 08 06 00 01    ......(..6.W.=
...
	01f12050: 08 00 06 04 00 01 28 c6 8e 36 df 57 c0 a8 4d 85    ......(..6.W.=
.M.
	01f12060: 00 00 00 00 00 00 c0 a8 4d 01                      ........M.

That's an ARP request asking for the address of 192.168.77.1 which is
expected. After that, both the descriptor and the data buffer look ok:

	barebox:/ md 0x01f15000+32
	01f15000: fefeffff 002a6fef 01f12040 f7effff4                .....o*.@ ...=
...
	01f15010: fcfefcfa ff2fbff6 fdfbffef 01f14ff8                ....../......=
O..

	barebox:/ md -b 0x01f12040+42
	01f12040: ff ff ff ff ff ff 28 c6 8e 36 df 57 08 06 00 01    ......(..6.W.=
...
	01f12050: 08 00 06 04 00 01 28 c6 8e 36 df 57 c0 a8 4d 85    ......(..6.W.=
.M.
	01f12060: 00 00 00 00 00 00 c0 a8 4d 01                      ........M.

And I don't see what this has to do with the packet that enters my router:

10:26:31.133258 fe:bf:f7:f3:fb:7f (oui Unknown) > da:74:f7:fc:fb:fa (oui Un=
known), ethertype Unknown (0xdfbf), length 60: =

        0x0000:  da74 f7fc fbfa febf f7f3 fb7f dfbf fffb  .t..............
        0x0010:  dffd ffea 7ffd c6e7 fffb faff febd fb5f  ..............._
        0x0020:  fefb effc fefc eff5 0000 0000 0000 0000  ................
        0x0030:  0000 0000 0000 0000 0000 0000            ............

The size looks OK (it was increased from 42 to 60 because that's the
minimal size that is supported by ethernet). So my theory is that either
the phy or some setting in the ethernet address range is broken.

The output of

	md -s /dev/phy1

looks sane, too:

	barebox:/ md -s /dev/phy1
	00000000: 796d1140 0e900141 cde101e1 2001000f                @.myA........=
.. =

	00000010: 03004502 00003800 00000000 30000000                .E...8.......=
..0
	00000020: bc083060 1c400080 00000020 00000000                `0....@. ....=
...
	00000030: 00000000 00000040 00000000 00000000                ....@........=
...

It seems to be not possible to easily dump the register space in both
U-Boot and barebox for comparison. md 0xf1074000+0x4000 just hangs
somewhere in the middle.

A difference between U-Boot and barebox is the location where the
internal registers are mapped. Maybe something that depends on U-Boot's
memory layout leaks into barebox because I do 2nd stage booting?

Out of ideas at the moment. :-(

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fmkMh-0006p0-GW
 for barebox@lists.infradead.org; Mon, 06 Aug 2018 18:36:25 +0000
Date: Mon, 6 Aug 2018 20:36:10 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180806183610.rro2xem64rljdsvy@pengutronix.de>
References: <844001fa78a52f48a3cb1e9189831456@solinno.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <844001fa78a52f48a3cb1e9189831456@solinno.co.uk>
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
Subject: Re: Help requested with Barebox on Globalscale Mirabox
To: Leigh Brown <leigh@solinno.co.uk>
Cc: Barebox <barebox@lists.infradead.org>

Hello Leigh,

On Tue, Jul 31, 2018 at 02:21:04PM +0100, Leigh Brown wrote:
> Have I missed any steps?  Any help would be greatly appreciated.

Looks good.

Which revision are you on (i.e. git rev-parse @ in your barebox copy)?
What is currently running on the device?

Do you get an U when applying this patch?:

diff --git a/arch/arm/boards/globalscale-mirabox/lowlevel.c b/arch/arm/boar=
ds/globalscale-mirabox/lowlevel.c
index 69786c88fb22..6abf96592496 100644
--- a/arch/arm/boards/globalscale-mirabox/lowlevel.c
+++ b/arch/arm/boards/globalscale-mirabox/lowlevel.c
@@ -31,5 +31,6 @@ ENTRY_FUNCTION(start_globalscale_mirabox, r0, r1, r2)
 	fdt =3D __dtb_armada_370_mirabox_bb_start +
 		get_runtime_offset();
 =

+	writel(0x55, 0xd0012000);
 	armada_370_xp_barebox_entry(fdt);
 }

I just tried 7ba0f2d29959256025ece9ae961a6c3421445a7f on my ReadyNAS 104
which has an armada370, too.

I hangs when using second-stage booting from the Vendor U-Boot after:

	barebox 2018.07.0-00139-g7ba0f2d29959-dirty #50 Mon Aug 6 20:27:11 CEST 20=
18


	Board: Marvell Armada 370/XP
	SoC: Marvell 6710 rev 1
	mdio_bus: miibus0: probed
	eth1: got preset MAC address: 28:c6:8e:36:df:57

When enabling DEBUG_INITCALLS I got a prompt, hmm. Didn't debug that
further.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTBos-0007T4-LZ
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 18:48:08 +0000
Date: Thu, 6 Jul 2017 20:47:34 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170706184734.uul265cq5lmgt6vr@pengutronix.de>
References: <20170705192328.14900-1-u.kleine-koenig@pengutronix.de>
 <1499330981.22075.48.camel@pengutronix.de>
 <20170706101126.lb23q2t3v4c5mqh5@pengutronix.de>
 <1499336637.22075.54.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1499336637.22075.54.camel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: use register defines in imxcfg files instead
 of plain numbers
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Lucas,

TL;DR: I did build all affected images, then patched the source with the pa=
tch
under discussion, called make and the image's dcd tables were unaltered.

On Thu, Jul 06, 2017 at 12:23:57PM +0200, Lucas Stach wrote:
> Those aren't used anymore and are just the result of missing janitorial
> work to the board Makefiles.

It's even worse. The build system doesn't notice when I change an imxdcd
file:

	$ armmake
	...

	$ md5sum images/barebox-karo-imx6q-tx6x-1g.img
	5e048a92390cafec157e6617570f8cd7  images/barebox-karo-imx6q-tx6x-1g.img

	$ vim arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg

	$ git diff arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
	diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg b/arch/=
arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
	index be4efe3c706e..a6e4e8b9e140 100644
	--- a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
	+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
	@@ -2,8 +2,8 @@ soc imx6
	 loadaddr 0x20000000
	 dcdofs 0x400
	 =

	-wm 32 0x020e00a4 0x00000016
	 wm 32 0x020e00c4 0x00000011
	+wm 32 0x020e00a4 0x00000016
	 wm 32 0x020e03b8 0x0000f079
	 wm 32 0x020e03d8 0x0000f079
	 wm 32 0x020e0898 0x00000000

	$ armmake
	...

	$ md5sum images/barebox-karo-imx6q-tx6x-1g.img
	5e048a92390cafec157e6617570f8cd7  images/barebox-karo-imx6q-tx6x-1g.img

	$ memtool md -s images/barebox-karo-imx6q-tx6x-1g.img 0x400+0x50
	00000400: 402000d1 20001000 00000000 2000042c                .. @... ....,=
.. =

	00000410: 20000420 20000400 00000000 00000000                 .. ... .....=
...
	00000420: 20000000 00075000 00000000 409005d2                ... .P.......=
..@
	00000430: 049403cc a4000e02 16000000 c4000e02                .............=
...
	00000440: 11000000 b8030e02 79f00000 d8030e02                ...........y.=
...

Look at Offset 0x434, "0x020e00a4 0x00000016" is still before
"0x020e00c4 0x00000011".

> > missing (and so unchecked) are:
> > =

> > 	flash-header-eltec-hipercam.imxcfg
> > 	karo-tx6x/*
> =

> What you need to look for is something like
> "arch/arm/boards/tqma6x/.flash-header-tqma6q.dcd.dcd.tmp" which is
> generated from the dependencies in images/Makefile.imx

This isn't any better:

$ find -name \*dcd.dcd.tmp | nl
     1	./arch/arm/boards/cm-fx6/.flash-header-mx6-cm-fx6.dcd.dcd.tmp
     2	./arch/arm/boards/dfi-fs700-m60/.flash-header-fs700-m60-6s.dcd.dcd.t=
mp
     3	./arch/arm/boards/dfi-fs700-m60/.flash-header-fs700-m60-6q-nanya.dcd=
.dcd.tmp
     4	./arch/arm/boards/dfi-fs700-m60/.flash-header-fs700-m60-6q-micron.dc=
d.dcd.tmp
     5	./arch/arm/boards/embedsky-e9/.flash-header-e9.dcd.dcd.tmp
     6	./arch/arm/boards/embest-riotboard/.flash-header-embest-riotboard.dc=
d.dcd.tmp
     7	./arch/arm/boards/gk802/.flash-header.dcd.dcd.tmp
     8	./arch/arm/boards/freescale-mx6-sabrelite/.flash-header-mx6-sabrelit=
e.dcd.dcd.tmp
     9	./arch/arm/boards/freescale-mx6-sabresd/.flash-header-mx6-sabresd.dc=
d.dcd.tmp
    10	./arch/arm/boards/technexion-pico-hobbit/.flash-header-imx6ul-pico-h=
obbit-256.dcd.dcd.tmp
    11	./arch/arm/boards/technexion-pico-hobbit/.flash-header-imx6ul-pico-h=
obbit-512.dcd.dcd.tmp
    12	./arch/arm/boards/technexion-wandboard/.flash-header-technexion-wand=
board.dcd.dcd.tmp
    13	./arch/arm/boards/tqma6x/.flash-header-tqma6q.dcd.dcd.tmp
    14	./arch/arm/boards/tqma6x/.flash-header-tqma6dl.dcd.dcd.tmp
    15	./arch/arm/boards/udoo/.flash-header-mx6-udoo.dcd.dcd.tmp
    16	./arch/arm/boards/variscite-mx6/.flash-header-variscite.dcd.dcd.tmp

$ find -name \*.dcd | nl
     1	./arch/arm/boards/cm-fx6/flash-header-mx6-cm-fx6.dcd
     2	./arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.dcd
     3	./arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.dcd
     4	./arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.dcd
     5	./arch/arm/boards/embedsky-e9/flash-header-e9.dcd
     6	./arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.dcd
     7	./arch/arm/boards/gk802/flash-header.dcd
     8	./arch/arm/boards/freescale-mx6-sabrelite/flash-header-mx6-sabrelite=
.dcd
     9	./arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.dcd
    10	./arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-ho=
bbit-256.dcd
    11	./arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-ho=
bbit-512.dcd
    12	./arch/arm/boards/technexion-wandboard/flash-header-technexion-wandb=
oard.dcd
    13	./arch/arm/boards/tqma6x/flash-header-tqma6q.dcd
    14	./arch/arm/boards/tqma6x/flash-header-tqma6dl.dcd
    15	./arch/arm/boards/udoo/flash-header-mx6-udoo.dcd
    16	./arch/arm/boards/variscite-mx6/flash-header-variscite.dcd

Hmm, the actual command for start_imx6q_tx6x_1g.pblx is:

  $(CROSS_COMPILE)gcc -E -Wp,-MD,images/.start_imx6q_tx6x_1g.pblx.imximg.d =
-nostdinc -x assembler-with-cpp -I $topsrcdir/include -I $topsrcdir/arch/ar=
m/mach-imx/include -include include/generated/autoconf.h -o images/.start_i=
mx6q_tx6x_1g.pblx.imximg.imxcfg.tmp $topsrcdir/arch/arm/boards/karo-tx6x/fl=
ash-header-tx6q-1g.imxcfg =

  $builddir/scripts/imx/imx-image -o images/start_imx6q_tx6x_1g.pblx.imximg=
 -b -c images/.start_imx6q_tx6x_1g.pblx.imximg.imxcfg.tmp  -f images/start_=
imx6q_tx6x_1g.pblx

so there is no intermediate file that contains the dcd table unless I'm
mistaken. And the build isn't that reproducible that I can compare
images/barebox*.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

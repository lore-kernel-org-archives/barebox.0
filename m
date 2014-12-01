Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XvOuI-0002gy-Or
 for barebox@lists.infradead.org; Mon, 01 Dec 2014 11:12:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XvOtv-0003VD-9E
 for barebox@lists.infradead.org; Mon, 01 Dec 2014 12:12:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1XvOtv-0008EQ-7a
 for barebox@lists.infradead.org; Mon, 01 Dec 2014 12:12:19 +0100
Date: Mon, 1 Dec 2014 12:12:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141201111219.GH30369@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
 <1417184946-16128-14-git-send-email-s.hauer@pengutronix.de>
 <20141201090043.GL16478@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141201090043.GL16478@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 14/14] Kconfig: make BROKEN invisible
To: barebox@lists.infradead.org

On Mon, Dec 01, 2014 at 10:00:43AM +0100, Michael Olbrich wrote:
> On Fri, Nov 28, 2014 at 03:29:06PM +0100, Sascha Hauer wrote:
> > BROKEN is a developer option to keep things in the tree we know
> > are broken. Make this option invisible so that randconfig builds do
> > not enable it.
> 
> I don't think this is needed. You can specify a partial config file when
> running randconfig with KCONFIG_ALLCONFIG=some_config. Just disable BROKEN
> there.

Not since:

| commit 490f16171119a16e05d670306c105f3b45c38837
| Author: Yann E. MORIN <yann.morin.1998@free.fr>
| Date:   Tue Jun 25 23:37:44 2013 +0200
| 
|     Revert "kconfig: fix randomising choice entries in presence of KCONFIG_ALLCONFIG"
|     
|     This reverts commit 8357b48549e17b3e4e402c7f977b65708922e60f.
|     
|     It breaks more stuff than it fixes.

This renders KCONFIG_ALLCONFIG quite useless.

But regardless of this I think not showing broken options to users is the
right approach.

/me grepping for BROKEN in arch/*/configs/:

arch/arm/configs/friendlyarm_mini6410_defconfig:4:CONFIG_BROKEN=y
arch/arm/configs/freescale-mx28-evk_defconfig:9:CONFIG_BROKEN=y
arch/arm/configs/cfa10036_defconfig:9:CONFIG_BROKEN=y
arch/arm/configs/imx233-olinuxino_defconfig:5:CONFIG_BROKEN=y
arch/arm/configs/friendlyarm_mini2440_defconfig:8:CONFIG_BROKEN=y
arch/arm/configs/freescale-mx23-evk_defconfig:4:CONFIG_BROKEN=y
arch/arm/configs/netx_nxdb500_defconfig:3:CONFIG_BROKEN=y
arch/arm/configs/a9m2410_defconfig:4:CONFIG_BROKEN=y
arch/arm/configs/friendlyarm_tiny6410_defconfig:5:CONFIG_BROKEN=y
arch/arm/configs/chumbyone_defconfig:7:CONFIG_BROKEN=y
arch/arm/configs/a9m2440_defconfig:6:CONFIG_BROKEN=y
arch/arm/configs/tx28stk5_defconfig:8:CONFIG_BROKEN=y
arch/mips/configs/dlink-dir-320_defconfig:5:CONFIG_BROKEN=y
arch/mips/configs/qemu-malta_defconfig:5:CONFIG_BROKEN=y
arch/mips/configs/loongson-ls1b_defconfig:6:CONFIG_BROKEN=y
arch/x86/configs/generic_defconfig:3:CONFIG_BROKEN=y

So users starting from these defconfigs can just enable broken stuff
without even realizing. Let's not bother users with stuff we already
know it's broken.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

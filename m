Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8oCC-0007wU-2Y
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 09:46:04 +0000
Date: Thu, 30 Jan 2014 10:45:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140130094541.GU16215@pengutronix.de>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
 <20140122111558.GA24917@pengutronix.de>
 <20140123013529.b2e75ff11bcbe9492a743726@gmail.com>
 <20140123070218.GF16215@pengutronix.de>
 <20140123143301.56549abbc0544e29206cf327@gmail.com>
 <20140127082415.GS16215@pengutronix.de>
 <20140130094236.d5399b714cb38ad0fd141926@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140130094236.d5399b714cb38ad0fd141926@gmail.com>
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
Subject: Re: [PATCH 00/13] MIPS: add initial Loongson-based boards support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> I have just updated from git://git.pengutronix.de/git/barebox.git.
> 
> Here is a short log:
> 
> $ git log --pretty=oneline arch/mips | cut -c 42- | head -n 18
> Merge branch 'for-next/mips' into next
> MIPS: mach-ar231x: Fix uninitialized variable
> MIPS: csrc-r4k: use CLOCKSOURCE_MASK() macro
> MIPS: add loongson-ls1b_defconfig
> MIPS: loongson-ls1b: add documentation
> MIPS: loongson-ls1b: add NMON support
> MIPS: loongson-ls1b: add PBL support
> MIPS: loongson-ls1b: add ns16550-based console
> MIPS: loongson-ls1b: add DEBUG_LL support
> MIPS: mach-loongson: add DEBUG_LL support
> MIPS: add initial Loongson-1X SoC stuff
> MIPS: mach-loongson: add loongson-ls1b board
> MIPS: add Loongson-1B processor constants and CPU probe
> MIPS: add Loongson-1B CPU Kbuild stuff
> MIPS: add initial Loongson-family documentation
> MIPS: add initial Loongson-based boards support
> mips asm/types.h: add #ifndef to fix compile error
> MIPS: import exception registers saving from linux kernel
> 
> You can see that "MIPS: add initial Loongson-1X SoC stuff" is AFTER "MIPS: mach-loongson: add loongson-ls1b board".
> 
> This breaks loongson-ls1b board build without "Loongson-1X SoC stuff":

Try again. Hopefully I got it right this time.

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

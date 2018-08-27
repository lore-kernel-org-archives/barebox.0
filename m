Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuImD-0002kK-TX
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 14:45:59 +0000
Date: Mon, 27 Aug 2018 16:45:45 +0200
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Message-ID: <20180827144545.h7pld2edwwmnaoqw@pengutronix.de>
References: <20180823095820.32590-1-florian.baeuerle@allegion.com>
 <5de1c331378034ec7bdbbe58c7e8b1f65debd568.camel@allegion.com>
 <20180827121004.hfeb3bahhyvkoiw4@pengutronix.de>
 <96de0308ea2468972690c0f1709ab6029d8e22c7.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96de0308ea2468972690c0f1709ab6029d8e22c7.camel@allegion.com>
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
Subject: Re: [PATCH] ARM: phytec-phycard-imx27: Add debug UART support
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Aug 27, 2018 at 12:37:18PM +0000, Baeuerle, Florian wrote:
> Am Montag, den 27.08.2018, 14:10 +0200 schrieb Sascha Hauer:
> > On Thu, Aug 23, 2018 at 12:20:32PM +0000, Baeuerle, Florian wrote:
> > > Some background on that patch:
> > > 
> > > I've tried to get barebox master compiled with OSELAS 2018 running on a
> > > phycard-imx27. I had a few problems with that:
> > > 
> > > It turned out, that I can boot the resulting image as a seconds stage (from an
> > > older version of barebox), after commenting out pca100_usb_init(). I suppose
> > > that is not a real problem, but probably related to some clock setup that
> > > barebox master does somewhere during early boot (which I suppose, is skipped
> > > when booting it as 2nd stage).
> > > 
> > > However, when flashing the resulting image to NAND, there seems to be a bigger
> > > issue somewhere during early boot. This problem does not exist when compiling
> > > barebox master with OSELAS 2016.
> > 
> > I gave it a test and can confirm that the board boots when compiled with
> > OSELAS 2016 and no longer boots with OSELAS 2018.
> 
> Thanks for confirming this!
> > 
> > It's strange and I'm out of ideas for now. In
> > imx27_barebox_boot_nand_external() we have a place that copies the
> > initial image poprtion into SDRAM. It seems the SDRAM is never written
> > to - at least according to the information my BDI2000 gives me.
> 
> What could you observe with your debugger?
> I sadly do not have any hardware debugger available, so I was stuck with writing
> characters on the UART which IIRC was completely unsuccessful in
> imx27_barebox_boot_nand_external().

I can see that we execute this copy loop:

     518:	e592c000 	ldr	ip, [r2]
     51c:	e2822004 	add	r2, r2, #4
     520:	e580c000 	str	ip, [r0]
     524:	e1520001 	cmp	r2, r1
     528:	e2820332 	add	r0, r2, #-939524096	; 0xc8000000
     52c:	1afffff9 	bne	518 <imx27_barebox_boot_nand_external+0x18>

When stopping at 524 we have this register content:

         User     FIQ     Superv   Abort     IRQ      Undef
GPR00: a0000000 a0000000 a0000000 a0000000 a0000000 a0000000
GPR01: d8000800 d8000800 d8000800 d8000800 d8000800 d8000800
GPR02: d8000004 d8000004 d8000004 d8000004 d8000004 d8000004
GPR03: d80012a0 d80012a0 d80012a0 d80012a0 d80012a0 d80012a0
GPR04: d80012a0 d80012a0 d80012a0 d80012a0 d80012a0 d80012a0
GPR05: 28c04080 28c04080 28c04080 28c04080 28c04080 28c04080
GPR06: 22604914 22604914 22604914 22604914 22604914 22604914
GPR07: 062008cc 062008cc 062008cc 062008cc 062008cc 062008cc
GPR08: 04808005 20000061 04808005 04808005 04808005 04808005
GPR09: 2b3107cd 08930146 2b3107cd 2b3107cd 2b3107cd 2b3107cd
GPR10: 80140001 61081110 80140001 80140001 80140001 80140001
GPR11: 2310000d 00026000 2310000d 2310000d 2310000d 2310000d
GPR12: ea000012 a8080e28 ea000012 ea000012 ea000012 ea000012
GPR13: 294108a0 950200c0 ffffffec 45525940 80110208 82c00a08
GPR14: 89830033 19022184 d800005c 32010501 00140011 000d0812
PC   : d8000524
CPSR : 200000d3
SPSR :          00000010 00000010 00000010 00000010 00000010

So r0 correctly contains the destination address (0xa0000000), the ip
register (GPR12) contains the value read from 0xd8000000 (0xea000012),
but reading the memory at 0xa0000000 still contains the value that
was there before the first loop iteration, as if the memory was never
written to:

md 0xa0000000:
a0000000 : 0a884784 8340111c 00001004 02101308  .G....@.........
a0000010 : 50201a48 20a042c4 12d01504 10081000  H. P.B. ........
...

With OSELAS 2016 the copy loop looks a little different, but works as
expected.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSvpu-0002RS-Ue
 for barebox@lists.infradead.org; Fri, 11 May 2012 19:49:12 +0000
Date: Fri, 11 May 2012 21:49:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511194907.GR27341@pengutronix.de>
References: <CAOQ7t2ZNu14D4Y3nDKxGVSAxp4gR9K-mDuN21fwXfNHwMiZ38w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOQ7t2ZNu14D4Y3nDKxGVSAxp4gR9K-mDuN21fwXfNHwMiZ38w@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox, omap3530_beagle_xload and qemu-linaro
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 05, 2012 at 11:02:10PM +0200, Carlo Caione wrote:
> Hi,
> I was trying to run barebox (omap3530_beagle_xload) under qemu-linaro
> (-M beagle). This is what I get:
> 
> carlo@belfagor:~/projects/barebox-img$ qemu-system-arm -M beagle
> -nographic -sd sd.img
> qemu: fatal: Trying to execute code outside RAM or ROM at 0x00014080
> 
> R00=4020a5bf R01=4020a5bf R02=4020a5bf R03=4020a5bf
> R04=4020ae70 R05=4020a5bf R06=400001d3 R07=ffffffff
> R08=00000000 R09=ffffffff R10=00000000 R11=00000002
> R12=4020be7c R13=402064b0 R14=40205c8c R15=00014080
> PSR=200001db --C- A und32
> Aborted (core dumped)
> 
> Using the original linaro images (with u-boot inside) everything works
> well so I think the problem here is barebox.
> 
> Any idea?

Might be worth disassembling the code at r14=40205c88 which is probably
the code address which jumps to nirvana.

I haven't tried recently, but it should work on real hardware.

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

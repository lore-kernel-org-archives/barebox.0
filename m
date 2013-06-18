Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Up1X0-0000wR-7G
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 19:25:31 +0000
Date: Tue, 18 Jun 2013 21:25:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130618192504.GX32299@pengutronix.de>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED01639D6@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338ED01639D6@SRV-VS06.TELEVIC.COM>
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
Subject: Re: Barebox fails to boot 1/40 boots...
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jun 18, 2013 at 02:59:57PM +0200, Vanhauwaert Wouter wrote:
> Hello all,
> 
> I have this issue with our custom design (IMX53, NAND, DDR3)
> 
> Everything goes well most of the time, but now and then  the system does not boot and halts during initialization... 
> To be more specific, the function on which the system blocks is 'setup_c()' in arch/arm/cpu/start-pbl.c
> 
> What can I do more to debug this? This function is completely in assembler...

What makes you sure barebox stops there? Do you have DEBUG_LL enabled or
do you use a JTAG debugger?

Does this happen in first stage boot only or also when you chainload
barebox from an already running barebox?

You could try calling imx53_init_lowlevel_early from
barebox_arm_reset_vector(). This *could* make a difference.

Since you are using v2013.05-stable you should have the following
patches, but maybe it's worth rechecking.

76820df ARM: invalidate data caches during early init
f9d7582 ARM v7: added v7_mmu_cache_invalidate()
ee5f859 ARM v7: v7_mmu_cache_flush(): do not restore r0-r3 (minor optimization)
eb7d85c arm: properly init alignment trap bit
7904d90 ARM v7: fix mmu-off operation
9af1150 ARM: fix the memset fix

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

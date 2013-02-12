Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5BVr-0001Wp-VK
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 08:46:54 +0000
Date: Tue, 12 Feb 2013 09:46:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130212084647.GS1906@pengutronix.de>
References: <1360572905-4566-1-git-send-email-h.feurstein@gmail.com>
 <20130211200021.GH1906@pengutronix.de>
 <CAFfN3gXff6T1L+rLdHWtjFu2sJ7L2g-aMgJHbEn=W_E7QrGfSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gXff6T1L+rLdHWtjFu2sJ7L2g-aMgJHbEn=W_E7QrGfSA@mail.gmail.com>
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
Subject: Re: [PATCH v2] ARM i.MX6: Add support for SabreSD board
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Tue, Feb 12, 2013 at 09:42:46AM +0100, Hubert Feurstein wrote:
> Hi Sascha,
> 
> 2013/2/11 Sascha Hauer <s.hauer@pengutronix.de>:
> [...]
> >> +
> >> +static int sabresd_mem_init(void)
> >> +{
> >> +     arm_add_mem_device("ram0", 0x10000000, SZ_1G);
> >> +
> >> +     return 0;
> >> +}
> >> +mem_initcall(sabresd_mem_init);
> >
> > This is not necessary anymore. I removed this while applying. Could you
> > verify this still works?
> No, it does not. Here's the log:

Ah, damn, there is no SDRAM size detection for i.MX6 (yet). I forgot
about this. I'll revert this to your original patch then.

Sascha

> 
> barebox 2013.02.0-00270-g4bb21a7 #158 Tue Feb 12 09:34:12 CET 2013
> 
> 
> Board: SabreSD
> mmu: Error: Can't request SDRAM region for ttb
> Error: Cannot request SDRAM region for stack
> registered netconsole as cs1
> imx-esdhc imx-esdhc3: registered as imx-esdhc3
> detected card version 4.0
> mci mci0: registered disk0
> mci mci0: No partition table found
> imx-esdhc imx-esdhc1: registered as imx-esdhc1
> mci mci1: no card inserted
> imx-esdhc imx-esdhc2: registered as imx-esdhc2
> mci mci2: registered disk1
> mci mci2: No partition table found
> BUG: failure at arch/arm/cpu/mmu.c:122/find_pte()!
> BUG!
> [<1781bd3d>] (unwind_backtrace+0x1/0x64) from [<1780fffd>] (panic+0x1d/0x2c)
> [<1780fffd>] (panic+0x1d/0x2c) from [<1781c7f5>] (remap_range+0x29/0x88)
> [<1781c7f5>] (remap_range+0x29/0x88) from [<1781c8a3>]
> (dma_alloc_coherent+0x2f/0x38)
> [<1781c8a3>] (dma_alloc_coherent+0x2f/0x38) from [<178084c3>]
> (fec_probe+0x8f/0x17c)
> [<178084c3>] (fec_probe+0x8f/0x17c) from [<17807d81>] (platform_probe+0x9/0xa)
> [<17807d81>] (platform_probe+0x9/0xa) from [<17807ba7>] (device_probe+0xb/0x38)
> [<17807ba7>] (device_probe+0xb/0x38) from [<17807bf3>] (match+0x1f/0x30)
> [<17807bf3>] (match+0x1f/0x30) from [<17807d05>] (register_device+0x81/0xb0)
> [<17807d05>] (register_device+0x81/0xb0) from [<17807e11>]
> (add_generic_device_res+0x2d/0x32)
> [<17807e11>] (add_generic_device_res+0x2d/0x32) from [<1781acbb>]
> (imx_add_fec_imx6+0x1f/0x28)
> [<1781acbb>] (imx_add_fec_imx6+0x1f/0x28) from [<178197e9>]
> (sabresd_devices_init+0x81/0x10c)
> [<178197e9>] (sabresd_devices_init+0x81/0x10c) from [<178068d9>]
> (start_barebox+0x15/0xc0)
> [<178068d9>] (start_barebox+0x15/0xc0) from [<1781c237>]
> (__start.isra.0+0x4b/0x54)
> [<1781c237>] (__start.isra.0+0x4b/0x54) from [<1781c24d>] (setup_c+0x1/0x48)
> 
> Hubert
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

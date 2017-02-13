Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdMDP-0000KJ-6a
 for barebox@lists.infradead.org; Mon, 13 Feb 2017 19:23:15 +0000
Date: Mon, 13 Feb 2017 20:22:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170213192247.gjld5b33genwav2a@pengutronix.de>
References: <4bcf7de3-5ced-3575-9495-c1f4f20ce60c@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bcf7de3-5ced-3575-9495-c1f4f20ce60c@phytec.de>
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
Subject: Re: barebox PBL question
To: Wadim Egorov <w.egorov@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Feb 13, 2017 at 04:13:48PM +0100, Wadim Egorov wrote:
> Hi,
> 
> I would like to add SPL support for the RK3288 SoC to barebox. But I am
> facing
> a few problems.
> 
> The maximum size of the SPL image which the ROM code will read is 32KB.
> I was thinking to use the PBL feature for the SPL part. But using the
> the pbl code (with decompression) seems to be not a good idea, because
> it's size
> is already about 30K. I think this is an overhead.

In a test build here the pbl code is 6KiB. The rest is the devicetree
included in the binary (which I disabled in the test build). The dtb can
be compressed which should give you enough space even in 32KiB.

> 
> But now I wonder how to generate two different images with a single build.
> A SPL image, which should not exceed 32K and a barebox.
> 
> I have problems to fully understand the PBL mechanism.
> Why are the builds always adding the barebox.bin images to the PBL part?

The idea is to create an image that contains the PBL and attached to it
the compressed barebox image. If your ROM only allows a certain image
size then make sure the PBL is small enough and tell the ROM to only
load the PBL part of the image. Ideally the PBL then detects from where
the PBL is loaded (by reading back the bootsource the SoC provides) and
reads the rest of the image into SDRAM (or, for sake of simplicity, the
whole image inculding PBL again)

> 
> Here is an example, cat .zbarebox.cmd
> 
> ld -EL  -Map arch/arm/pbl/zbarebox.map --gc-sections -static -o
> arch/arm/pbl/zbarebox -e pbl_start -T arch/arm/pbl/zbarebox.lds
> --start-group  common/built-in-pbl.o [...]  arch/arm/pbl/piggy.shipped.o
> --end-group
> 
> piggy.shipped.o is barebox.bin, which is added in piggy.shipped.S:
> 
> .incbin "arch/arm/pbl/piggy.shipped"

You should use PBL_MULTI_IMAGES instead. In fact, the existing Rockchip
port already does this.

I think your entry function should look something like:

ENTRY_FUNCTION(start_rk3288_phycore_som, r0, r1, r2)
{
	arm_cpu_lowlevel_init();

	if (inside_sdram(get_pc()))
		barebox_arm_entry(0x0, SZ_1G, fdt);

	rk3288_phycore_setup_sdram();

	jump_back_to_rom();
}

I don't know how jump_back_to_rom() should be implemented. Do you have
to return from the entry function to the ROM or does the ROM provide some API
which can be used to chainload the rest of the image?

What you'll need additionally is a tool which encapsulates the image into
a SoC specific container suitable for the ROM.

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

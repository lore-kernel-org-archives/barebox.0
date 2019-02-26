Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyeVS-0000AX-Bs
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 15:18:56 +0000
Date: Tue, 26 Feb 2019 16:18:49 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190226151849.zm76xfyxhevbdn2l@pengutronix.de>
References: <20190221092848.4488-1-tomaz.solc@tablix.org>
 <20190221092848.4488-3-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190221092848.4488-3-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH 2/3] ARM: rpi: save fdt that was passed from VideoCore
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Feb 21, 2019 at 10:28:47AM +0100, Tomaz Solc wrote:
> On Raspberry Pi, VideoCore firmware creates a device tree that contains
> information about peripherals that were initialized by VideoCore based
> on settings in config.txt. Normally this device tree is passed to the
> Linux kernel via a pointer in the r2 register. A bootloader needs to
> pass this device tree to the kernel, or some peripherals will not work
> correctly.
> 
> Since the VideoCore device tree is not compatible with barebox, we can't
> just pass it to barebox_arm_entry() as the internal barebox device tree.
> 
> This commit makes the prebootloader code copy the device tree from
> VideoCore into a scrap RAM area just above the area reserved for the
> bootloader. Board initialization code in the bootloader proper then
> copies it into a file /vc.dtb. The bootloader environment is then free
> to pass this file to the kernel at boot (e.g. via bootm -o).
> ---
>  Documentation/boards/bcm2835.rst          |  4 ++
>  arch/arm/boards/raspberry-pi/lowlevel.c   | 68 ++++++++++++++++++++++---------
>  arch/arm/boards/raspberry-pi/lowlevel.h   |  9 ++++
>  arch/arm/boards/raspberry-pi/rpi-common.c | 34 ++++++++++++++++
>  4 files changed, 96 insertions(+), 19 deletions(-)
>  create mode 100644 arch/arm/boards/raspberry-pi/lowlevel.h
> 
[...]
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index b5d16a15c..f17384857 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -370,12 +375,41 @@ static int rpi_env_init(void)
>  	return 0;
>  }
>  
> +static void rpi_vc_fdt(void)
> +{
> +	void *saved_vc_fdt;
> +	struct fdt_header *oftree;
> +	unsigned long magic, size;
> +
> +	/* VideoCore FDT was copied in PBL just above Barebox memory */
> +	saved_vc_fdt = (void *)(arm_mem_endmem_get());
> +
> +	oftree = saved_vc_fdt;
> +	magic = be32_to_cpu(oftree->magic);
> +	if (magic != FDT_MAGIC) {
> +		printf("videocore fdt saved in pbl has invalid magic\n");

It's more idiomatic to use pr_err() here

> +
> +		if (magic == VIDEOCORE_FDT_ERROR) {
> +			printf("there was an error copying fdt in pbl: %d\n",
> +					be32_to_cpu(oftree->totalsize));

and here

> +		}
> +		return;
> +	}
> +
> +	size = be32_to_cpu(oftree->totalsize);
> +	if (write_file("/vc.dtb", saved_vc_fdt, size)) {
> +		printf("failed to save videocore fdt to a file\n");

and here.

 - Roland

> +		return;
> +	}
> +}
> +
>  static int rpi_devices_init(void)
>  {
>  	rpi_model_init();
>  	bcm2835_register_fb();
>  	armlinux_set_architecture(MACH_TYPE_BCM2708);
>  	rpi_env_init();
> +	rpi_vc_fdt();
>  	return 0;
>  }
>  late_initcall(rpi_devices_init);
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

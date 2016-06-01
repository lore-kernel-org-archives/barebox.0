Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b80Gn-0007ud-Rj
 for barebox@lists.infradead.org; Wed, 01 Jun 2016 07:08:50 +0000
Date: Wed, 1 Jun 2016 09:08:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160601070826.GJ31666@pengutronix.de>
References: <1464619430-23873-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464619430-23873-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH v2] Add support for Baltos systems
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Mon, May 30, 2016 at 04:43:50PM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> OnRISC Baltos devices are based on a am335x SoC and can be booted
> either from MMC or NAND.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
> Changes:
>         v2: - remove typedef
>             - rework invalid EEPROM content handling
>             - add mmc0 as boot device for MMC boot source
> 
> +static int baltos_mem_init(void)
> +{
> +	uint32_t sdram_size;
> +
> +	if (!of_machine_is_compatible("vscom,onrisc"))
> +		return 0;
> +
> +	sdram_size = SZ_256M;
> +
> +	arm_add_mem_device("ram0", 0x80000000, sdram_size);
> +
> +	return 0;
> +}
> +mem_initcall(baltos_mem_init);

This shouldn't be necessary. See arch/arm/mach-omap/am33xx_scrm.c, here
the correct amount of memory should be registered.


> +ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
> +{
> +	uint32_t sdram_size;
> +	void *fdt;
> +
> +	sdram_size = SZ_256M;
> +	fdt = __dtb_am335x_baltos_minimal_start;
> +
> +	fdt -= get_runtime_offset();
> +
> +	barebox_arm_entry(0x80000000, sdram_size, fdt);

am335x_barebox_entry() calculates the SDRAM size automatically for you.

Doing this has the advantage that you can configure your SDRAM as you
like without having to bother that all other locations where the SDRAM
size is needed are correct.

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

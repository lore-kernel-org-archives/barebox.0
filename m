Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFAUb-0007Db-9l
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:42:50 +0000
Date: Mon, 11 Mar 2013 22:42:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311214247.GO1906@pengutronix.de>
References: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
 <1362958567-6110-4-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362958567-6110-4-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 3/4] OMAP4: add command to select next boot device priority
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 12:36:06AM +0100, Vicente Bergas wrote:
> On OMAP4 SoC there is a SAR memory region (Save & Rescue) where the ROM
> code reads the device to boot from.
> This patch adds a way to set this.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/mach-omap/include/mach/omap4-silicon.h | 20 ++++++
>  arch/arm/mach-omap/omap4_generic.c              | 20 ++++++
>  commands/Kconfig                                |  5 ++
>  commands/Makefile                               |  1 +
>  commands/boot_order.c                           | 83 +++++++++++++++++++++++++
>  5 files changed, 129 insertions(+)
>  create mode 100644 commands/boot_order.c
> 
> +static int cmd_boot_order(int argc, char *argv[])
> +{
> +	u32 device_list[] = {
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +		OMAP44XX_SAR_BOOT_VOID,
> +	};
> +	int i, j = 1, do_reset = 0;
> +
> +	if (argc > 1 && strcmp(argv[1], "-r") == 0) {
> +		do_reset = 1;
> +		j = 2;
> +	}

You should use getopt() to parse options.

> +	for (i = 0; i < 4 && j < argc; i++, j++) {
> +		if      (strcmp(argv[j], "xip") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_XIP;
> +		else if (strcmp(argv[j], "xipwait") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_XIPWAIT;
> +		else if (strcmp(argv[j], "nand") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_NAND;
> +		else if (strcmp(argv[j], "onenand") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_ONENAND;
> +		else if (strcmp(argv[j], "mmc1") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_MMC1;
> +		else if (strcmp(argv[j], "mmc2_1") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_MMC2_1;
> +		else if (strcmp(argv[j], "mmc2_2") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_MMC2_2;
> +		else if (strcmp(argv[j], "uart") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_UART;
> +		else if (strcmp(argv[j], "usb_1") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_USB_1;
> +		else if (strcmp(argv[j], "usb_ulpi") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_USB_ULPI;
> +		else if (strcmp(argv[j], "usb_2") == 0)
> +			device_list[i] = OMAP44XX_SAR_BOOT_USB_2;

You could add a table for this, something like

struct bootsrc {
	const char *name;
	uint32_t sar;
};

> +	}
> +	if (device_list[0] == OMAP44XX_SAR_BOOT_VOID) {
> +		printf("First boot device can't be void\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +	omap4_set_warmboot_order(device_list);
> +	if (do_reset) {
> +		shutdown_barebox();
> +		reset_cpu(0);
> +	}

Why is this done here? I mean you could execute the reset command after
this one.

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

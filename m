Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7hqK-0006DC-AV
 for barebox@lists.infradead.org; Mon, 27 Jan 2014 08:46:57 +0000
Date: Mon, 27 Jan 2014 09:46:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140127084633.GU16215@pengutronix.de>
References: <1390431691-5090-1-git-send-email-philipp.zabel@gmail.com>
 <1390431691-5090-3-git-send-email-philipp.zabel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390431691-5090-3-git-send-email-philipp.zabel@gmail.com>
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
Subject: Re: [RFC PATCH 2/2] commands: add bootmode command
To: Philipp Zabel <philipp.zabel@gmail.com>
Cc: barebox@lists.infradead.org, Troy Kisky <troy.kisky@boundarydevices.com>

Hi Philipp,

On Thu, Jan 23, 2014 at 12:01:31AM +0100, Philipp Zabel wrote:
> On some SoCs the boot rom can be instructed to boot from a specific
> device, once, after the next reset. The bootmode command allows to
> list boot device candidates and to set up one of those devices as
> boot source after the next reset.
> 
> Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
> ---
>  commands/Kconfig    |   9 ++++
>  commands/Makefile   |   1 +
>  commands/bootmode.c | 143 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  common/Kconfig      |   3 ++
>  common/Makefile     |   1 +
>  5 files changed, 157 insertions(+)
>  create mode 100644 commands/bootmode.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 1e07b5b..851a14a 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -770,6 +770,15 @@ config CMD_WD_DEFAULT_TIMOUT
>  	  enabled and re-triggered with the default timeout value).
>  endif
>  
> +config CMD_BOOTMODE
> +	bool
> +	depends on OFTREE
> +	prompt "bootmode command"
> +	select BOOTMODE
> +	help
> +	  The 'bootmode' command on some SoCs allows to instruct the boot rom
> +	  from which bootsource to boot, once, after the next reset.
> +
>  endmenu
>  
>  endif
> diff --git a/commands/Makefile b/commands/Makefile
> index 58d27fa..9e63e3f 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -93,3 +93,4 @@ obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
>  obj-$(CONFIG_CMD_DETECT)	+= detect.o
>  obj-$(CONFIG_CMD_BOOT)		+= boot.o
>  obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
> +obj-$(CONFIG_CMD_BOOTMODE)	+= bootmode.o
> diff --git a/commands/bootmode.c b/commands/bootmode.c
> +
> +static struct bootsource_name bootsources[] = {
> +	{ BOOTSOURCE_NAND,   "nand" },
> +	{ BOOTSOURCE_NOR,    "nor"  },
> +	{ BOOTSOURCE_MMC,    "mmc"  },
> +	{ BOOTSOURCE_I2C,    "i2c"  },
> +	{ BOOTSOURCE_SPI,    "m25p" },
> +	{ BOOTSOURCE_SERIAL, "cs"   },
> +	{ BOOTSOURCE_HD,     "ahci" },
> +};
> +
> +static enum bootsource get_bootsource(struct device_d *dev, int *instance)
> +{

For bootsource we currently have bootsource/instance for referring to a
bootsource. Using a struct device_d (and therefore also struct
device_node) is pretty cool, but should be introduced consistently. With
the function above we have to use a devicename to specify the
bootsource, but a devicename is not what we get as current bootsource. I
suggest to either switch to devicenames completely or to let the
bootmode command just understand bootmode <type> <instance>, like
bootmode mmc 2.

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

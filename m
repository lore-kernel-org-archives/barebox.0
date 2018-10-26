Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFw5o-0005f9-DS
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 06:59:38 +0000
Date: Fri, 26 Oct 2018 08:59:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181026065921.dxclwuj4i75x32qx@pengutronix.de>
References: <20181019141242.8687-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181019141242.8687-1-m.niestroj@grinn-global.com>
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
Subject: Re: [PATCH v2] ARM: i.MX: Add liteboard support
To: Marcin Niestroj <m.niestroj@grinn-global.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Hi Marcin,

Looks fine overall, two small things to note.

On Fri, Oct 19, 2018 at 04:12:42PM +0200, Marcin Niestroj wrote:
> +static void bbu_register_handler_sd(bool is_boot_source)
> +{
> +	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc0.barebox",
> +				is_boot_source ? BBU_HANDLER_FLAG_DEFAULT : 0);
> +}
> +
> +static void bbu_register_handler_emmc(bool is_boot_source)
> +{
> +	int emmc_boot_flag = 0, emmc_flag = 0;
> +	const char *bootpart;
> +	struct device_d *dev;
> +	int ret;
> +
> +	if (!is_boot_source)
> +		goto bbu_register;
> +
> +	dev = get_device_by_name("mmc1");
> +	if (!dev) {
> +		pr_warn("Failed to get eMMC device\n");
> +		goto bbu_register;
> +	}
> +
> +	ret = device_detect(dev);
> +	if (ret) {
> +		pr_warn("Failed to probe eMMC\n");
> +		goto bbu_register;
> +	}
> +
> +	bootpart = dev_get_param(dev, "boot");
> +	if (!bootpart) {
> +		pr_warn("Failed to get eMMC boot configuration\n");
> +		goto bbu_register;
> +	}
> +
> +	if (!strncmp(bootpart, "boot", 4))
> +		emmc_boot_flag |= BBU_HANDLER_FLAG_DEFAULT;
> +	else
> +		emmc_flag |= BBU_HANDLER_FLAG_DEFAULT;
> +
> +bbu_register:
> +	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc1.barebox",
> +					emmc_flag);
> +	imx6_bbu_internal_mmcboot_register_handler("emmc-boot", "mmc1",
> +					emmc_boot_flag);
> +}

I'm not sure if the way you switch the default handler to the current
bootsource might not be a bit confusing. For example if you start from
eMMC user partition and execute the mmcboot handler once then the
default will change from user partition to boot next time. Also if you
think of the SD slot as a temporary boot source to recover the eMMC
bootloader then you might want to keep the default boot slot as eMMC
even if you are booting from SD currently.

I'll merge it as is if you think it's fine, but otherwise I suggest to
keep the default as eMMC boot partition. Maybe the others are not even
needed at all. Less choices make it easier for the user to pick the
right one ;)

> +
> +static const struct {
> +	const char *name;
> +	const char *env;
> +	void (*bbu_register_handler)(bool);
> +} boot_sources[] = {
> +	{"SD",   "/chosen/environment-sd",   bbu_register_handler_sd},
> +	{"eMMC", "/chosen/environment-emmc", bbu_register_handler_emmc},
> +};
> +
> +static int liteboard_devices_init(void)
> +{
> +	int boot_source_idx = 0;
> +	int ret;
> +	int i;
> +
> +	if (!of_machine_is_compatible("grinn,imx6ul-liteboard"))
> +		return 0;
> +
> +	barebox_set_hostname("liteboard");
> +
> +	if (bootsource_get() == BOOTSOURCE_MMC)
> +		boot_source_idx = bootsource_get_instance();
> +
> +	ret = of_device_enable_path(boot_sources[boot_source_idx].env);

You should check for index out of bounds before using boot_source_idx as
an array index, even when you know you only have 0 and 1 as boot
sources.

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

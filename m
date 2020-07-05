Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js8mA-0000nj-Hn
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 17:50:03 +0000
Date: Sun, 5 Jul 2020 19:49:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705174959.GY15485@pengutronix.de>
References: <20200702071411.18969-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702071411.18969-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: Add Support for Webasto ccbv2
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Rouven,

On Thu, Jul 02, 2020 at 09:14:11AM +0200, Rouven Czerwinski wrote:
> Add support for the Webasto Common Communication Board Version 2. The
> device tree included with barebox can eventually be replaced with the
> required barebox changes when the ccbv2 device tree is upstream.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
> +static int ccbv2_device_init(void)
> +{
> +	if (!of_machine_is_compatible("webasto,imx6ul-ccbv2"))
> +		return 0;
> +
> +	/* the bootloader is stored in one of the two boot partitions */
> +	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc1",
> +			BBU_HANDLER_FLAG_DEFAULT);
> +
> +	barebox_set_hostname("weabsto-ccbv2");
> +
> +	return 0;
> +
> +}
> +device_initcall(ccbv2_device_init);
> +
> +static int ccbv2_apply_overlay(void)
> +{
> +	struct device_node *overlay;
> +	struct fdt_header *fdt;
> +	int ret;
> +
> +	if(!IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE))
> +		return 0;

The lack of the runtime test for a compatible machine breaks running
barebox on other enabled machines. You probably do this in a
pure_initcall to register the overlay before barebox unflattens the dtb.
I'm not sure what to do about it, but breaking other machines is not an
option.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

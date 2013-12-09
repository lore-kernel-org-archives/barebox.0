Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vq11f-0005jZ-1j
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 13:37:32 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B8FFCFFA82F
 for <barebox@lists.infradead.org>; Mon,  9 Dec 2013 14:37:09 +0100 (CET)
Date: Mon, 9 Dec 2013 14:37:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131209133716.GM27628@ns203013.ovh.net>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-6-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386409020-11914-6-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] sama5d3xek: add NOR CFI support
To: Eric B??nard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> log is now :
> cfi_flash cfi_flash0: found cfi flash at 10000000, size 16777216
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/boards/sama5d3xek/init.c | 35 +++++++++++++++++++++++++++++++++=
++
>  1 file changed, 35 insertions(+)
> =

> diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3x=
ek/init.c
> index ff62550..f7dfea0 100644
> --- a/arch/arm/boards/sama5d3xek/init.c
> +++ b/arch/arm/boards/sama5d3xek/init.c
> @@ -118,6 +118,40 @@ static void ek_add_device_nand(void)
>  static void ek_add_device_nand(void) {}
>  #endif
>  =

> +#if defined(CONFIG_DRIVER_CFI)
> +static struct sama5_smc_config __initdata cm_nor_smc_config =3D {
drop the __initdata
> +	.ncs_read_setup		=3D 10,
> +	.nrd_setup		=3D 10,
> +	.ncs_write_setup	=3D 10,
> +	.nwe_setup		=3D 10,
> +
> +	.ncs_read_pulse		=3D 11,
> +	.nrd_pulse		=3D 11,
> +	.ncs_write_pulse	=3D 11,
> +	.nwe_pulse		=3D 11,
> +
> +	.read_cycle		=3D 22,
> +	.write_cycle		=3D 22,
> +
> +	.mode			=3D AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_DBW_16,
> +	.tdf_cycles		=3D 6,
> +};
> +
> +static void ek_add_device_norcfi(void)
> +{
> +	struct clk *clk =3D clk_get(NULL, "smc_clk");
> +
> +	clk_enable(clk);
> +
> +	/* configure chip-select 0 (NOR) */
> +	sama5_smc_configure(0, 0, &cm_nor_smc_config);
> +
> +	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 256 * 1024 * 1024, 0);
no put the right size or 0 for auto detect not 256MiB

Best Regards,
J.
> +}
> +#else
> +static void ek_add_device_norcfi(void) {}
> +#endif
> +
>  #if defined(CONFIG_DRIVER_NET_MACB)
>  static struct macb_platform_data gmac_pdata =3D {
>  	.phy_interface =3D PHY_INTERFACE_MODE_RGMII,
> @@ -413,6 +447,7 @@ static int at91sama5d3xek_devices_init(void)
>  	ek_add_device_w1();
>  	ek_add_device_hdmi();
>  	ek_add_device_nand();
> +	ek_add_device_norcfi();
>  	ek_add_led();
>  	ek_add_device_eth();
>  	ek_add_device_spi();
> -- =

> 1.8.3.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

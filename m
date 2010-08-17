Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlG2d-0000Sq-U1
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 06:53:01 +0000
Date: Tue, 17 Aug 2010 08:52:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100817065258.GU27749@pengutronix.de>
References: <cover.1281966840.git.baruch@tkos.co.il>
	<ba700c1797f3cc6fbf0427c53ac3183325129848.1281966840.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba700c1797f3cc6fbf0427c53ac3183325129848.1281966840.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH v2 3/6] imx iim: add mac address support
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On Mon, Aug 16, 2010 at 05:10:35PM +0300, Baruch Siach wrote:
> ---
>  arch/arm/mach-imx/iim.c              |   22 +++++++++++++++++++++-
>  arch/arm/mach-imx/include/mach/iim.h |   13 +++++++++++++
>  2 files changed, 34 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
> index 73369b7..9d14d35 100644
> --- a/arch/arm/mach-imx/iim.c
> +++ b/arch/arm/mach-imx/iim.c
> @@ -29,6 +29,8 @@
>  
>  #define DRIVERNAME	"imx_iim"
>  
> +static unsigned long mac_addr_base;
> +
>  static int do_fuse_sense(unsigned long reg_base, unsigned int bank,
>  		unsigned int row)
>  {
> @@ -224,6 +226,11 @@ static int imx_iim_blow_enable_set(struct device_d *dev, struct param_d *param,
>  
>  static int imx_iim_probe(struct device_d *dev)
>  {
> +	struct imx_iim_platform_data *pdata = dev->platform_data;
> +
> +	if (pdata)
> +		mac_addr_base = pdata->mac_addr_base;
> +
>  	return 0;
>  }
>  
> @@ -288,4 +295,17 @@ static int imx_iim_init(void)
>  
>  	return 0;
>  }
> -device_initcall(imx_iim_init);
> +coredevice_initcall(imx_iim_init);
> +
> +int imx_iim_get_mac(unsigned char *mac)
> +{
> +	int i;
> +
> +	if (mac_addr_base == 0)
> +		return -EINVAL;
> +
> +	for (i = 0; i < 6; i++)
> +		 mac[i] = readb(mac_addr_base + i*4);
> +
> +	return 0;
> +}
> diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/include/mach/iim.h
> index 6e13547..4d54cc0 100644
> --- a/arch/arm/mach-imx/include/mach/iim.h
> +++ b/arch/arm/mach-imx/include/mach/iim.h
> @@ -39,4 +39,17 @@
>  #define IIM_SCS2	0x0034
>  #define IIM_SCS3	0x0038
>  
> +struct imx_iim_platform_data {
> +	unsigned long	mac_addr_base;
> +};
> +
> +#ifdef CONFIG_IMX_IIM
> +int imx_iim_get_mac(unsigned char *mac);
> +#else
> +int imx_iim_get_mac(unsigned char *mac)

static inline please. Otherwise linking fails if this function gets a
second user.

Otherwise the series looks fine. Thanks for your work.

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

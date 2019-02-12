Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gteoi-0005Vs-JG
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 20:38:10 +0000
Date: Tue, 12 Feb 2019 21:38:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212203806.wb4rzyjiuqvxsq5z@pengutronix.de>
References: <20190212022749.18301-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190212022749.18301-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] ARM: i.MX8MQ: Invert the logic in
 imx8mq_cpu_revision()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 11, 2019 at 06:27:47PM -0800, Andrey Smirnov wrote:
> Invert the logic in imx8mq_cpu_revision() and convert it to use early
> return. This is done in perparation for more corner case logic added
> in the following commits. No functional change intended.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/include/mach/imx8mq.h | 26 ++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
> index f4a537d2b..2a7cf9977 100644
> --- a/arch/arm/mach-imx/include/mach/imx8mq.h
> +++ b/arch/arm/mach-imx/include/mach/imx8mq.h
> @@ -22,19 +22,19 @@ static inline int imx8mq_cpu_revision(void)
>  	void __iomem *anatop = IOMEM(MX8MQ_ANATOP_BASE_ADDR);
>  	uint32_t revision = FIELD_GET(DIGPROG_MINOR,
>  				      readl(anatop + MX8MQ_ANATOP_DIGPROG));
> -
> -	if (revision == IMX_CHIP_REV_1_0) {
> -		uint32_t rom_version;
> -		/*
> -		 * For B0 chip, the DIGPROG is not updated, still TO1.0.
> -		 * we have to check ROM version further
> -		 */
> -		rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_A0));
> -		if (rom_version != IMX_CHIP_REV_1_0) {
> -			rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_B0));
> -			if (rom_version >= IMX_CHIP_REV_2_0)
> -				revision = IMX_CHIP_REV_2_0;
> -		}
> +	uint32_t rom_version;
> +
> +	if (revision != IMX_CHIP_REV_1_0)
> +		return revision;
> +	/*
> +	 * For B0 chip, the DIGPROG is not updated, still TO1.0.
> +	 * we have to check ROM version further
> +	 */
> +	rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_A0));
> +	if (rom_version != IMX_CHIP_REV_1_0) {
> +		rom_version = readl(IOMEM(IMX8MQ_ROM_VERSION_B0));
> +		if (rom_version >= IMX_CHIP_REV_2_0)
> +			revision = IMX_CHIP_REV_2_0;
>  	}
>  
>  	return revision;
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

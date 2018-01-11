Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXda-0004Tp-6Y
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:51:02 +0000
Date: Thu, 11 Jan 2018 08:50:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180111075054.dfjszfteuhug4l3u@pengutronix.de>
References: <1515502805.2493.11.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1515502805.2493.11.camel@googlemail.com>
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
Subject: Re: [PATCH] ARM: i.MX6: add new silicon revision number 1.6
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 09, 2018 at 02:00:05PM +0100, Christoph Fritz wrote:
> This patch adds new silicon revision number 1.6 as specified in document
> IMX6DQCEC.pdf.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  arch/arm/mach-imx/include/mach/imx6.h     | 2 ++
>  arch/arm/mach-imx/include/mach/revision.h | 1 +
>  2 files changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
> index e0ced7e..288c753 100644
> --- a/arch/arm/mach-imx/include/mach/imx6.h
> +++ b/arch/arm/mach-imx/include/mach/imx6.h
> @@ -109,6 +109,8 @@ static inline int __imx6_cpu_revision(void)
>  		return IMX_CHIP_REV_1_4;
>  	case 0x05:
>  		return IMX_CHIP_REV_1_5;
> +	case 0x06:
> +		return IMX_CHIP_REV_1_6;
>  	case 0x100:
>  		return IMX_CHIP_REV_2_0;
>  	}
> diff --git a/arch/arm/mach-imx/include/mach/revision.h b/arch/arm/mach-imx/include/mach/revision.h
> index 908a0a1..d9495d9 100644
> --- a/arch/arm/mach-imx/include/mach/revision.h
> +++ b/arch/arm/mach-imx/include/mach/revision.h
> @@ -8,6 +8,7 @@
>  #define IMX_CHIP_REV_1_3	0x13
>  #define IMX_CHIP_REV_1_4	0x14
>  #define IMX_CHIP_REV_1_5	0x15
> +#define IMX_CHIP_REV_1_6	0x16
>  #define IMX_CHIP_REV_2_0	0x20
>  #define IMX_CHIP_REV_2_1	0x21
>  #define IMX_CHIP_REV_2_2	0x22
> -- 
> 2.1.4
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cYpuG-0004wA-Au
 for barebox@lists.infradead.org; Wed, 01 Feb 2017 08:04:46 +0000
Date: Wed, 1 Feb 2017 09:04:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170201080422.jon2ewtezc66axbi@pengutronix.de>
References: <1485816659-26091-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1485816659-26091-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/5] ARM i.MX: move cpu_type macros in front of
 cpu_revision code
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 30, 2017 at 11:50:55PM +0100, Alexander Kurz wrote:
> Preparational commit to enable the use of cpu_type macros in imx6_cpu_revision()
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>

Applied patches 1-4 for now.

Sascha

> ---
>  arch/arm/mach-imx/include/mach/imx6.h | 40 +++++++++++++++++------------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
> index 8c169f1..e201721 100644
> --- a/arch/arm/mach-imx/include/mach/imx6.h
> +++ b/arch/arm/mach-imx/include/mach/imx6.h
> @@ -50,6 +50,26 @@ static inline int imx6_cpu_type(void)
>  	return __imx6_cpu_type();
>  }
>  
> +#define DEFINE_MX6_CPU_TYPE(str, type)					\
> +	static inline int cpu_mx6_is_##str(void)			\
> +	{								\
> +		return __imx6_cpu_type() == type;			\
> +	}								\
> +									\
> +	static inline int cpu_is_##str(void)				\
> +	{								\
> +		if (!cpu_is_mx6())					\
> +			return 0;					\
> +		return cpu_mx6_is_##str();				\
> +	}
> +
> +DEFINE_MX6_CPU_TYPE(mx6s, IMX6_CPUTYPE_IMX6S);
> +DEFINE_MX6_CPU_TYPE(mx6dl, IMX6_CPUTYPE_IMX6DL);
> +DEFINE_MX6_CPU_TYPE(mx6q, IMX6_CPUTYPE_IMX6Q);
> +DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
> +DEFINE_MX6_CPU_TYPE(mx6sx, IMX6_CPUTYPE_IMX6SX);
> +DEFINE_MX6_CPU_TYPE(mx6ul, IMX6_CPUTYPE_IMX6UL);
> +
>  static inline int __imx6_cpu_revision(void)
>  {
>  
> @@ -85,24 +105,4 @@ static inline int imx6_cpu_revision(void)
>  	return __imx6_cpu_revision();
>  }
>  
> -#define DEFINE_MX6_CPU_TYPE(str, type)					\
> -	static inline int cpu_mx6_is_##str(void)			\
> -	{								\
> -		return __imx6_cpu_type() == type;			\
> -	}								\
> -									\
> -	static inline int cpu_is_##str(void)				\
> -	{								\
> -		if (!cpu_is_mx6())					\
> -			return 0;					\
> -		return cpu_mx6_is_##str();				\
> -	}
> -
> -DEFINE_MX6_CPU_TYPE(mx6s, IMX6_CPUTYPE_IMX6S);
> -DEFINE_MX6_CPU_TYPE(mx6dl, IMX6_CPUTYPE_IMX6DL);
> -DEFINE_MX6_CPU_TYPE(mx6q, IMX6_CPUTYPE_IMX6Q);
> -DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
> -DEFINE_MX6_CPU_TYPE(mx6sx, IMX6_CPUTYPE_IMX6SX);
> -DEFINE_MX6_CPU_TYPE(mx6ul, IMX6_CPUTYPE_IMX6UL);
> -
>  #endif /* __MACH_IMX6_H */
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

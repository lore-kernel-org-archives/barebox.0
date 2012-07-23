Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StP1E-0000gs-Sk
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 20:14:17 +0000
Date: Mon, 23 Jul 2012 22:13:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723201348.GE30009@pengutronix.de>
References: <1342846209-10461-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342846209-10461-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] mc13xxx: Added dummy definitions if
 CONFIG_MFD_MC13XXX is not set
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Jul 21, 2012 at 08:50:07AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied 1/3 and 3/3. Thanks

 Sascha

> ---
>  arch/arm/boards/pcm038/pcm038.c |    2 --
>  include/mfd/mc13xxx.h           |   23 ++++++++++++++++++++++-
>  2 files changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index badc978..ffd8d87 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -125,7 +125,6 @@ static inline uint32_t get_pll_spctl10(void)
>   */
>  static int pcm038_power_init(void)
>  {
> -#ifdef CONFIG_MFD_MC13XXX
>  	uint32_t spctl0 = get_pll_spctl10();
>  	struct mc13xxx *mc13xxx = mc13xxx_get();
>  
> @@ -159,7 +158,6 @@ static int pcm038_power_init(void)
>  			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
>  		}
>  	}
> -#endif
>  
>  	/* clock gating enable */
>  	GPCR = 0x00050f08;
> diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
> index 2880307..632c9fb 100644
> --- a/include/mfd/mc13xxx.h
> +++ b/include/mfd/mc13xxx.h
> @@ -163,10 +163,31 @@ struct mc13xxx {
>  	int			revision;
>  };
>  
> +#ifdef CONFIG_MFD_MC13XXX
>  extern struct mc13xxx *mc13xxx_get(void);
> -
>  extern int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val);
>  extern int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val);
>  extern int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u32 val);
> +#else
> +static inline struct mc13xxx *mc13xxx_get(void)
> +{
> +	return NULL;
> +}
> +
> +static inline int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
> +{
> +	return -ENODEV;
> +}
> +
> +static inline int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
> +{
> +	return -ENODEV;
> +}
> +
> +static inline int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u32 val)
> +{
> +	return -ENODEV;
> +}
> +#endif
>  
>  #endif /* __MFD_MC13XXX_H */
> -- 
> 1.7.3.4
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

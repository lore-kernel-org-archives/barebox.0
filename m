Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2Hfq-0001uq-6N
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 08:45:10 +0000
Date: Mon, 4 Feb 2013 09:45:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130204084508.GD1906@pengutronix.de>
References: <1359895702-30597-1-git-send-email-plagnioj@jcrosoft.com>
 <1359899398-3867-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359899398-3867-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH v2] at91sam9_ddrsdr: fix register on mdr read and sdram
 detection for ddr size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 03, 2013 at 02:49:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> it's currently working by luck
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> v2:
> 	2 bug together make it work
> 

Applied, thanks

Sascha

> Best Regards,
> J.
>  arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
> index 2614f97..88796a6 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
> @@ -146,7 +146,7 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
>  	bool is_sdram;
>  
>  	cr = __raw_readl(base + AT91_DDRSDRC_CR);
> -	mdr = __raw_readl(base + AT91_DDRSDRC_CR);
> +	mdr = __raw_readl(base + AT91_DDRSDRC_MDR);
>  
>  	is_sdram = (mdr & AT91_DDRSDRC_MD) <= AT91_DDRSDRC_MD_LOW_POWER_SDR;
>  
> @@ -158,7 +158,7 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
>  	size = 1;
>  	/* COL */
>  	size += (cr & AT91_DDRSDRC_NC) + 8;
> -	if (is_sdram)
> +	if (!is_sdram)
>  		size ++;
>  	/* ROW */
>  	size += ((cr & AT91_DDRSDRC_NR) >> 2) + 11;
> -- 
> 1.7.10.4
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

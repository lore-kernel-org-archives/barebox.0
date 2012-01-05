Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiilQ-0007T3-Un
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 08:33:34 +0000
Date: Thu, 5 Jan 2012 09:33:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120105083327.GZ5446@pengutronix.de>
References: <1325700449-3778-1-git-send-email-plagnioj@jcrosoft.com>
 <1325700539-4068-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325700539-4068-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2 v2] at91rm9200: fix lowlovel init PIOC base
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 04, 2012 at 07:08:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Missed v2, used this one instead.

Sascha

> ---
>  arch/arm/mach-at91/at91rm9200_lowlevel_init.c |    6 +-
>  2 files changed, 44 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
> index 8d9ae08..dc54bcf 100644
> --- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
> @@ -101,11 +101,11 @@ void __naked __bare_init board_init_lowlevel(void)
>  	 */
>  
>  	/* PIOC_ASR: Configure PIOC as peripheral (D16/D31) */
> -	at91_sys_write(AT91_PIOC + PIO_ASR, CONFIG_SYS_PIOC_ASR_VAL);
> +	__raw_writel(CONFIG_SYS_PIOC_ASR_VAL, AT91_BASE_PIOC + PIO_ASR);
>  	/* PIOC_BSR */
> -	at91_sys_write(AT91_PIOC + PIO_BSR, CONFIG_SYS_PIOC_BSR_VAL);
> +	__raw_writel(CONFIG_SYS_PIOC_BSR_VAL, AT91_BASE_PIOC + PIO_BSR);
>  	/* PIOC_PDR */
> -	at91_sys_write(AT91_PIOC + PIO_PDR, CONFIG_SYS_PIOC_PDR_VAL);
> +	__raw_writel(CONFIG_SYS_PIOC_PDR_VAL, AT91_BASE_PIOC + PIO_PDR);
>  
>  	/* EBI_CSA : CS1=SDRAM */
>  	at91_sys_write(AT91_EBI_CSA, CONFIG_SYS_EBI_CSA_VAL);
> -- 
> 1.7.7
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

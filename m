Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eolvA-00083a-Lu
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 08:08:06 +0000
Date: Thu, 22 Feb 2018 09:07:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180222080752.yaae26pawgeqo7bo@pengutronix.de>
References: <20180221153910.24653-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180221153910.24653-1-jbe@pengutronix.de>
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
Subject: Re: [PATCH] ARM/i.MX53: fix SDRAM setup routines
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 21, 2018 at 04:39:10PM +0100, Juergen Borleis wrote:
> Fix setup of the SDRAM's MR0 register: 'val' gets overwritten by the chip
> select decision and nothing is written to the MR0 register.
> 
> This fix is required since some i.MX53 based platforms still use this
> software setup routine to configure their SDRAMs.
> 
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl-v4.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/esdctl-v4.c b/arch/arm/mach-imx/esdctl-v4.c
> index 0652b492e..6de4a8d6e 100644
> --- a/arch/arm/mach-imx/esdctl-v4.c
> +++ b/arch/arm/mach-imx/esdctl-v4.c
> @@ -191,9 +191,9 @@ void imx_esdctlv4_start_ddr3_sdram(int cs)
>  		ESDCTL_V4_DDR3_REG_MR0 | val_cs1;
>  
>  	if (cs)
> -		val = ESDCTL_V4_ESDSCR_DLL_RST1;
> +		val |= ESDCTL_V4_ESDSCR_DLL_RST1;
>  	else
> -		val = ESDCTL_V4_ESDSCR_DLL_RST0;
> +		val |= ESDCTL_V4_ESDSCR_DLL_RST0;
>  
>  	writel(val, base + ESDCTL_V4_ESDSCR);
>  
> -- 
> 2.16.1
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

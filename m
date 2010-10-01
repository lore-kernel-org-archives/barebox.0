Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P1a29-0004TP-Nb
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 07:27:59 +0000
Date: Fri, 1 Oct 2010 09:27:52 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20101001072752.GL10841@pengutronix.de>
References: <1285903297-6779-1-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1285903297-6779-1-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH] imx35: add base addresses for I2C and SDHC
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Fri, Oct 01, 2010 at 01:21:37PM +1000, Marc Reilly wrote:
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  arch/arm/mach-imx/include/mach/imx35-regs.h |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
> index c394a2a..b24674c 100644
> --- a/arch/arm/mach-imx/include/mach/imx35-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
> @@ -46,6 +46,11 @@
>  #define IMX_NFC_BASE		0xBB000000
>  #define IMX_FEC_BASE		0x50038000
>  #define IMX_I2C1_BASE		0x43F80000
> +#define IMX_I2C2_BASE		0x43F98000
> +#define IMX_IC23_BASE		0x43F84000
               ^^^^
Shouldn't that be I2C3?

rsc

> +#define IMX_SDHC1_BASE		0x53FB4000
> +#define IMX_SDHC2_BASE		0x53FB8000
> +#define IMX_SDHC3_BASE		0x53FBC000
>  
>  /*
>   * Clock Controller Module (CCM)
> -- 
> 1.7.1
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

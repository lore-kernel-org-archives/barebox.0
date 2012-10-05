Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK6Q5-0006Yr-JB
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 11:50:18 +0000
Date: Fri, 5 Oct 2012 13:50:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121005115016.GO1322@pengutronix.de>
References: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] ARM: Fix Kconfig link for Cirrus Logic EP9312 CPU.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Oct 04, 2012 at 04:36:59PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---

Applied (this one).

Thanks
 Sascha

>  arch/arm/cpu/Kconfig |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index f55e862..2ed6789 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -17,7 +17,7 @@ config CPU_ARM920T
>  	  and is used in the Maverick EP9312 and the Samsung S3C2410.
>  
>  	  More information on the Maverick EP9312 at
> -	  <http://linuxdevices.com/products/PD2382866068.html>.
> +	  <http://www.cirrus.com/en/products/ep9312.html>.
>  
>  	  Say Y if you want support for the ARM920T processor.
>  	  Otherwise, say N.
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmdYs-0006Ft-Rf
 for barebox@lists.infradead.org; Fri, 07 Nov 2014 07:02:23 +0000
Date: Fri, 7 Nov 2014 08:02:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141107070201.GY30369@pengutronix.de>
References: <1415280028-18240-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415280028-18240-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 1/2] of: use OFTREE_MEM_GENERIC for the sandbox
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 06, 2014 at 02:20:27PM +0100, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied both, thanks

Sascha

> ---
>  drivers/of/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
> index 97378ab59f41..90475cfbcae4 100644
> --- a/drivers/of/Kconfig
> +++ b/drivers/of/Kconfig
> @@ -4,7 +4,7 @@ config OFTREE
>  
>  config OFTREE_MEM_GENERIC
>  	depends on OFTREE
> -	depends on PPC || ARM || ARCH_EFI || OPENRISC
> +	depends on PPC || ARM || ARCH_EFI || OPENRISC || SANDBOX
>  	def_bool y
>  
>  config DTC
> -- 
> 2.1.1
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

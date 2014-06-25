Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WzhLs-0007nm-AS
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 07:10:40 +0000
Date: Wed, 25 Jun 2014 09:10:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140625071018.GP15686@pengutronix.de>
References: <1403674244-12140-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403674244-12140-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: mach-ath79: drop extra 'select HAVE_CLK'
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 25, 2014 at 09:30:44AM +0400, Antony Pavlov wrote:
> We already have 'select COMMON_CLK' so 'select HAVE_CLK'
> is redundant.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 9a240b7..dcd0e58 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -61,7 +61,6 @@ config MACH_MIPS_ATH79
>  	select SYS_SUPPORTS_BIG_ENDIAN
>  	select CSRC_R4K_LIB
>  	select HAS_DEBUG_LL
> -	select HAVE_CLK
>  	select COMMON_CLK
>  	select COMMON_CLK_OF_PROVIDER
>  	select CLKDEV_LOOKUP
> -- 
> 1.9.2
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

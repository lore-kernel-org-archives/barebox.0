Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6At9-0000DX-R7
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 08:13:57 +0000
Date: Wed, 11 Apr 2018 10:13:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411081344.blwrhrbzr4ftmefz@pengutronix.de>
References: <20180410013637.2513-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180410013637.2513-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] i.MX53/TX53: Adjust to latest get_runtime_offset()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 09, 2018 at 06:36:36PM -0700, Andrey Smirnov wrote:
> Latest version of get_runtime_offset() returns positive offset that
> needs to be added to rather than substracted from original pointer.
> 
> Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Sascha:
> 
> This one obviously needs to go into master as well. Sorry for the
> noise if this has already been fixed.

Applied to master, thanks

Sascha

> 
> Thanks,
> Andrey Smirnov
> 
>  arch/arm/boards/karo-tx53/lowlevel.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
> index cb324b200..a0bce8a78 100644
> --- a/arch/arm/boards/karo-tx53/lowlevel.c
> +++ b/arch/arm/boards/karo-tx53/lowlevel.c
> @@ -47,7 +47,7 @@ static void __imx53_tx53_init(int is_xx30)
>  	if (IS_ENABLED(CONFIG_DEBUG_LL))
>  		setup_uart();
>  
> -	fdt = fdt_blob_fixed_offset - get_runtime_offset();
> +	fdt = fdt_blob_fixed_offset + get_runtime_offset();
>  
>  	imx53_barebox_entry(fdt);
>  }
> -- 
> 2.14.3
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UShx5-0004ca-8a
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 06:04:11 +0000
Date: Thu, 18 Apr 2013 08:04:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130418060409.GA1906@pengutronix.de>
References: <1366147921-23073-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366147921-23073-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH] omap4 regression: set correct boot source
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 16, 2013 at 11:32:01PM +0200, Vicente Bergas wrote:
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>

Folded into the original patch breaking it.

Sascha

> ---
>  arch/arm/mach-omap/omap4_generic.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index b33ed60..3d6ec25 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -507,11 +507,11 @@ static int omap4_bootsource(void)
>  	u32 bootsrc = readl(OMAP4_TRACING_VECTOR3);
>  
>  	if (bootsrc & (1 << 5))
> -		return BOOTSOURCE_MMC;
> +		src = BOOTSOURCE_MMC;
>  	if (bootsrc & (1 << 3))
> -		return BOOTSOURCE_NAND;
> +		src = BOOTSOURCE_NAND;
>  	if (bootsrc & (1<<20))
> -		return BOOTSOURCE_USB;
> +		src = BOOTSOURCE_USB;
>  	bootsource_set(src);
>  	bootsource_set_instance(0);
>  
> -- 
> 1.8.2.1
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USMoR-0006XT-Cm
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 07:29:52 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1USMoM-0006b8-L8
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 09:29:46 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1USMpD-0006Gj-8w
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 09:30:39 +0200
Message-ID: <1366183839.4178.9.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 17 Apr 2013 09:30:39 +0200
In-Reply-To: <1366147921-23073-1-git-send-email-vicencb@gmail.com>
References: <1366147921-23073-1-git-send-email-vicencb@gmail.com>
Mime-Version: 1.0
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
To: barebox@lists.infradead.org

On Tue, 2013-04-16 at 23:32 +0200, Vicente Bergas wrote:
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
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

Sorry for messing this up. Sascha, this patch is correct.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UT3qj-0005TS-5S
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 05:27:07 +0000
Date: Fri, 19 Apr 2013 07:27:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130419052701.GH20989@pengutronix.de>
References: <1366204585-2626-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366204585-2626-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] arm: omap: am33xx: store boot source info from ROM loader
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 17, 2013 at 03:16:25PM +0200, Jan Luebbe wrote:
> The ROM loader passes the address of a buffer to the MLO in
> register 0. Store this data so we can find the boot source later.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
>  
> +#ifdef CONFIG_ARCH_AM33XX
> +#include <mach/am33xx-generic.h>
> +#endif
> +
>  static void *read_image_head(const char *name)
>  {
>  	void *header = xmalloc(ARM_HEAD_SIZE);
> @@ -163,7 +167,8 @@ static void *omap4_xload_boot_usb(void){
>   */
>  static __noreturn int omap_xload(void)
>  {
> -	int (*func)(void) = NULL;
> +	int (*func)(void *) = NULL;
> +	uint32_t arg = 0;
>  
>  	switch (bootsource_get())
>  	{
> @@ -198,8 +203,11 @@ static __noreturn int omap_xload(void)
>  		while (1);
>  	}
>  
> +	if (IS_ENABLED(CONFIG_ARCH_AM33XX))
> +		arg = (uint32_t)&am33xx_bootinfo;
> +

I had to drop this one, it breaks compilation on omap based boards:

arch/arm/mach-omap/xload.c: In function 'omap_xload':
arch/arm/mach-omap/xload.c:207:20: error: 'am33xx_bootinfo' undeclared (first use in this function)
arch/arm/mach-omap/xload.c:207:20: note: each undeclared identifier is reported only once for each function it appears in
arch/arm/mach-omap/xload.c:210:2: warning: passing argument 1 of 'func' makes pointer from integer without a cast [enabled by default]
arch/arm/mach-omap/xload.c:210:2: note: expected 'void *' but argument is of type 'uint32_t'
make[1]: *** [arch/arm/mach-omap/xload.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [arch/arm/mach-omap] Error 2
make: *** Waiting for unfinished jobs....


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

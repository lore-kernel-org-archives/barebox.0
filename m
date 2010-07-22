Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Obvyc-00035l-3X
	for barebox@lists.infradead.org; Thu, 22 Jul 2010 13:38:18 +0000
Date: Thu, 22 Jul 2010 15:38:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100722133816.GM14113@pengutronix.de>
References: <663c1d5bbf018d889bd085f508d14e8e104b6430.1279783784.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <663c1d5bbf018d889bd085f508d14e8e104b6430.1279783784.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH] bootz: give a proper error on open() failure
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Thu, Jul 22, 2010 at 10:30:34AM +0300, Baruch Siach wrote:
> Currently when running bootz on a nonexistent file, barebox just got stuck. Fix
> this.

Applied to -master.

Thanks
 Sascha

> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  arch/arm/lib/armlinux.c |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 89d989a..17ae057 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -34,6 +34,7 @@
>  #include <xfuncs.h>
>  #include <malloc.h>
>  #include <fcntl.h>
> +#include <errno.h>
>  
>  #include <asm/byteorder.h>
>  #include <asm/global_data.h>
> @@ -276,6 +277,10 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
>  	}
>  
>  	fd = open(argv[1], O_RDONLY);
> +	if (fd < 0) {
> +		perror("open");
> +		return 1;
> +	}
>  
>  	ret = read(fd, &header, sizeof(header));
>  	if (ret < sizeof(header)) {
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

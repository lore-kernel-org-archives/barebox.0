Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHVyR-0005TN-Pa
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 07:58:48 +0000
Date: Tue, 10 Apr 2012 09:58:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120410075842.GS3852@pengutronix.de>
References: <1333722998-28648-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333722998-28648-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] at91rm9200ek: set maximum nor flash size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 06, 2012 at 04:36:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> it's 8MiB.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/at91rm9200ek/init.c |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
> index 6911447..3875f4a 100644
> --- a/arch/arm/boards/at91rm9200ek/init.c
> +++ b/arch/arm/boards/at91rm9200ek/init.c
> @@ -28,6 +28,7 @@
>  #include <fs.h>
>  #include <fcntl.h>
>  #include <io.h>
> +#include <sizes.h>
>  #include <asm/hardware.h>
>  #include <mach/at91_pmc.h>
>  #include <mach/board.h>
> @@ -116,7 +117,7 @@ static int at91rm9200ek_devices_init(void)
>  
>  	at91_add_device_eth(0, &ether_pdata);
>  
> -	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
> +	add_cfi_flash_device(0, AT91_CHIPSELECT_0, SZ_8M, 0);
>  	/* USB Host */
>  	at91_add_device_usbh_ohci(&ek_usbh_data);
>  	ek_device_add_leds();
> -- 
> 1.7.9.1
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

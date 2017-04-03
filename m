Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cuv6Z-0007k3-C8
 for barebox@lists.infradead.org; Mon, 03 Apr 2017 06:04:45 +0000
Date: Mon, 3 Apr 2017 08:04:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170403060417.mtq4cnkgft3256rc@pengutronix.de>
References: <20170331173436.10767-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170331173436.10767-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] usb: gadget: set otg to peripheral mode on autostart
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

On Fri, Mar 31, 2017 at 07:34:36PM +0200, Oleksij Rempel wrote:
> we won't be able to start if otg is not properly configured.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/usb/gadget/autostart.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
> index 43c2ba23d..87781a11a 100644
> --- a/drivers/usb/gadget/autostart.c
> +++ b/drivers/usb/gadget/autostart.c
> @@ -14,6 +14,7 @@
>  #include <common.h>
>  #include <command.h>
>  #include <errno.h>
> +#include <environment.h>
>  #include <malloc.h>
>  #include <getopt.h>
>  #include <fs.h>
> @@ -31,10 +32,15 @@ static char *fastboot_function;
>  static int usbgadget_autostart(void)
>  {
>  	struct f_multi_opts opts = {};
> +	int ret;
>  
>  	if (!autostart)
>  		return 0;
>  
> +	ret = setenv("otg.mode", "peripheral");
> +	if (ret)
> +		return ret;

When the USB device is not a i.MX chipidea or MUSB controller, or the
device is set to device mode in the device tree, then the otg device
won't exist. You have to ignore the error value from setenv.

Sascha



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

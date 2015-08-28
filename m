Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVCti-0005m5-FR
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 06:12:23 +0000
Date: Fri, 28 Aug 2015 08:11:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150828061159.GY18700@pengutronix.de>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
 <1440714250-28080-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440714250-28080-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 2/9] WIP: fix drivers/usb/core/usb.c
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Fri, Aug 28, 2015 at 01:24:03AM +0300, Antony Pavlov wrote:
> drivers/usb/core/usb.c: In function 'usb_parse_config':
> drivers/usb/core/usb.c:194:28: error: 'struct usb_configuration' has no
> member named 'wTotalLength'
>   le16_to_cpus(&(dev->config.wTotalLength));
>                             ^
> ...
> scripts/Makefile.build:249: recipe for target 'drivers/usb/core/usb.o'
> failed
> make[3]: *** [drivers/usb/core/usb.o] Error 1
> scripts/Makefile.build:387: recipe for target 'drivers/usb/core' failed
> make[2]: *** [drivers/usb/core] Error 2
> scripts/Makefile.build:387: recipe for target 'drivers/usb' failed
> make[1]: *** [drivers/usb] Error 2
> Makefile:770: recipe for target 'drivers' failed
> make: *** [drivers] Error 2
> 
> see also
> 
> commit 245069bcef15ecc19db616a967501349b76c84d0
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Thu Jul 10 11:36:12 2014 +0200
> 
>     USB: introduce usb_interface/usb_configuration structs
> 
>     Currently we have two conflicting definitions of struct
> usb_config_descriptor
>     and struct usb_interface_descriptor in the tree. This is because the
> USB code
>     uses additional fields in the structs for internal housekeeping. Add
>     struct usb_interface and struct struct usb_configuration with the
> housekeeping
>     data and embed the corresponding hardware structs into them. This
> frees the
>     way to use the definitions from ch9.h in the next step.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/usb/core/usb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 9073fff..f8d6014 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -191,7 +191,7 @@ static int usb_parse_config(struct usb_device *dev, unsigned char *buffer, int c
>  		return -1;
>  	}
>  	memcpy(&dev->config, buffer, buffer[0]);
> -	le16_to_cpus(&(dev->config.wTotalLength));
> +	le16_to_cpus(&(dev->config.desc.wTotalLength));
>  	dev->config.no_of_if = 0;


What's WIP in this patch? It looks 100% correct.

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

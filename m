Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UShtK-0004ag-OB
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 06:00:19 +0000
Date: Thu, 18 Apr 2013 08:00:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130418060017.GZ1906@pengutronix.de>
References: <1366133769-14022-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366133769-14022-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Remove unimplemented usb_driver_unregister declaration
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Apr 16, 2013 at 09:36:09PM +0400, Alexander Shiyan wrote:
> We do not have usb_driver_unregister function, so remove this declaration.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  include/usb/usb.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/usb/usb.h b/include/usb/usb.h
> index afccf70..b270012 100644
> --- a/include/usb/usb.h
> +++ b/include/usb/usb.h
> @@ -196,7 +196,6 @@ struct usb_driver {
>  extern struct bus_type usb_bus_type;
>  
>  int usb_driver_register(struct usb_driver *);
> -int usb_driver_unregister(struct usb_driver *);
>  
>  struct usb_host {
>  	int (*init)(struct usb_host *);
> -- 
> 1.8.1.5
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

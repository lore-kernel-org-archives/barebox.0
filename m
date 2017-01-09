Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQVU4-0003FD-SW
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 08:39:18 +0000
Date: Mon, 9 Jan 2017 09:38:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109083855.f2vxmkmtlczdv62t@pengutronix.de>
References: <1482938984.1946.1.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1482938984.1946.1.camel@googlemail.com>
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
Subject: Re: [PATCH] USB: host: hub: increase delay after device removal
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

Hi Christoph,

On Wed, Dec 28, 2016 at 04:29:44PM +0100, Christoph Fritz wrote:
> This patch increases delay time for slow hubs after device removal.

Could you spent a few words what happens without this patch, i.e. how
the symptons look and which hardware you observed that? Without this
information it will be very hard to ever change this line again.

Sascha

> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  drivers/usb/core/hub.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
> index f44aea5..0854e3a 100644
> --- a/drivers/usb/core/hub.c
> +++ b/drivers/usb/core/hub.c
> @@ -201,7 +201,7 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
>  	if (dev->children[port] && !(portstatus & USB_PORT_STAT_ENABLE))
>  		usb_remove_device(dev->children[port]);
>  
> -	mdelay(200);
> +	mdelay(500);
>  
>  	/* Reset the port */
>  	if (hub_port_reset(dev, port, &portstatus) < 0) {
> -- 
> 2.1.4
> 
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

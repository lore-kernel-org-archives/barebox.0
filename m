Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDonP-0007JJ-Lk
 for barebox@lists.infradead.org; Wed, 02 May 2018 10:15:37 +0000
Date: Wed, 2 May 2018 12:15:22 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20180502101522.socnzxrz3d37frgf@pengutronix.de>
References: <216a62f9-5450-5ed6-945f-b3d26d65ae3e@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <216a62f9-5450-5ed6-945f-b3d26d65ae3e@cogentembedded.com>
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
Subject: Re: [PATCH] usbnet: increase bulk message timeout
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Chris Healy <cphealy@gmail.com>, barebox@lists.infradead.org

On Thu, Apr 26, 2018 at 04:02:48PM +0300, Nikita Yushchenko wrote:
> Timeout of 1ms is too low for case when device operates in Full Speed
> mode. This causes most incoming frames to be lost.
> 
> Since timeout is only used to get out of polling loop in case of no
> response from hardware, increasing it should be safe for all platforms.
> 
> Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
> Tested-By: Andrew Lunn <andrew@lunn.ch>
> ---

Applied, thanks.

The patch is whitespace damaged, I fixed this up manually this time.

Sascha

>  drivers/net/usb/usbnet.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
> index 33d900b70..60e67ff1a 100644
> --- a/drivers/net/usb/usbnet.c
> +++ b/drivers/net/usb/usbnet.c
> @@ -125,7 +125,7 @@ static int usbnet_recv(struct eth_device *edev)
>   	len = dev->rx_urb_size;
>  -	ret = usb_bulk_msg(dev->udev, dev->in, rx_buf, len, &alen, 1);
> +	ret = usb_bulk_msg(dev->udev, dev->in, rx_buf, len, &alen, 100);
>  	if (ret)
>  		return ret;
>  -- 2.11.0
> 
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

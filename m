Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0lh0-0001J0-7Z
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 07:37:42 +0000
Date: Mon, 23 Nov 2015 08:37:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151123073723.GV11966@pengutronix.de>
References: <1448221792-14823-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448221792-14823-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: usb: asix: fix 'no previous prototype' warning
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 22, 2015 at 10:49:52PM +0300, Antony Pavlov wrote:
> Here is the warning message:
> 
>     drivers/net/usb/asix.c:427:5: warning: no previous prototype for 'asix_rx_fixup_internal' [-Wmissing-prototypes]
>      int asix_rx_fixup_internal(struct usbnet *dev, void *buf, int len,
>          ^
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/net/usb/asix.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
> index ff80398..3ca27ff 100644
> --- a/drivers/net/usb/asix.c
> +++ b/drivers/net/usb/asix.c
> @@ -424,7 +424,7 @@ static int ax88172_get_ethaddr(struct eth_device *edev, unsigned char *adr)
>  	return 0;
>  }
>  
> -int asix_rx_fixup_internal(struct usbnet *dev, void *buf, int len,
> +static int asix_rx_fixup_internal(struct usbnet *dev, void *buf, int len,
>  			   struct asix_rx_fixup_info *rx)
>  {
>  	int offset = 0;
> -- 
> 2.6.2
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

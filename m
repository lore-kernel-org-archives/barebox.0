Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wcu3A-0003ho-4R
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 10:05:08 +0000
Date: Wed, 23 Apr 2014 12:04:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423100446.GN5858@pengutronix.de>
References: <1397189982-31677-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397189982-31677-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: usb: asix: fix formating
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 11, 2014 at 08:19:42AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/net/usb/asix.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
> index 37057a7..2145d3f 100644
> --- a/drivers/net/usb/asix.c
> +++ b/drivers/net/usb/asix.c
> @@ -286,7 +286,7 @@ static int asix_sw_reset(struct usbnet *dev, u8 flags)
>  {
>  	int ret;
>  
> -        ret = asix_write_cmd(dev, AX_CMD_SW_RESET, flags, 0, 0, NULL);
> +	ret = asix_write_cmd(dev, AX_CMD_SW_RESET, flags, 0, 0, NULL);
>  	if (ret < 0)
>  		dev_err(&dev->edev.dev, "Failed to send software reset: %02x\n", ret);
>  
> @@ -453,8 +453,8 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
>  }
>  
>  static int asix_tx_fixup(struct usbnet *dev,
> -                                void *buf, int len,
> -                                void *nbuf, int *nlen)
> +				void *buf, int len,
> +				void *nbuf, int *nlen)
>  {
>  	unsigned int packet_len;
>  
> @@ -696,10 +696,10 @@ static struct driver_info ax88772b_info = {
>  	.description = "ASIX AX88772B USB 2.0 Ethernet",
>  	.bind = ax88772_bind,
>  	.unbind = asix_unbind,
> -        .flags = FLAG_ETHER | FLAG_FRAMING_AX,
> -        .rx_fixup = asix_rx_fixup,
> -        .tx_fixup = asix_tx_fixup,
> -        .data = FLAG_EEPROM_MAC,
> +	.flags = FLAG_ETHER | FLAG_FRAMING_AX,
> +	.rx_fixup = asix_rx_fixup,
> +	.tx_fixup = asix_tx_fixup,
> +	.data = FLAG_EEPROM_MAC,
>  };
>  
>  static const struct usb_device_id products [] = {
> @@ -800,7 +800,6 @@ static struct usb_driver asix_driver = {
>  
>  static int __init asix_init(void)
>  {
> - 	return usb_driver_register(&asix_driver);
> +	return usb_driver_register(&asix_driver);
>  }
>  device_initcall(asix_init);
> -
> -- 
> 1.9.0
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

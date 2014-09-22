Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XVven-0003gL-Dx
 for barebox@lists.infradead.org; Mon, 22 Sep 2014 04:55:26 +0000
Date: Mon, 22 Sep 2014 06:54:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140922045458.GJ4992@pengutronix.de>
References: <1410874316-13407-1-git-send-email-embedded24@evers-fischer.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410874316-13407-1-git-send-email-embedded24@evers-fischer.de>
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
Subject: Re: [PATCH] net: asix: handle packets crossing URB boundaries
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 16, 2014 at 03:31:56PM +0200, Rolf Evers-Fischer wrote:
> From: Lucas Stach <dev@lynxeye.de>
> 
> ASIX AX88772B started to pack data even more tightly. Packets and the ASIX packet
> header may now cross URB boundaries. To handle this we have to introduce
> some state between individual calls to asix_rx_fixup().
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> Signed-off-by: David S. Miller <davem@davemloft.net>
> [ Rolf: ported from kernel to barebox 2014.09.0 ]
> Signed-off-by: Rolf Evers-Fischer <embedded24@evers-fischer.de>

Applied, thanks

Sascha

> ---
>  drivers/net/usb/asix.c | 123 ++++++++++++++++++++++++++++++++++++-------------
>  1 file changed, 91 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
> index d6ac322..14a8c76 100644
> --- a/drivers/net/usb/asix.c
> +++ b/drivers/net/usb/asix.c
> @@ -7,6 +7,7 @@
>  #include <errno.h>
>  #include <malloc.h>
>  #include <asm/byteorder.h>
> +#include <asm/unaligned.h>
>  
>  /* ASIX AX8817X based USB 2.0 Ethernet Devices */
>  
> @@ -134,6 +135,8 @@
>  
>  #define FLAG_EEPROM_MAC		(1UL << 0) /* init device MAC from eeprom */
>  
> +#define RX_FIXUP_SIZE	1514
> +
>  /* This structure cannot exceed sizeof(unsigned long [5]) AKA 20 bytes */
>  struct asix_data {
>  	u8 multi_filter[AX_MCAST_FILTER_SIZE];
> @@ -150,6 +153,18 @@ struct ax88172_int_data {
>  	__le16 res3;
>  } __attribute__ ((packed));
>  
> +struct asix_rx_fixup_info {
> +	u32 header;
> +	u16 size;
> +	u16 offset;
> +	bool split_head;
> +	unsigned char ax_skb[RX_FIXUP_SIZE];
> +};
> +
> +struct asix_common_private {
> +	struct asix_rx_fixup_info rx_fixup_info;
> +};
> +
>  static int asix_read_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
>  			    u16 size, void *data)
>  {
> @@ -409,49 +424,87 @@ static int ax88172_get_ethaddr(struct eth_device *edev, unsigned char *adr)
>  	return 0;
>  }
>  
> -static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
> +int asix_rx_fixup_internal(struct usbnet *dev, void *buf, int len,
> +			   struct asix_rx_fixup_info *rx)
>  {
> -	unsigned int header;
> -	unsigned short size;
> -
> -	memcpy(&header, (void*) buf, sizeof(header));
> -	le32_to_cpus(&header);
> -	buf += 4;
> -	len -= 4;
> -
> -	while (len > 0) {
> -		if ((header & 0x07ff) != ((~header >> 16) & 0x07ff))
> -			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad Header Length\n");
> -
> -		/* get the packet length */
> -		size = (unsigned short) (header & 0x07ff);
> -
> -		if (size > 1514) {
> -			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad RX Length %d\n", size);
> -			return 0;
> +	int offset = 0;
> +
> +	while (offset + sizeof(u16) < len) {
> +		u16 remaining = 0;
> +
> +		if (!rx->size) {
> +			if ((len - offset == sizeof(u16)) ||
> +			    rx->split_head) {
> +				if (!rx->split_head) {
> +					rx->header = get_unaligned_le16(
> +							buf + offset);
> +					rx->split_head = true;
> +					offset += sizeof(u16);
> +					break;
> +				} else {
> +					rx->header |= (get_unaligned_le16(
> +							buf + offset)
> +							<< 16);
> +					rx->split_head = false;
> +					offset += sizeof(u16);
> +				}
> +			} else {
> +				rx->header = get_unaligned_le32(buf +
> +								offset);
> +				offset += sizeof(u32);
> +			}
> +			rx->offset = 0U;
> +
> +			/* get the packet length */
> +			rx->size = (u16) (rx->header & 0x7ff);
> +			if (rx->size != ((~rx->header >> 16) & 0x7ff)) {
> +				dev_err(&dev->edev.dev, "asix_rx_fixup() Bad Header Length 0x%x, offset %d\n",
> +					   rx->header, offset);
> +				rx->size = 0;
> +				return -1;
> +			}
>  		}
> +		if (rx->size > RX_FIXUP_SIZE) {
> +			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad RX Length %d\n",
> +				   rx->size);
> +			rx->offset = 0U;
> +			rx->size = 0U;
>  
> -		net_receive(&dev->edev, buf, size);
> +			return -1;
> +		}
>  
> -		buf += ((size + 1) & 0xfffe);
> -		len -= ((size + 1) & 0xfffe);
> +		if (rx->size > (len - offset)) {
> +			remaining = rx->size - (len - offset);
> +			rx->size = len - offset;
> +		}
>  
> -		if (len == 0)
> -			break;
> +		memcpy(rx->ax_skb + rx->offset, buf + offset, rx->size);
> +		rx->offset += rx->size;
> +		if (!remaining)
> +			net_receive(&dev->edev, rx->ax_skb,
> +						(u16) (rx->header & 0x7ff));
>  
> -		memcpy(&header, (void*) buf, sizeof(header));
> -		le32_to_cpus(&header);
> -		buf += 4;
> -		len -= 4;
> +		offset += ((rx->size + 1) & 0xfffe);
> +		rx->size = remaining;
>  	}
>  
> -	if (len < 0) {
> -		dev_err(&dev->edev.dev,"asix_rx_fixup() Bad SKB Length %d\n", len);
> +	if (len != offset) {
> +		dev_err(&dev->edev.dev, "asix_rx_fixup() Bad SKB Length %d, %d\n",
> +			   len, offset);
>  		return -1;
>  	}
> +
>  	return 0;
>  }
>  
> +static int asix_rx_fixup_common(struct usbnet *dev, void *buf, int len)
> +{
> +	struct asix_common_private *dp = dev->driver_priv;
> +	struct asix_rx_fixup_info *rx = &dp->rx_fixup_info;
> +
> +	return asix_rx_fixup_internal(dev, buf, len, rx);
> +}
> +
>  static int asix_tx_fixup(struct usbnet *dev,
>  				void *buf, int len,
>  				void *nbuf, int *nlen)
> @@ -632,6 +685,11 @@ static int ax88772_bind(struct usbnet *dev)
>  		dev->rx_urb_size = 2048;
>  	}
>  
> +	dev->driver_priv = kzalloc(sizeof(struct asix_common_private),
> +				GFP_KERNEL);
> +	if (!dev->driver_priv)
> +		return -ENOMEM;
> +
>  	return 0;
>  
>  out:
> @@ -641,6 +699,7 @@ out:
>  static void asix_unbind(struct usbnet *dev)
>  {
>  	mdiobus_unregister(&dev->miibus);
> +	kfree(dev->driver_priv);
>  }
>  
>  static struct driver_info ax8817x_info = {
> @@ -688,7 +747,7 @@ static struct driver_info ax88772_info = {
>  	.bind = ax88772_bind,
>  	.unbind = asix_unbind,
>  	.flags = FLAG_ETHER | FLAG_FRAMING_AX,
> -	.rx_fixup = asix_rx_fixup,
> +	.rx_fixup = asix_rx_fixup_common,
>  	.tx_fixup = asix_tx_fixup,
>  };
>  
> @@ -697,7 +756,7 @@ static struct driver_info ax88772b_info = {
>  	.bind = ax88772_bind,
>  	.unbind = asix_unbind,
>  	.flags = FLAG_ETHER | FLAG_FRAMING_AX,
> -	.rx_fixup = asix_rx_fixup,
> +	.rx_fixup = asix_rx_fixup_common,
>  	.tx_fixup = asix_tx_fixup,
>  	.data = FLAG_EEPROM_MAC,
>  };
> -- 
> 1.9.1
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

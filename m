Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZTnRd-0007iA-U3
 for barebox@lists.infradead.org; Mon, 24 Aug 2015 08:49:34 +0000
Date: Mon, 24 Aug 2015 10:49:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150824084910.GG18700@pengutronix.de>
References: <1440084138-3116-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440084138-3116-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH] RFC: include/usb/ch9.h: pad usb_endpoint_descriptor with
 1 byte
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 20, 2015 at 06:22:18PM +0300, Peter Mamonov wrote:
> This patch fixes "Ooops, address error on load or ifetch!",
> caused by "usb" command on MIPS architecture.
> 
> To reproduce the problem follow the following steps:
> 
> 1. Build barebox for MIPS target with -O0 optimization flag:
> 
> diff --git a/Makefile b/Makefile
> index 5a7fd5f..da9a8be 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -301,7 +301,7 @@ CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffre
> 
>  CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
>                     -Werror-implicit-function-declaration \
> -                   -fno-strict-aliasing -fno-common -Os -pipe
> +                   -fno-strict-aliasing -fno-common -O0 -pipe
>  AFLAGS          := -D__ASSEMBLY__
> 
>  LDFLAGS_barebox        := -Map barebox.map
> 
> 2. Plug in a usb flash drive.
> 
> 3. Run the "usb" command:
> 
> 	barebox@QEMU DUNA:/ usb -s
> 	USB: scanning bus for devices...
> 	&(dev->config.interface[0].ep_desc[0].wMaxPacketSize) = a042732a
> 	Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> 	&(dev->config.interface[0].ep_desc[0].wMaxPacketSize) = a0429f02
> 	&(dev->config.interface[0].ep_desc[1].wMaxPacketSize) = a0429f0b
> 
> 	Ooops, address error on load or ifetch!
> 
> 	$ 0   : 00000000 00000000 a0429f0b a0429de4
> 	$ 4   : 00000000 0000000a 00000000 000687e0
> 	$ 8   : 00000000 00000000 00000000 fa000000
> 	$12   : 00000001 00000004 00000000 00000000
> 	$16   : 00000000 00000000 00000000 00000000
> 	$20   : 00000000 00000000 00000000 00000000
> 	$24   : 00000000 00000000
> 	$28   : 00000000 a03ffb40 a03ffb40 a082e9f4
> 	Hi    : 00000000
> 	Lo    : 00000000
> 	epc   : a082ea38
> 	ra    : a082e9f4
> 	Status: b4000002
> 	Cause : 00008010
> 	Config: 88d0c083
> 
> 	### ERROR ### Please RESET the board ###
> 
> The source of the error is the following line of code from the usb_parse_config() function:
> 
> 			le16_to_cpus(&(dev->config.interface[ifno].ep_desc[epno].\
> 							       wMaxPacketSize));
> 
> Which tries to load half-word from an un-aligned address 0xa0429f0b stored in v0:
> 
> a082ea38:       94420000        lhu     v0,0(v0)
> 
> 0xa0429f0b is an address of wMaxPacketSize member of a struct usb_endpoint_descriptor at offset 4:
> 
> struct usb_endpoint_descriptor {
> 	__u8  bLength;
> 	__u8  bDescriptorType;
> 	__u8  bEndpointAddress;
> 	__u8  bmAttributes;
> 	__le16 wMaxPacketSize;
> 	__u8  bInterval;
> 	__u8  bRefresh;
> 	__u8  bSynchAddress;
> } __attribute__ ((packed));
> 
> The instances of the usb_endpoint_descriptor are stored in a "ep_desc" array:
> 
> struct usb_interface {
> 	...
> 	struct usb_endpoint_descriptor ep_desc[USB_MAXENDPOINTS];
> };
> 
> Since the size of the usb_endpoint_descriptor is odd (9 bytes),
> the second element of the ep_desc array is un-aligned,
> as well as it's member wMaxPacketSize:
> 
> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> &(dev->config.interface[0].ep_desc[0].wMaxPacketSize) = a0429f02
> &(dev->config.interface[0].ep_desc[1].wMaxPacketSize) = a0429f0b
> 
> A possible fix to this problem is to make the size of the usb_endpoint_descriptor even.
> ---
>  include/usb/ch9.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/usb/ch9.h b/include/usb/ch9.h
> index ab5d531..5b261e6 100644
> --- a/include/usb/ch9.h
> +++ b/include/usb/ch9.h
> @@ -379,6 +379,7 @@ struct usb_endpoint_descriptor {
>  	/* use USB_DT_ENDPOINT*_SIZE in bLength, not sizeof. */
>  	__u8  bRefresh;
>  	__u8  bSynchAddress;
> +	__u8  fill;
>  } __attribute__ ((packed));

This doesn't look very nice since we modify a ch9 defined struct just for
the sake of using it in an array somewhere else. We can fix it like
this, but please add a comment why we need this.

Another way to fix this would be to embed struct usb_endpoint_descriptor
in another struct and use that one in an array, like this:

struct usb_endpoint {
	struct usb_endpoint_descriptor desc;
};

struct usb_configuration {
	...
	struct usb_endpoint ep_desc[USB_MAXENDPOINTS];
};

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

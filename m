Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEdY-0005ru-Hd
 for barebox@lists.infradead.org; Fri, 20 Sep 2019 08:51:34 +0000
References: <20190920075813.22471-1-ahmad@a3f.at>
 <20190920075813.22471-4-ahmad@a3f.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ef9d7f48-944c-62e7-2dc0-76b2e97451da@pengutronix.de>
Date: Fri, 20 Sep 2019 10:51:27 +0200
MIME-Version: 1.0
In-Reply-To: <20190920075813.22471-4-ahmad@a3f.at>
Content-Language: en-US
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
Subject: Re: [PATCH v1 4/4] USB: gadget: ACM: don't announce V.25ter support
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org
Cc: bst@pengutronix.de

On 9/20/19 9:58 AM, Ahmad Fatoum wrote:
> barebox currently announces support for ITU V.25ter AT commands, but
> doesn't handle them specially when they arrive. Instead they are passed
> as is to the sole barebox input console, where it may interfere with
> valid user input.
> This is especially annoying as ModemManager probes ttyACM devices that
> announce their AT command support. So even when not using the ttyACM
> device at all, the other UART ports are affected.
> 
> Fix this by ceasing to announce USB_CDC_ACM_PROTO_AT_V25TER as function
> protocol. After applying this patch, I can't see any spurious AT or ~x~
> symbols on the console anymore.

I've also looked into the possibility of barebox emulating a USB-Serial
port and showing up as a ttyUSB device under Linux.
Apparently the two most popular chips are FTDI's and Prolific's, but both
have taken steps in the past to make their Windows drivers not work with
cloned chips[1][2]. I figured the safest to emulate would be the chip
used safely in these Chinese Arduino Knock-offs because they're so prevalent
and stumbled upon the CH340. Its drivers are mainline for Linux, but for other
platforms, they need to be downloaded manually.

Seeing that the change to 'fix' barebox ttyACM is just two lines, I settled
for that instead. It might be possible to get rid of the control interface
descriptor altogether, but I don't know whether it would impact the portability
across operating systems, so I've opted for this less invasive patch.
Only tested on Linux v5.2 so far.

Cheers
Ahmad

[1]: https://hackaday.com/2016/02/01/ftdi-drivers-break-fake-chips-again/
[2]: https://www.eevblog.com/forum/reviews/ftdi-driver-kills-fake-ftdi-ft232/msg534439/#msg534439

> 
> Cc: <bst@pengutronix.de>
> Cc: <jlu@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/usb/gadget/f_acm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/f_acm.c b/drivers/usb/gadget/f_acm.c
> index cba59b15859b..42a2b03ad291 100644
> --- a/drivers/usb/gadget/f_acm.c
> +++ b/drivers/usb/gadget/f_acm.c
> @@ -104,7 +104,7 @@ acm_iad_descriptor = {
>  	.bInterfaceCount = 	2,	// control + data
>  	.bFunctionClass =	USB_CLASS_COMM,
>  	.bFunctionSubClass =	USB_CDC_SUBCLASS_ACM,
> -	.bFunctionProtocol =	USB_CDC_ACM_PROTO_AT_V25TER,
> +	.bFunctionProtocol =	USB_CDC_PROTO_NONE,
>  	/* .iFunction =		DYNAMIC */
>  };
>  
> @@ -116,7 +116,7 @@ static struct usb_interface_descriptor acm_control_interface_desc = {
>  	.bNumEndpoints =	1,
>  	.bInterfaceClass =	USB_CLASS_COMM,
>  	.bInterfaceSubClass =	USB_CDC_SUBCLASS_ACM,
> -	.bInterfaceProtocol =	USB_CDC_ACM_PROTO_AT_V25TER,
> +	.bInterfaceProtocol =	USB_CDC_PROTO_NONE,
>  	/* .iInterface = DYNAMIC */
>  };
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

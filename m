Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y85BN-0004Fl-GW
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 10:46:46 +0000
Date: Mon, 5 Jan 2015 11:46:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105104623.GO30369@pengutronix.de>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
 <1419358918-25569-8-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1419358918-25569-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 8/9] console: allow to specify the device id
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 23, 2014 at 07:21:57PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can use dynamic number id with specific devname
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/console.c              | 2 +-
>  drivers/usb/gadget/u_serial.c | 1 +
>  include/console.h             | 1 +
>  3 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/common/console.c b/common/console.c
> index bba13a5..602ab2e 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -188,7 +188,7 @@ int console_register(struct console_device *newcdev)
>  		console_init_early();
>  
>  	if (newcdev->devname) {
> -		dev->id = DEVICE_ID_SINGLE;
> +		dev->id = newcdev->devid;
>  		strcpy(dev->name, newcdev->devname);
>  	} else {
>  		dev->id = DEVICE_ID_DYNAMIC;
> diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
> index 8c58746..1e5e809 100644
> --- a/drivers/usb/gadget/u_serial.c
> +++ b/drivers/usb/gadget/u_serial.c
> @@ -530,6 +530,7 @@ int gserial_connect(struct gserial *gser, u8 port_num)
>  	cdev->flush = serial_flush;
>  	cdev->setbrg = serial_setbaudrate;
>  	cdev->devname = "usbserial";
> +	cdev->devid = DEVICE_ID_SINGLE;

The same is needed in drivers/serial/serial_imx.c

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

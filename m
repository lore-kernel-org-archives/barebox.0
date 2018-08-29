Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuv5M-0006uq-LA
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 07:40:18 +0000
Date: Wed, 29 Aug 2018 09:40:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180829074004.3qjhuzdlcxauitnw@pengutronix.de>
References: <20180829063333.31026-1-andrew.smirnov@gmail.com>
 <20180829063333.31026-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180829063333.31026-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/2] USB: host: hub: Adjust device speed after every port
 reset
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 28, 2018 at 11:33:33PM -0700, Andrey Smirnov wrote:
> To account for the possibility of a device coming out of second reset
> operating at different speed compared to first, move the code that
> stores device speed to be a part of hub_port_reset(). This way any
> speed change happening as a result of port reset could be accounted
> for.
> 
> The above behaviour was observed on i.MX51 ZII RDU1, on USBH2 port
> connected to SMSC2660 USB Hub/SD card reader. For reasons unclear,
> first reset would put it into Full Speed mode whereas second would
> result in switch to High Speed. Artifically disabling second reset
> would result in the device operating at Full Speed.
> 
> Not doing second speed adjustement on that board result would result
> in un-processed control transfer and failure to execute
> usb_set_address().
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/usb/core/hub.c | 54 +++++++++++++++++++++---------------------
>  drivers/usb/core/hub.h |  4 ++--
>  drivers/usb/core/usb.c |  3 +--
>  3 files changed, 30 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
> index 70f633ed8..39e5fe67d 100644
> --- a/drivers/usb/core/hub.c
> +++ b/drivers/usb/core/hub.c
> @@ -112,32 +112,31 @@ static inline char *portspeed(int portstatus)
>  		return "12 Mb/s";
>  }
>  
> -int hub_port_reset(struct usb_device *dev, int port,
> -			unsigned short *portstat)
> +int hub_port_reset(struct usb_device *hub, int port, struct usb_device *usb)
>  {

I created a separate patch from the renaming from "dev" to "hub" and
applied this series. Thanks

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

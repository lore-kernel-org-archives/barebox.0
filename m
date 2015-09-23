Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zekxo-00027z-5s
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 14:24:05 +0000
Date: Wed, 23 Sep 2015 16:23:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150923142340.GV7858@pengutronix.de>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
 <1442937514-19675-4-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442937514-19675-4-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH 3/5] usb: ehci-hcd: detect re-entrance
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 22, 2015 at 06:58:32PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/usb/host/ehci-hcd.c | 38 ++++++++++++++++++++++++++++++++++----
>  1 file changed, 34 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index e6748b0..d6df7b8 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -51,6 +51,8 @@ struct ehci_priv {
>  	int periodic_schedules;
>  	struct QH *periodic_queue;
>  	uint32_t *periodic_list;
> +	int sem;
> +	struct device_d *usedby;
>  };
>  
>  struct int_queue {
> @@ -136,6 +138,16 @@ static struct descriptor {
>  
>  #define ehci_is_TDI()	(ehci->flags & EHCI_HAS_TT)
>  
> +#define ehci_reentrance_detect(ehci) \
> +	if (ehci->sem) \
> +		dev_err(&dev->dev, "%s: re-entrance %d (%s:%s)\n", \
> +			__func__, \
> +			ehci->sem, \
> +			ehci->usedby->driver->name, \
> +			ehci->usedby->name); \
> +	ehci->sem++; \
> +	ehci->usedby = &dev->dev;

This should be a static inline function rather than a define. You can
pass the function name as const char *.

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

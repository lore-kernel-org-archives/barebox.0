Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abjuI-00055P-Kl
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 07:12:15 +0000
Date: Fri, 4 Mar 2016 08:11:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160304071152.GC21869@pengutronix.de>
References: <1457009332-27205-1-git-send-email-rndfax@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457009332-27205-1-git-send-email-rndfax@yandex.ru>
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
Subject: Re: [PATCH] ehci-hcd: remove useless timeout
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

Hi Aleksey,

On Thu, Mar 03, 2016 at 03:48:52PM +0300, Aleksey Kuleshov wrote:
> ---
>  drivers/usb/host/ehci-hcd.c | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 862444b..9327015 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -1189,7 +1189,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
>  	struct usb_host *host = dev->host;
>  	struct ehci_priv *ehci = to_ehci(host);
>  	struct QH *cur = ehci->periodic_queue;
> -	uint64_t start;
>  
>  	if (disable_periodic(ehci) < 0) {
>  		dev_err(&dev->dev,
> @@ -1198,7 +1197,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
>  	}
>  	ehci->periodic_schedules--;
>  
> -	start = get_time_ns();
>  	while (!(cur->qh_link & cpu_to_hc32(QH_LINK_TERMINATE))) {
>  		dev_dbg(&dev->dev,
>  			"considering %p, with qh_link %x\n",
> @@ -1211,12 +1209,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
>  			break;
>  		}
>  		cur = NEXT_QH(cur);
> -		if (is_timeout_non_interruptible(start, 500 * MSECOND)) {
> -			dev_err(&dev->dev,
> -				"Timeout destroying interrupt endpoint queue\n");
> -			result = -ETIMEDOUT;
> -			goto out;
> -		}

My first reaction was to ask you why you think that this timeout is
useless. Looking close at it I see that this is no register polling loop
but an iteration loop. Could you add a explanation to the commit log?

Also, like you other patches this one lacks a SoB. Please commit with
git commit -s.

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

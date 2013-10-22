Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYVqm-0003ok-Tu
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 06:53:57 +0000
Date: Tue, 22 Oct 2013 08:53:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131022065335.GI30088@pengutronix.de>
References: <1382343862-18098-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382343862-18098-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] USB: Check init/post_init errors
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Oct 21, 2013 at 12:24:22PM +0400, Alexander Shiyan wrote:
> Host with inoperable ULPI able to bring the system into an
> infinite loop. The patch adds error checking during initialization
> to avoid this.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/usb/host/ehci-hcd.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index cb6a592..2da3edd 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -748,6 +748,7 @@ static int ehci_init(struct usb_host *host)
>  	struct ehci_priv *ehci = to_ehci(host);
>  	uint32_t reg;
>  	uint32_t cmd;
> +	int ret = 0;
>  
>  	ehci_halt(ehci);
>  
> @@ -755,8 +756,11 @@ static int ehci_init(struct usb_host *host)
>  	if (ehci_reset(ehci) != 0)
>  		return -1;
>  
> -	if (ehci->init)
> -		ehci->init(ehci->drvdata);
> +	if (ehci->init) {
> +		ret = ehci->init(ehci->drvdata);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
>  	ehci->qh_list->qh_endpt1 = cpu_to_hc32((1 << 15) | (USB_SPEED_HIGH << 12));
> @@ -799,9 +803,9 @@ static int ehci_init(struct usb_host *host)
>  	ehci->rootdev = 0;
>  
>  	if (ehci->post_init)
> -		ehci->post_init(ehci->drvdata);
> +		ret = ehci->post_init(ehci->drvdata);
>  
> -	return 0;
> +	return ret;
>  }
>  
>  static int
> -- 
> 1.8.1.5
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

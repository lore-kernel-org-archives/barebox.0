Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEpV6-0006Lq-A7
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 23:17:57 +0000
Date: Mon, 11 Mar 2013 00:17:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130310231754.GW1906@pengutronix.de>
References: <1362503468-11451-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362503468-11451-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] usb: chipidea-imx: Fix usb initialization
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Mar 05, 2013 at 09:11:08PM +0400, Alexander Shiyan wrote:
> This patch fix chipidea-imx usb initialization.
> "imx_chipidea_port_init" was moved before PORTSC setup in the
> commit "USB i.MX chipidea: implement post init support". This
> change breaks usb function with ULPI. Patch moves port initialization
> back after PORTSC setup, so it works again.

On which board are you working? The pcm038? This currently works for me
;)

> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/usb/imx/chipidea-imx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
> index 483484e..1570f90 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -73,13 +73,13 @@ static int imx_chipidea_probe(struct device_d *dev)
>  	data.post_init = imx_chipidea_port_post_init;
>  	data.drvdata = dev;
>  
> -	imx_chipidea_port_init(dev);
> -
>  	portsc = readl(base + 0x184);
>  	portsc &= ~MXC_EHCI_PORTSC_MASK;
>  	portsc |= pdata->flags & MXC_EHCI_PORTSC_MASK;
>  	writel(portsc, base + 0x184);
>  
> +	imx_chipidea_port_init(dev);
> +

Damn. I moved this to the current place also while working on ULPI, it
was the Efika MX Smartbook in this case. I would have to check if this
still works with this patch applied. I wish I'd know how to do this
setup correctly. This was a source of initialization order shuffeling in
the Kernel already.

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

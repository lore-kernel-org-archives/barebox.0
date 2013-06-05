Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f166.mail.ru ([94.100.178.85])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkDr1-0003oF-Bs
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 13:34:21 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 05 Jun 2013 17:33:55 +0400
Message-ID: <1370439235.553989759@f166.mail.ru>
In-Reply-To: <1370438768-13729-1-git-send-email-l.stach@pengutronix.de>
References: <1370438768-13729-1-git-send-email-l.stach@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gUmV2ZXJ0ICJ1c2I6IGNoaXBpZGVhLWlteDogRml4IHVz?=
 =?UTF-8?B?YiBpbml0aWFsaXphdGlvbiI=?=
To: =?UTF-8?B?THVjYXMgU3RhY2g=?= <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org



> This breaks HSIC and has no good justification why this would
> be needed for ULPI.
> 
> This reverts commit 2e7d66f526217f6ff3167e4580aecb9548a0de33.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/usb/imx/chipidea-imx.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
> index 928ebf3..4ee7610 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -148,13 +148,13 @@ static int imx_chipidea_probe(struct device_d *dev)
>  	ci->data.post_init = imx_chipidea_port_post_init;
>  	ci->data.drvdata = ci;
>  
> +	imx_chipidea_port_init(ci);
> +
>  	portsc = readl(base + 0x184);
>  	portsc &= ~MXC_EHCI_PORTSC_MASK;
>  	portsc |= ci->flags & MXC_EHCI_PORTSC_MASK;
>  	writel(portsc, base + 0x184);
>  
> -	imx_chipidea_port_init(ci);
> -
>  	if ((ci->flags & MXC_EHCI_PORTSC_MASK) == MXC_EHCI_MODE_ULPI) {
>  		dev_dbg(dev, "using ULPI phy\n");
>  		if (IS_ENABLED(CONFIG_USB_ULPI)) {

This order was be before driver rework. Unfortunately I can not check right now,
but when I test initial version, it was be a proper order, at least for pcm038 (imx27 module).

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

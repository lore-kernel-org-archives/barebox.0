Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1ROVTq-0004OC-JK
 for barebox@lists.infradead.org; Thu, 10 Nov 2011 14:19:51 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id C9197FFAB4F
 for <barebox@lists.infradead.org>; Thu, 10 Nov 2011 15:25:45 +0100 (CET)
Date: Thu, 10 Nov 2011 15:18:21 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111110141821.GG17366@game.jcrosoft.org>
References: <1320854621-633-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1320854621-633-1-git-send-email-h.feurstein@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] at91: add config option for ohci driver
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 17:03 Wed 09 Nov     , Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/usb/host/Kconfig  |    4 ++++
>  drivers/usb/host/Makefile |    2 +-
>  2 files changed, 5 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
> index 929eb89..96e09e2 100644
> --- a/drivers/usb/host/Kconfig
> +++ b/drivers/usb/host/Kconfig
> @@ -7,3 +7,7 @@ config USB_EHCI_OMAP
> 
>  config USB_OHCI
>  	bool "OHCI driver"
> +
> +config USB_OHCI_AT91
> +	depends on ARCH_AT91
> +	bool "AT91 OHCI driver"

> diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
> index 1c7e18f..00f5e24 100644
> --- a/drivers/usb/host/Makefile
> +++ b/drivers/usb/host/Makefile
> @@ -1,4 +1,4 @@
>  obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
>  obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
>  obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
> -obj-$(CONFIG_ARCH_AT91)		+= ohci-at91.o
> +obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
no need such config

 on AT91 you just need to enable the OCHI

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

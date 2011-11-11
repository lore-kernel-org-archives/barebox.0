Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1ROoe9-0007BM-Ld
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 10:47:46 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 8A76EFFA43F
 for <barebox@lists.infradead.org>; Fri, 11 Nov 2011 11:53:43 +0100 (CET)
Date: Fri, 11 Nov 2011 11:46:14 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111111104614.GC15318@game.jcrosoft.org>
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
Sacahs can you revert this one

there is no need to have any select for the user

if you enalbe the OHCI it must just enable it on AT91 directly otherwise you
have a OHCI enable but without driver

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

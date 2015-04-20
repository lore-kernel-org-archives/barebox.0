Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp07.smtpout.orange.fr ([80.12.242.129]
 helo=smtp.smtpout.orange.fr)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkJ9u-0005nS-A3
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 21:23:14 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
Date: Mon, 20 Apr 2015 23:22:33 +0200
In-Reply-To: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de> (Lucas
 Stach's message of "Mon, 20 Apr 2015 10:55:48 +0200")
Message-ID: <87y4lmze92.fsf@belgarion.home>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/5] usb: gadget: pxa27x: depend on right symbol
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Lucas Stach <l.stach@pengutronix.de> writes:

> Now that we also have PXA3XX support the dependency on
> ARCH_PXA is too broad for this driver.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/usb/gadget/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index 5d9158ffae9f..04847b4bf30a 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -25,7 +25,7 @@ config USB_GADGET_DRIVER_AT91
>  config USB_GADGET_DRIVER_PXA27X
>  	bool
>  	prompt "PXA27x gadget driver"
> -	depends on ARCH_PXA
> +	depends on ARCH_PXA2XX
ARCH_PXA27X please.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

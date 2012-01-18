Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RneS6-0002m2-1y
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 22:57:59 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 90E06FFB09F
 for <barebox@lists.infradead.org>; Wed, 18 Jan 2012 23:59:31 +0100 (CET)
Date: Wed, 18 Jan 2012 23:56:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120118225638.GJ25622@game.jcrosoft.org>
References: <1326917859-25058-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326917859-25058-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] usb/gadget: fix poller NPE in early polling
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On 21:17 Wed 18 Jan     , Robert Jarzmik wrote:
> The timings of the poller calling have changed, digging out
> a latent bug in pxa27x udc controller.
> The polling routine is called before the probe function is
> called, and the driver internal are not initialized at that
> time. This triggers a NULL pointer exception.
> 
> Fix it by adding an extra check.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  drivers/usb/gadget/pxa27x_udc.c |    5 ++++-
>  1 files changed, 4 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
> index d0dbee9..bde9e74 100644
> --- a/drivers/usb/gadget/pxa27x_udc.c
> +++ b/drivers/usb/gadget/pxa27x_udc.c
> @@ -1508,7 +1508,10 @@ static struct driver_d udc_driver = {
>  
>  static int pxa27x_udc_poller(struct poller_struct *poller)
>  {
> -	return usb_gadget_poll();
> +	if (the_controller)
> +		return usb_gadget_poll();
> +	else
> +		return 0;
>  }
instead of this register thee poll at the probe

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

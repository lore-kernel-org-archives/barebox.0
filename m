Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TLu1H-0002A5-B4
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 11:00:07 +0000
Received: from mail611.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0978ADC16A2
 for <barebox@lists.infradead.org>; Wed, 10 Oct 2012 13:06:32 +0200 (CEST)
Date: Wed, 10 Oct 2012 12:57:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121010105743.GA13639@game.jcrosoft.org>
References: <1349862240-1501-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349862240-1501-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] platform driver: Drop check for resource conflicts
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:44 Wed 10 Oct     , Sascha Hauer wrote:
> The check is wrong since it would have to check whether the
> new iomem region overlaps with an existing region. Checking
> for the base address only is not enough.
> Currently this is not possible because every device conflicts
> with the top iomem region which covers the whole address space.
> 
> This at least fixes the regression that devices whose memory region
> begins at 0x0 can no longer be succesfully registered.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/base/platform.c |   12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index 13b4620..ea4e37b 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -66,18 +66,6 @@ int platform_device_register(struct device_d *new_device)
>  {
>  	new_device->bus = &platform_bus;
>  
> -	if (new_device->resource) {
> -		struct device_d *dev;
> -
> -		bus_for_each_device(new_device->bus, dev) {
> -			if (!dev->resource)
> -				continue;
> -			if (dev->resource->start == new_device->resource->start) {
> -				return -EBUSY;
> -			}
> -		}
> -	}
> -
IIRC this break the dt probe no?

this break the arm and st hw atleast

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Um1lC-0001zK-26
 for barebox@lists.infradead.org; Mon, 10 Jun 2013 13:03:47 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 8F6D1104ED28
 for <barebox@lists.infradead.org>; Mon, 10 Jun 2013 15:03:21 +0200 (CEST)
Date: Mon, 10 Jun 2013 14:59:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130610125915.GF27130@game.jcrosoft.org>
References: <1370806993-28524-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370806993-28524-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] console: fix new console registration
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On 21:43 Sun 09 Jun     , Steffen Trumtrar wrote:
> The console_register-function gets the baudrate from a kconfig parameter and
> sets the console accordingly, if a setbrg function is registered.
> Add the missing call to setbrg on the newly registered console to actually
> use the baudrate setting.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  common/console.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/console.c b/common/console.c
> index a0a06f6..abf5322 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -147,6 +147,7 @@ int console_register(struct console_device *newcdev)
>  		newcdev->baudrate = CONFIG_BAUDRATE;
>  		dev_add_param_int(dev, "baudrate", console_baudrate_set,
>  			NULL, &newcdev->baudrate, "%u", newcdev);
> +		newcdev->setbrg(newcdev, newcdev->baudrate);
this need to be done at the enable not the register

Best Regards,
J.
>  	}
>  
>  	dev_add_param(dev, "active", console_std_set, NULL, 0);
> -- 
> 1.8.2.rc2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

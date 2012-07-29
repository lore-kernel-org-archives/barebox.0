Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SvQHA-0006H5-U2
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 09:59:05 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id CE014FF9299
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 12:05:02 +0200 (CEST)
Date: Sun, 29 Jul 2012 11:59:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120729095903.GC26655@game.jcrosoft.org>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
 <1343547714-32740-5-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343547714-32740-5-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 4/7] i2c: device id default to -1 for auto assignment
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On 17:41 Sun 29 Jul     , Marc Reilly wrote:
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  drivers/i2c/i2c.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 15f5507..c0d8fa2 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -251,6 +251,7 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
>  	strcpy(client->dev.name, chip->type);
>  	client->dev.type_data = client;
>  	client->dev.platform_data = chip->platform_data;
> +	client->dev.id = -1;
use the macro DEVICE_ID_DYNAMIC

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeYcy-0002lc-Ll
 for barebox@lists.infradead.org; Mon, 20 May 2013 22:32:25 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E3667FF855C
 for <barebox@lists.infradead.org>; Tue, 21 May 2013 00:32:00 +0200 (CEST)
Date: Tue, 21 May 2013 00:27:47 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130520222747.GB27130@game.jcrosoft.org>
References: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
 <1369080684-11138-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369080684-11138-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [SPAM] [PATCH 3/5] i2c: Add support for dynamic i2c bus numbers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:11 Mon 20 May     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/i2c/i2c.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 53a11fe..ddf0082 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -384,8 +384,17 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  {
>  	int ret;
>  
> -	if (i2c_get_adapter(adapter->nr))
> -		return -EBUSY;
> +	if (adapter->nr < 0) {
> +		int nr;
> +
> +		for (nr = 0;; nr++)
> +			if (!i2c_get_adapter(nr))
> +				break;
> +		adapter->nr = nr;
> +	} else {
> +		if (i2c_get_adapter(adapter->nr))
> +			return -EBUSY;
> +	}

I send a patch exactly the same on spi and you refuse it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RYHSq-00060B-Cw
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 13:23:13 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 653F01054A53
 for <barebox@lists.infradead.org>; Wed,  7 Dec 2011 14:23:20 +0100 (CET)
Date: Wed, 7 Dec 2011 14:19:20 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111207131920.GB9044@game.jcrosoft.org>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
 <1323262387-8012-7-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323262387-8012-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 06/11] net macb: remove unused variable
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

HI,

	I send IIRC

Best Regards,
J.
On 13:53 Wed 07 Dec     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/macb.c |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index e1cfd85..d79da72 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -344,7 +344,6 @@ static int macb_phy_write(struct mii_device *mdev, int addr, int reg, int value)
>  	unsigned long netctl;
>  	unsigned long netstat;
>  	unsigned long frame;
> -	int iflag;
>  
>  	debug("%s\n", __func__);
>  
> -- 
> 1.7.7.3
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

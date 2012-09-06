Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9jzF-0002Fb-Gx
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 21:51:46 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7B87CFF88B8
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 23:59:23 +0200 (CEST)
Date: Thu, 6 Sep 2012 23:52:05 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120906215205.GL20330@game.jcrosoft.org>
References: <1346960309-3999-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346960309-3999-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] fec: restart autoneg at open instead of init
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 21:38 Thu 06 Sep     , Eric B=E9nard wrote:
> this saves some time during boot when ethernet is not needed in barebox
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
Wait I'm going to drop this to have the phy init only at the open of the net
on all drivers

Best Regards,
J.
>  drivers/net/fec_imx.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 599a9b4..2bc06a9 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -347,9 +347,6 @@ static int fec_init(struct eth_device *dev)
>  	/* size of each buffer */
>  	writel(FEC_MAX_PKT_SIZE, fec->regs + FEC_EMRBR);
>  =

> -	if (fec->xcv_type !=3D SEVENWIRE)
> -		miidev_restart_aneg(&fec->miidev);
> -
>  	return 0;
>  }
>  =

> @@ -363,6 +360,9 @@ static int fec_open(struct eth_device *edev)
>  	int ret;
>  	u32 ecr;
>  =

> +	if (fec->xcv_type !=3D SEVENWIRE)
> +		miidev_restart_aneg(&fec->miidev);
> +
>  	/*
>  	 * Initialize RxBD/TxBD rings
>  	 */
> -- =

> 1.7.7.6
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

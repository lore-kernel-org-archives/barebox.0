Delivery-date: Tue, 07 Dec 2021 10:13:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWXY-0007ve-0s
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:13:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWXW-0002Fb-0v
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:13:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8Wzl2dcpZ1qizt41lQR0QeWt6jrwLsUU39fVRzUdVjo=; b=FgrxnXOC+Bb5PD3FM32Cg+unOP
	KELQBErWqhbFDFHmFdDqqKbyy3xbmkKd8eG2WdQI6UfFM6OAw36Fo+H2942KTI8WlxrGufUG+yTul
	fy8O5jvsaB5W1KB+MkQtuctPEAa4nNxKdJbzqDx6v2i4JJ99mh1tKvNDQJHNDm1c5ezetub3Xd5t+
	BiRKwjP1776sxgXFxcdyIns+m1HltX9rB/Q5IRFN6GgUkTY2t+B5xfyT9+aBpwcQEbjZ3N+5zEUoJ
	8qA55WBwuQeGMfPNyzVqTVg4gk+nlEm+8LigSrhzpfZYpreP0TwUNMmhPKpcrNP4lF+OMfchYoNzw
	hrtrGLSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWW1-007jhe-4M; Tue, 07 Dec 2021 09:12:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWSx-007iV1-6D
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:08:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWSv-00013G-Me; Tue, 07 Dec 2021 10:08:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWSv-00039j-Dq; Tue, 07 Dec 2021 10:08:49 +0100
Date: Tue, 7 Dec 2021 10:08:49 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211207090849.GH28260@pengutronix.de>
References: <20211130203026.360693-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211130203026.360693-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:08:40 up 292 days, 12:32, 143 users,  load average: 0.05, 0.25,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_010851_357082_A72C8B83 
X-CRM114-Status: GOOD (  28.08  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: bcm2835: Don't send MMC_CMD_GO_IDLE_STATE at the
 end of .init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 30, 2021 at 09:30:26PM +0100, Uwe Kleine-K=F6nig wrote:
> The core sends this command anyhow shortly after calling .init(). So
> doing it in bcm2835_mci_reset() is only overhead if it succeeds and
> if there is a problem it is noticed a tad earlier which has little
> benefit compared to the timeout in bcm2835_mci_wait_command_done().
> =

> So simplify and drop the transfer.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mci/mci-bcm2835.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index 4913dc27f8a3..10f588930cda 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -352,10 +352,7 @@ static int bcm2835_mci_reset(struct mci_host *mci, s=
truct device_d *mci_dev)
>  	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS,
>  			0xFFFFFFFF);
>  =

> -	/*Now write command 0 and see if we get response*/
> -	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, 0x0);
> -	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND, 0x0);
> -	return bcm2835_mci_wait_command_done(host);
> +	return 0;
>  }
>  =

>  static int bcm2835_mci_probe(struct device_d *hw_dev)
> =

> base-commit: f2dd8896846757829fb3033f41b89be3fc037d78
> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


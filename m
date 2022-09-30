Delivery-date: Fri, 30 Sep 2022 14:27:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeF6d-001Pj2-SY
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:27:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeF6c-0005Fp-PP
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:27:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oarPAnYZbH8tcWhTB3mh1wx9s+YDK0OLj8dzu6B73T4=; b=m3A8e9FgFV/1HVc7IaOO9mmtRP
	/RY3Q0X7y2kgl3Ud++vo0DPX2hDfr82rLnMyzNnpa57RsNA1duoQtRE7b4H96DvSl+qHLevYo858d
	K0KxHRmSidX6lR9gkNFkq7zl6fwc2XoN+Y9VXWiM7nlJ6i+gkK/CTdou5MiMlx24IoLtRqvpnq1ck
	83kITPfisIckCFv/Kq6qNAhZU0amX0sdc/dJtcfP5v/kVyAuQPjd0SjJtkx9hndYgZKwob9i1K96j
	1Wq4IMwidcNo38ipB9tFRrmcaw7raZCxmXmqX1AFNRqBGGV1ot0n/qkgzudHIHQrI0y8qq1BnDRfE
	5UZAE/wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeF5R-0098em-6d; Fri, 30 Sep 2022 12:25:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeF5I-0098ce-W5
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:25:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeF5H-0004nj-PZ; Fri, 30 Sep 2022 14:25:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeF5H-0001h8-Ea; Fri, 30 Sep 2022 14:25:39 +0200
Date: Fri, 30 Sep 2022 14:25:39 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20220930122539.GA986@pengutronix.de>
References: <20220926100610.1457821-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926100610.1457821-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_052541_061510_EDD0B65D 
X-CRM114-Status: GOOD (  23.84  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: overlay: fix overly strict check for symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 26, 2022 at 12:06:10PM +0200, Michael Riesch wrote:
> The recent patch "of: overlay: improve error handling in
> of_overlay_apply_tree" introduced overly strict checks for symbols
> in the root device tree and the overlay. However, it is legal for
> both to have no symbols. Fix the checks in order to implement the
> status quo.
> 
> Fixes: bc475fd88810 ("of: overlay: improve error handling in of_overlay_apply_tree")
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  drivers/of/overlay.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index 0fc440fdcf..9d112b67f1 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -131,12 +131,12 @@ static int of_overlay_apply_symbols(struct device_node *root,
>  
>  	if (!overlay_symbols) {
>  		pr_debug("overlay doesn't have a __symbols__ node\n");
> -		return -EINVAL;
> +		return 0;
>  	}
>  
>  	if (!root_symbols) {
>  		pr_info("root doesn't have a __symbols__ node\n");
> -		return -EINVAL;
> +		return 0;
>  	}
>  
>  	list_for_each_entry(prop, &overlay_symbols->properties, list) {
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



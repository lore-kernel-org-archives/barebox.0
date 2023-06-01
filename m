Delivery-date: Thu, 01 Jun 2023 08:53:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cBW-005Rb7-8d
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 08:53:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cBT-0005zJ-D6
	for lore@pengutronix.de; Thu, 01 Jun 2023 08:53:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kmsediOu77MEC/LGInJiXNL+VA4Bw+qhaQuRplnpHGU=; b=tSLjZiLkG1KeR9MjJx4i1CcdiM
	DfbQAUJEZvygLATO4kdU0Y5Fo0pf8PATVJjhJulUOvWEP7I4mKxKps6zPJvrgICv/LvsigGH0JHRD
	7bjZ+wVMI1cq8ErmdEyIX5ukXmc23/V/a1znOmMiCNGfM9m8/6jlYqMztU9KhnjXoxVs4M/8zna2/
	YgMZtGSM273CEsDUOvsXQxjdpkMXJI763dZrX0Tqf8kpKGTRCMjL4wRYpk60J9lh+hyDriDUs4Udr
	2h84mPxzkFoilhSX/gzDQ+YENoNvC9hydzthiHWPCH9q2sqTcGhXMXXI9/sCy4j1GeFP9EN4x+wcS
	js1FPKew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cAF-002GO2-0x;
	Thu, 01 Jun 2023 06:52:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cAB-002GMk-1Y
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 06:52:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cA5-0005ui-RR; Thu, 01 Jun 2023 08:51:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4cA5-0008Lx-BH; Thu, 01 Jun 2023 08:51:53 +0200
Date: Thu, 1 Jun 2023 08:51:53 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230601065153.GD18491@pengutronix.de>
References: <20230531062923.670941-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531062923.670941-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_235159_524562_26E74397 
X-CRM114-Status: GOOD (  19.85  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] regulator: core: add debug print for
 regulator_resolve_supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 31, 2023 at 08:29:23AM +0200, Ahmad Fatoum wrote:
> Starting with commit 324bd9bbe7e8 ("regulator: recursively enable/disable
> regulator dependency tree"), regulator operations may affect more than
> just the one regulator being enabled. Place a debug print, so it's
> easier to follow the dependency chain.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/regulator/core.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 42774a561ce5..f914641c8777 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -141,6 +141,8 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
>  	if (!supply_name)
>  		return 0;
>  
> +	dev_dbg(rdev->dev, "resolving %s\n", supply_name);
> +
>  	supply = regulator_get(rdev->dev, supply_name);
>  	if (IS_ERR(supply)) {
>  		if (deep_probe_is_supported())
> -- 
> 2.38.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



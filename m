Delivery-date: Tue, 21 May 2024 08:31:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9J1e-00BoTC-0E
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:31:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9J1b-0008HJ-Qx
	for lore@pengutronix.de; Tue, 21 May 2024 08:31:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQmDfz8SmHQsx+WUx5iBj/xeu9cicN9w7An7nCuDoN0=; b=MeVjFOOASX5PWqQ0Hsigui+LDe
	76MFkahSRwEswHtkpTMnXNmzAzyW/79c7pRiTB6Fo5t9BAZSLf30H6MFgKfRxv5n+bLeaL1lBRJZd
	Q4iA2oqxGfZMcqqhJbUVdzZRvXB2GXID4dMGXFUXmdnohhDntnSyO4PmfFhF4fzCTpEwp/OjHntpT
	TwubwtuAG89wsO4mfXPtKQ5mO1hOk0PGZzsLI6bL9fafLZebGKs71Z2M/IFP0138xlrkdFjxawSaO
	VdpMo4PBLZ8tBFJbI9Cw/rVJ8c2ex4unIQwkvr0yzXJnRfaNbdy0okF43DdJvJSc2FEl5Cp70sfP+
	iIYr745w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9J18-0000000GU3J-0oKi;
	Tue, 21 May 2024 06:30:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9J15-0000000GU2j-0X7O
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:30:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s9J12-00089K-9Z; Tue, 21 May 2024 08:30:28 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s9J11-002Ltp-T8; Tue, 21 May 2024 08:30:27 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s9J11-0065FX-2f;
	Tue, 21 May 2024 08:30:27 +0200
Date: Tue, 21 May 2024 08:30:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zkw_g1dLzYhN5COk@pengutronix.de>
References: <20240517074824.767767-1-a.fatoum@pengutronix.de>
 <20240517074824.767767-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240517074824.767767-5-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_233031_213280_30BECCF8 
X-CRM114-Status: GOOD (  20.93  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/7] regulator: of_regulator: remove unused allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, May 17, 2024 at 09:48:22AM +0200, Ahmad Fatoum wrote:
> We leak this allocation, but we don't actually need it, so drop it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/regulator/of_regulator.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
> index 10f75a4f1c60..c037f85c439d 100644
> --- a/drivers/regulator/of_regulator.c
> +++ b/drivers/regulator/of_regulator.c
> @@ -41,16 +41,10 @@ int of_regulator_match(struct device *dev, struct device_node *node,
>  	unsigned int i;
>  	const char *name;
>  	struct device_node *child;
> -	struct devm_of_regulator_matches *devm_matches;
>  
>  	if (!dev || !node)
>  		return -EINVAL;
>  
> -	devm_matches = xzalloc(sizeof(struct devm_of_regulator_matches));
> -
> -	devm_matches->matches = matches;
> -	devm_matches->num_matches = num_matches;
> -

Removed the definition of struct devm_of_regulator_matches along with
this patch.

Sascha

>  	for (i = 0; i < num_matches; i++) {
>  		struct of_regulator_match *match = &matches[i];
>  		match->of_node = NULL;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



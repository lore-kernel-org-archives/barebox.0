Delivery-date: Tue, 13 Jun 2023 08:42:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xjK-004pV5-En
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 08:42:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8xjI-0002U9-0l
	for lore@pengutronix.de; Tue, 13 Jun 2023 08:42:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FXVixCupkwxg3dfxX93dqKl5HDHAL1TeLk3D9ZkbofY=; b=w5UILfO4F+0k1X5gi7cgL78jd5
	pTUtRGRZ0M+wpFIXCOkfu8FfvXctXFCbHsZ9SslQv2qd3VaFHI96aaaFeToD4FgmO7Io4ta5sI1nV
	SqQZihTTvBU25k3oX8p98jLcKb/Uayc7NL4Xgk6Bvucsk/2hhRamMf08RqaIyDxvVZX5AGzNAqJp+
	qTeqjwRs+P5/wxwTiLp/u5pPK6lURC156GeOojP9SkXFG2rA4ksHJAOTNMnTAtjA35d2YOtJe3cHA
	BdxBRvbpUUCWLxcWEJVyI76dhyNlwuAp+vIpJWHOPiqVzFuwffH2IMMrpD9loAg8kJoPgB1AZTY3H
	KjBNCAjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xiG-0076Kq-0n;
	Tue, 13 Jun 2023 06:41:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xiD-0076KB-1p
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 06:41:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xiC-0002Kc-AM; Tue, 13 Jun 2023 08:41:04 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8xiC-0004fZ-4Z; Tue, 13 Jun 2023 08:41:04 +0200
Date: Tue, 13 Jun 2023 08:41:04 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230613064104.tcenib27cinuoxni@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
 <20230612123232.3071957-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230612123232.3071957-4-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_234105_599620_0C5F4F54 
X-CRM114-Status: GOOD (  16.51  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/5] dmesg: allow loglevels specified as numbers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-12, Sascha Hauer wrote:
> In Linux dmesg loglevels can be specified as strings or as numbers.
> Do likewise in barebox.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  commands/dmesg.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/dmesg.c b/commands/dmesg.c
> index 2a36710b98..00e5a159e0 100644
> --- a/commands/dmesg.c
> +++ b/commands/dmesg.c
> @@ -13,6 +13,16 @@
>  
>  static int str_to_loglevel(const char *str)
>  {
> +	int ret;
> +	unsigned long level;
> +
> +	ret = kstrtoul(str, 10, &level);
> +	if (!ret) {
> +		if (level > MSG_VDEBUG)
> +			goto unknown;
> +		return level;
> +	}
> +
>  	if (!strcmp(str, "vdebug"))
>  		return MSG_VDEBUG;
>  	if (!strcmp(str, "debug"))
> @@ -31,7 +41,7 @@ static int str_to_loglevel(const char *str)
>  		return MSG_ALERT;
>  	if (!strcmp(str, "emerg"))
>  		return MSG_EMERG;
> -
> +unknown:
>  	printf("dmesg: unknown loglevel %s\n", str);
>  
>  	return -EINVAL;
> -- 
> 2.39.2
> 
> 
> 



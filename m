Delivery-date: Wed, 29 Jun 2022 09:34:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6SDk-000yCu-G8
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:34:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6SDm-0007Qz-4T
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:34:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u5MCO6pK4EQtvF2X34zb8gDN7DFtVwfZ8yRRr6Kc1eY=; b=v4tlgH9zjPZC8TYxS1hbgQdwVa
	D+lt9vqzck70cOoQ66p05x3cDHPghvPRksG8K6XB+Vz8P4F/4HY0rsO4ztNA1bG/9tucWyMHrAMik
	GLvAMmlOHtvkICQk9imHteSK3XDMHtEne1KxY4fAwLNK/VBOAdhCu0I+/2cvHP/VaI3GrER5weo0C
	aG+9o4Xzhn1IYNz5flVIHq9VNLh/H/SBhdq48hcd2HVdf/qECKD58sMUQDCdziQnLyy+70tAX+SVI
	F/P9OsX6M7fHsO/lZloeXZmMIDYsV9UGu84fVs5UrnZg2NlwwVot9Q/ykgoOrFlV/5jzR0poacQ5s
	v6aGdHzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6SCI-00A7Wv-1c; Wed, 29 Jun 2022 07:33:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6SCA-00A7Ud-Db
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:33:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6SC9-0007Dv-1L; Wed, 29 Jun 2022 09:33:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6SC8-000326-DM; Wed, 29 Jun 2022 09:33:04 +0200
Date: Wed, 29 Jun 2022 09:33:04 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220629073304.GR19026@pengutronix.de>
References: <20220629063024.3945-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220629063024.3945-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_003306_495783_8960CB24 
X-CRM114-Status: GOOD (  19.67  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/6] drivers: rtc: pcf8536: Remove redundant variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 29, 2022 at 09:30:19AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/rtc/rtc-pcf85363.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/rtc/rtc-pcf85363.c b/drivers/rtc/rtc-pcf85363.c
> index 7b785d6a77..b9f0fc6012 100644
> --- a/drivers/rtc/rtc-pcf85363.c
> +++ b/drivers/rtc/rtc-pcf85363.c
> @@ -131,7 +131,6 @@ static int pcf85363_probe(struct device_d *dev)
>  	struct i2c_client *client = to_i2c_client(dev);
>  	struct pcf85363 *pcf85363;
>  	struct regmap *regmap;
> -	int ret;
>  
>  	regmap = regmap_init_i2c(client,
>  				&pcf85363_regmap_i2c_config);
> @@ -147,9 +146,7 @@ static int pcf85363_probe(struct device_d *dev)
>  	pcf85363->rtc.ops = &rtc_ops;
>  	pcf85363->rtc.dev = dev;
>  
> -	ret = rtc_register(&pcf85363->rtc);
> -
> -	return ret;
> +	return rtc_register(&pcf85363->rtc);
>  }
>  
>  static struct platform_device_id dev_ids[] = {
> -- 
> 2.32.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



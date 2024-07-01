Delivery-date: Mon, 01 Jul 2024 15:09:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGmZ-000VnY-12
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 15:09:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGmY-00062u-ON
	for lore@pengutronix.de; Mon, 01 Jul 2024 15:09:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yu3TT6b/DYlUM242JzC5l8Zj8LZ5QjK/LZr20KbOUtU=; b=HaM1c4KlhYS/TVfYv6/zNytOWi
	86kGDIMbLQq5WNjLoov7D0EfCTKDaH/HHvhVbRacmYzKqtl6cQ32wSlVnopJULaHcB/j57jZiuKOL
	Ywyru0xA51R+iP2bf69PkinP7Ir1yY3df5wOVeE+nt3pa5UhwJN7cb+5igryUzVUNDPbSDkfhiXwI
	5czNwDDWvYqwvmMFlJjfm7k6XQSgx7RgKXSxUyuVfHsT5MEpODmtOiW5AUz4N5OIpNv3mMy83vH9I
	7WkI0MwAti9t0szpb/JZryRJWYZajhcMrY+pVLhGsS+UuxJ16X+Bm9RbkdLceeQP1+Ws8lTUvV/Uh
	uJow1+RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGm5-00000003PEG-1MNJ;
	Mon, 01 Jul 2024 13:08:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGly-00000003PDV-2wip
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 13:08:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sOGlx-0005xP-8n; Mon, 01 Jul 2024 15:08:45 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sOGlw-006NWX-SE; Mon, 01 Jul 2024 15:08:44 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sOGlw-008S5J-2W;
	Mon, 01 Jul 2024 15:08:44 +0200
Date: Mon, 1 Jul 2024 15:08:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <ZoKqXLNa1l60t2Yr@pengutronix.de>
References: <20240621051806.5660-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621051806.5660-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_060849_854217_0CC72B59 
X-CRM114-Status: GOOD (  17.46  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] regulator: Add Fairchild FAN53555 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 21, 2024 at 08:18:06AM +0300, Alexander Shiyan wrote:
> This driver supports Fairchild FAN53555 Digitally Programmable TinyBuck Regulator.
> 
> Supported ICs:
> fan53526, fan53555, rk8600, rk8602, syr827, syr828, tcs4525, tcs4526.
> 
> The driver is written based on the fan53555.c linux kernel driver.
> Widely used in new developments based on Rockchip SOCs RK35xx.
> 
> +	ret = of_property_read_u32(np, "fcs,suspend-voltage-selector", &val);
> +	if (!ret) {
> +		if (val >> 1) {

Although is funcionally the same you likely wanted to write val > 1
here. Replaced this with the easier to read version ;)

Sascha

> +			dev_err(di->dev, "Invalid VSEL ID=%u!\n", val);
> +			ret = -EINVAL;
> +			goto err;
> +		}
> +
> +		di->sleep_vsel_id = val;
> +	}
> +

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Tue, 18 Jun 2024 08:51:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJSgb-0080L3-2P
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 08:51:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJSgb-0001y8-74
	for lore@pengutronix.de; Tue, 18 Jun 2024 08:51:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hNdLiu65mtQBCQmC5usRlw+HSBWLYlBPssLhNVNo8KE=; b=0OwLsM7hPb1RAfB/CKwqNdT5rq
	Z+Kie8FNDCaFjUP/c5jq7Wz8raryMzhtA5IQswlZXJy1d1793hk7JYBMONlpb2CvRsw4AmOhYWHkF
	WT4QuvDvABw5SAGFL1JJWD03siKgUZ/Q9XSumT9Sbf5MAcXH4Kt4XZIGnCqAehtveZUVsR5YQv6br
	RXS6uwKr0Tj62OMr2ahfRGN8zVQiDJ05Xm1CjViER5mImdSk8j8AR9Ec+j5+Fn8z55rgGQUCKsns8
	/F6D79BUG1RJ3zwbjYbkFZu7yMyKKGwKF3nRCzV5VkDBGguacjSp5fCIPqo9NYKMPWTHCAG103iA2
	kxXntk2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSgB-0000000DsMl-29nf;
	Tue, 18 Jun 2024 06:50:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSg7-0000000DsMG-2bt1
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 06:50:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSg6-0001uG-Em; Tue, 18 Jun 2024 08:50:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSg6-003A72-1y; Tue, 18 Jun 2024 08:50:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSg5-00GGFk-3D;
	Tue, 18 Jun 2024 08:50:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240614125117.1707748-1-o.rempel@pengutronix.de>
References: <20240614125117.1707748-1-o.rempel@pengutronix.de>
Message-Id: <171869344999.3875642.4743522306176234782.b4-ty@pengutronix.de>
Date: Tue, 18 Jun 2024 08:50:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_235051_699706_400D5B27 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] net: phy: dp83tg720: Decouple PHY reset frequency
 from link polling interval
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Jun 2024 14:51:17 +0200, Oleksij Rempel wrote:
> Reduce PHY reset frequency to allow for more frequent link polling in
> certain cases. This is necessary to ensure barebox can establish a link on
> "ifup -a".
> 
> 

Applied, thanks!

[1/1] net: phy: dp83tg720: Decouple PHY reset frequency from link polling interval
      https://git.pengutronix.de/cgit/barebox/commit/?id=eee174c530b0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




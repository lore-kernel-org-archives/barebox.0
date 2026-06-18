Delivery-date: Thu, 18 Jun 2026 09:10:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6tL-007B9C-2U
	for lore@lore.pengutronix.de;
	Thu, 18 Jun 2026 09:10:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6tJ-0003va-QJ
	for lore@pengutronix.de; Thu, 18 Jun 2026 09:10:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9yAMw0QoU/Fies/lixqvMdvZjvqpIHOK0mt/qfhSYMo=; b=F7hyKn4+Vh9ESeRRy9rrdOUWcY
	6/yBnqWiAppxVL4LstFXqZvMT3S6FFrESZ1v6My6QwQTj+v7XIXJh0R3xuGc1VzOaL5gYsoPzDW5I
	uiK8ZMixbs3vVK4fYnidCEt7pgJaUJmj9KurPSanhWBHuFZPWVRljZry/B+ugK2yoXixWa7eujIP/
	+F/DJ5OaDdlRsHaEpGzsJcSGUtYiZ6Rh2yyO1gwsfO2kVGQ5ME2iaVSOUORfkCatW4adyOPaDf6Jy
	lJLOgeN6EE9vOOdzTTRI2KtrnfrQxg2xcG8A5+3hDDe2OhBThbGsuLQ9NGBy/KB4sTUMFH3x8koFB
	JTCgaPOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6sK-00000000jjY-3fMQ;
	Thu, 18 Jun 2026 07:09:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6sH-00000000jie-3zue
	for barebox@lists.infradead.org;
	Thu, 18 Jun 2026 07:09:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 356C7200B9E;
	Thu, 18 Jun 2026 09:09:16 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6sG-003Ovq-0R;
	Thu, 18 Jun 2026 09:09:16 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6sG-0000000DbP8-0HBQ;
	Thu, 18 Jun 2026 09:09:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Cc: Marco Felsch <mfe@pengutronix.de>
In-Reply-To: <20260612115800.3475528-1-bst@pengutronix.de>
References: <20260612115800.3475528-1-bst@pengutronix.de>
Message-Id: <178176655606.3240511.4129626017295243866.b4-ty@pengutronix.de>
Date: Thu, 18 Jun 2026 09:09:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_000918_152190_1F428C3D 
X-CRM114-Status: UNSURE (   6.43  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP FRDM: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Jun 2026 13:58:00 +0200, Bastian Krause wrote:
> Since f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") the esdctl
> driver is used. This causes the errors below since barebox tries to add
> the memory twice:
> 
>   imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
>   initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: i.MX8MP FRDM: remove memory node
      https://git.pengutronix.de/cgit/barebox/commit/?id=bed9b8e103b9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




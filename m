Delivery-date: Fri, 08 Nov 2024 11:22:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9M7v-006HkT-2g
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 11:22:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9M7w-0004Rd-G7
	for lore@pengutronix.de; Fri, 08 Nov 2024 11:22:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Ft1q4foZEXSTfrfAU9h/mgsqNe4okkdeAsqHFzulog=; b=Ldqng0c+2iTppEcSlO+g4ESszc
	VocxIvWpCxclFNa9dmqEZ8AqOxmG26ptWpdHKSKGKog2ryrDsyumZthXFm0a5OdNAkqTmsVtkJ7b3
	QDPm/p41KQZ1DMh2ZvluSL+0lil2cJ248VHR5pw6NsDIvC1izIWGA7o3bbajIFEQiB4yS4ZTpk8fn
	zC71F6MXXpQFh+JxxWITN1aKO7gQK6EnECXbYvUptbcZLyGn5DUNrRAw1xwMTs+a2rXPG8N5HUzJk
	clVoATrfs1Us6HpsiOiw9eGUInNi029wYl7m5/fjB4TVP5IKDma/Jb2HPM8yTQFp3kkZXZUqMvxMY
	Ildb1lLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9M7V-0000000A5tY-3T7m;
	Fri, 08 Nov 2024 10:21:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9M7T-0000000A5t1-0ASO
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 10:21:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9M7R-0004JT-UA; Fri, 08 Nov 2024 11:21:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9M7R-002bXa-2F;
	Fri, 08 Nov 2024 11:21:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9M7R-009gMq-24;
	Fri, 08 Nov 2024 11:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20241107145722.5145-2-jmaselbas@zdiv.net>
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-2-jmaselbas@zdiv.net>
Message-Id: <173106129364.2307797.13173005086001545457.b4-ty@pengutronix.de>
Date: Fri, 08 Nov 2024 11:21:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_022135_116788_974367CE 
X-CRM114-Status: UNSURE (   8.08  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 1/6] clk: clk-composite: fix callback guard in
 clk_composite_round_rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 Nov 2024 15:57:17 +0100, Jules Maselbas wrote:
> In the function clk_composite_round_rate a test for a NULL function pointer
> guard the call to the round_rate callback but doesn't check for the correct
> callback: it should be round_rate instead of set_rate
> 
> 

Applied, thanks!

[1/6] clk: clk-composite: fix callback guard in clk_composite_round_rate
      https://git.pengutronix.de/cgit/barebox/commit/?id=351a306c0d71 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




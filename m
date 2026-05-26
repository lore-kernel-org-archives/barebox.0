Delivery-date: Tue, 26 May 2026 08:27:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlGO-003uYL-2T
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:27:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlGO-00020b-7n
	for lore@pengutronix.de; Tue, 26 May 2026 08:27:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ptm/X4EcSn6+6XLOEn2o158SZH9iapl2f9B6M16jRsA=; b=K4zhnb6XwhE83jSk0IuHZjwsCh
	7Dmz0LS47ekwt3MYMZSwk0OYxgDK/CrHAV2YX2xxzQyN/EZJTwM6n3WXxbYITWax7VpKhzPVpYrrY
	2xHX5YjippvoNJKbXOeoin7wiU7LvD83XP4cMLwznskcR8vlJWKvzNSaHtg9PQgJ3INh9eH2P6gVo
	JDD2FTlsUoGBAQi/EqFoHH+kqzqowPAo1UB9XZbeZpbEEipWnBUnjtjWTHeavtSzvI0vdhy+9JOG2
	+sKsjalW2KNWQYuMayUN4Rq+D5Lz3TefdJzsoBMqnSEPFhIajvTpnoSY3LoT1p2gr3MfaS5TvtUJC
	BKXi55ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlFK-00000001A2t-42HH;
	Tue, 26 May 2026 06:26:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlFH-00000001A1M-1AgI
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:26:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF7-0001qn-KQ; Tue, 26 May 2026 08:26:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF6-001s4J-1e;
	Tue, 26 May 2026 08:26:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF7-0000000GXT4-03xT;
	Tue, 26 May 2026 08:26:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: jre@pengutronix.de
In-Reply-To: <20260526060041.1726523-1-a.fatoum@barebox.org>
References: <20260526060041.1726523-1-a.fatoum@barebox.org>
Message-Id: <177977678101.3941817.1875049825002627929.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:26:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_232631_320515_CA2F1161 
X-CRM114-Status: UNSURE (   5.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] regmap: enforce register alignment to
 regmap::reg_stride
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 26 May 2026 08:00:15 +0200, Ahmad Fatoum wrote:
> We currently enforce this only for regmap_bulk_read/write, but really
> it's applicable to all regmap read/write operations.
> 
> Linux already enforces this everywhere, so follow suit in barebox.
> 
> 

Applied, thanks!

[1/1] regmap: enforce register alignment to regmap::reg_stride
      https://git.pengutronix.de/cgit/barebox/commit/?id=e53874cca26e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




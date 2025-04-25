Delivery-date: Fri, 25 Apr 2025 07:39:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8Bn1-0058Gf-0C
	for lore@lore.pengutronix.de;
	Fri, 25 Apr 2025 07:39:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8Bn0-0004jq-GM
	for lore@pengutronix.de; Fri, 25 Apr 2025 07:39:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D3iuuUJTChcv/YRildWD1S0wgYgovsN27fB/FKsOkMo=; b=w1gN/Kqr6Wr/zwA6QEP43weN3Y
	4+V18by4BaHdZN4S7ha3xxm7SjT2Llwl3sthBjPS4Xbzvv6qgpVLNb80mvcSDUVsq/fnMxk66jLxR
	F/Edk9SafQCAueLMoRhMKeWL0FsOZKQ9DCWz/MDDBmW/vYPN1iKRTglQbMDFfK7kc9VFT8dAxqqjT
	a7egd/huwKK/ONAdcJWIgzghlLrDiO0yA6uhqHaj7UBHXhroNCZybUwQj5UL6NbKnQAX83TYG4EMy
	h9XULxZYbLOBYuT7Y0mOaRuDuPGLDduCOvK2qL2US3y2LPYUPrXcCuDUZgHaC6PgEcVzxQDnmMkqv
	WmyA7Epw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8BmZ-0000000Fzqx-0BCG;
	Fri, 25 Apr 2025 05:39:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8BmW-0000000FzqR-0oXg
	for barebox@lists.infradead.org;
	Fri, 25 Apr 2025 05:39:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8BmU-0004c3-Np; Fri, 25 Apr 2025 07:39:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8BmU-001zmW-1k;
	Fri, 25 Apr 2025 07:39:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8BmU-002I1a-1X;
	Fri, 25 Apr 2025 07:39:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250424084833.2920664-1-a.fatoum@pengutronix.de>
References: <20250424084833.2920664-1-a.fatoum@pengutronix.de>
Message-Id: <174555956247.545067.10905121643082274040.b4-ty@pengutronix.de>
Date: Fri, 25 Apr 2025 07:39:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_223924_233560_AEFF2E2A 
X-CRM114-Status: UNSURE (   6.24  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clocksource: omit seeding of RNG in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 24 Apr 2025 10:48:33 +0200, Ahmad Fatoum wrote:
> We do not maintain a PRNG in the PBL, so we should omit the call to
> srand_xor in PBL, otherwise it expands to BUG() and breaks the newly
> introduced PBL clocksource support.
> 
> 

Applied, thanks!

[1/1] clocksource: omit seeding of RNG in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=a6e031cc425d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




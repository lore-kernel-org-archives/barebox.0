Delivery-date: Mon, 01 Dec 2025 10:10:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzvj-006lam-2o
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:10:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzvj-00067c-C6
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:10:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XEq6hyXXGKPKbKhFMHkzP+w522Zfw3g49tOOJnD4rfE=; b=UmliY4eRUttPWFodLrAFPU6Ih/
	RlvYPa85OYdvuX7oX0aK5xQoSAJhxhxze27gKQw6/lDUaw1E3Xt96F2eM4u7zfcm3l8tO5OtxC9c9
	lKRLQcor6COBIYY00BO+qlGKq15g8VwLbvF34ib/++jp497R5McHeZLDTiX2iBV6UlISBNZkWmE0E
	wdoMWNBKNTgFhr8FY1oDGBXAaGYr4d+6PsxRW3SxrXhE5O3ohhN2eXsetPhlafAmdem+xCK5vmXLr
	PzPfDw+7E7THT1KGy/nUcOuE1RuF+3aXpKheI3Q60/hXhfoPrN9A6X8iHbqZyYo/IEDKE7kkUD2LR
	sKI2m++Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzvK-00000003C3N-21MI;
	Mon, 01 Dec 2025 09:10:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzvH-00000003C2v-2sAy
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 09:10:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzvG-000631-0Z; Mon, 01 Dec 2025 10:10:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzvF-003PgI-2c;
	Mon, 01 Dec 2025 10:10:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzvF-00000000avd-396L;
	Mon, 01 Dec 2025 10:10:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128172149.36116-1-a.fatoum@pengutronix.de>
References: <20251128172149.36116-1-a.fatoum@pengutronix.de>
Message-Id: <176458021774.141938.13231044482856454705.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 10:10:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_011019_729611_BC830749 
X-CRM114-Status: UNSURE (   6.53  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] memory: drop superfluous struct
 memory_bank::start/size parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 18:21:45 +0100, Ahmad Fatoum wrote:
> These struct members do not have more info than what's already in the
> resource, so just drop them, so code doesn't have to keep them in-sync.
> 
> 

Applied, thanks!

[1/2] memory: drop superfluous struct memory_bank::start/size parameters
      https://git.pengutronix.de/cgit/barebox/commit/?id=f352f1dce8b4 (link may not be stable)
[2/2] memory: keep memory_banks sorted
      https://git.pengutronix.de/cgit/barebox/commit/?id=f48a68983067 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Tue, 02 Dec 2025 16:59:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmP-007DFJ-2E
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 16:59:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmP-0005Qx-4v
	for lore@pengutronix.de; Tue, 02 Dec 2025 16:59:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gWgwlWd3nTlzX9w/NyRF/QhbQvi6ns+Y1OgmafEsVNc=; b=xOYLyjqMZblVjtx7A9iGyc0Ikm
	Eoq3PdBfIi3d6BKcuwo+W/3reBhcrzbSYEF3wW9FhRwCY1CN2sqz4Ij8CmW8gdzX0gEv46qlLCdJb
	r5gJkwhNTCyL0Ri44U2fg1CV/3aHQ2MTH0ydbSwKyRirj22eBGnMH7C9MQdIK3wVlU6rDh53ZC4TG
	YLqwIjP0llBhwriScJZgrm9ORspj/N3ind9MYc1xk3N6AH410J4vJ33LtEiZr+MROJVeDEMP56HVF
	6BbkHo0AF21QgzvWTyHGxMvAvphyobIpdnq+N4COXsYnkUDHG3qH47MC30qZL1Y+cUsHw6GuksMRC
	gDRRzB2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSlr-00000005aMi-0nb1;
	Tue, 02 Dec 2025 15:58:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSln-00000005aKs-3YEz
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 15:58:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSlm-0005Bo-6c; Tue, 02 Dec 2025 16:58:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-003dSy-34;
	Tue, 02 Dec 2025 16:58:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-00000006wsy-3XwZ;
	Tue, 02 Dec 2025 16:58:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 02 Dec 2025 16:58:24 +0100
Message-Id: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKAML2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIKGbbaybklpQrJuampZmZmxsYZlmbqAEVF1QlJqWWQE2KTq2thYAObf
 8h1kAAAA=
X-Change-ID: 20251202-k3-deps-eeff63389f70
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764691105; l=1068;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=aRcGYbScQXLoaAu/myBBcyEQ4d/aI7IeAoTVo17TDSs=;
 b=HQRvAvJHFAMcTvNHNm/uSQ7jAwrAN8xvDSjVjyXv1GAaif62sBw6q6yN+SHd95fnKgFnkZms0
 8k2RhHKBW0vDYey8obOWgtsoRXNhud1DJGbm8mBQQk3WKqHQ1eeoCDF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_075827_913852_7317D1E7 
X-CRM114-Status: GOOD (  10.46  )
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
Subject: [PATCH 0/4] ARM: k3: fix k3img dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series fixes a dependency problem in the K3 image generation. The
k3img tool takes several files as input, but only the barebox image is
actually a dependency, so when (only) one of the other files change the
final image is not re-generated.

While at it we can make some input files SoC specific which means we no
longer have to specify them per board, saving one line per board and
file in Makefile.k3

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      ARM: K3: am62l: don't put sysfwdata into 1st stage image
      ARM: k3: make some firmware files SoC specific
      ARM: k3: am62l: Add dedicated config option for OP-TEE
      ARM: k3: am62l: fix dependencies on k3img input files

 firmware/Kconfig   |  4 ++++
 images/Makefile.k3 | 62 ++++++++++++++++++++++++------------------------------
 2 files changed, 31 insertions(+), 35 deletions(-)
---
base-commit: 8661354d7ef744e01b6f07b1b0114482c5e8f561
change-id: 20251202-k3-deps-eeff63389f70

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




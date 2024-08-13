Delivery-date: Tue, 13 Aug 2024 09:02:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYP-00979O-2w
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 09:02:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdlYP-0004Rc-AS
	for lore@pengutronix.de; Tue, 13 Aug 2024 09:02:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YRYkFXPiMa9zFeX0PbuvWaoq1cGHm3ZrsNdSIQsyTaM=; b=coJYwkIwbeGsIaLMaWKhHDvjku
	t/PPvfzB5JwsPXvTkyyQjNPymgZmikpiJ8mrzPU5sUL8kynZ3oMflSwLzp2yt6AfiTHg+9s4ju/lz
	bV0yyWR9OrtO4issvWaODn7a3tRrr8sME/ttrpx0Xj0ULrNoeDavAZbzIQS8x/1I6zV3M7vTJJ4qQ
	KKUrEi5gD6Dk/5f/BJBHgbfP4ZbLVGDpwK4XKAy9sDN2LuhcqaUb6ggvG6SEJy2qAffBUyrbzz+6O
	V8td/NcqDe7u4w/Z8PXMEmav5F/ZwATs+j8ENnF8qSvt0haPtXul7XQl1wmvcagSqjjNi3lXhrL6q
	yYplBJDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXr-00000002dbC-407K;
	Tue, 13 Aug 2024 07:02:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdlXg-00000002dYP-0BnP
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 07:02:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-000489-PF; Tue, 13 Aug 2024 09:02:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-0004Eg-Bd; Tue, 13 Aug 2024 09:02:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdlXe-004UK1-0s;
	Tue, 13 Aug 2024 09:02:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Aug 2024 09:02:00 +0200
Message-Id: <20240813070201.1069847-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
References: <20240813070201.1069847-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_000204_400779_79D544F9 
X-CRM114-Status: GOOD (  10.52  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/7] ci: build: add kvx build test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we ship a toolchain for Kalray's MPPA Coolidge CPU, let's
enable build test on that architecture as well.

With this, all architectures now have defconfigs that are build tested.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 .github/workflows/build-defconfigs.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index 46f59fd118c1..f8cb7c2a5929 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -3,7 +3,7 @@ name: build images
 on: [push, pull_request]
 
 env:
-  ARCH: arm mips powerpc riscv sandbox x86 openrisc
+  ARCH: arm mips powerpc riscv sandbox x86 openrisc kvx
 
 jobs:
   defconfigs:
-- 
2.39.2




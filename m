Delivery-date: Tue, 16 Jan 2024 10:50:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPg5W-001iCd-2O
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 10:50:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPg5X-000798-FT
	for lore@pengutronix.de; Tue, 16 Jan 2024 10:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dClEy8l5AfJNjTF4JHe5xRUjX/RSu3pmBVntb2t7VNs=; b=rv0QzHz/1uQhHyUIXEaV7br8pO
	twyc1Eo8tBMGy4SGceLepHPs3Bj9UUViwsfXjP6Rdot9MA2T0DRN19xIbnMoSWytBSd1nt48TivOE
	rDRuqdzuEqemd47x283v+4zdUNWol+XEJx/bpf/15i99nHjDdliLcqAAay5XCDlQisPT0r2YvYo09
	RMnzGGL6rvTXgpdNJm8l/LkG9c8SJGk9I0e8xNq6Wnty1rUwJYlIZTNDKVcBwupKcGCjVuJlwnmoy
	RxCRu9alFvY1rkYgmgNZoNHbIJY3wlIclTSxA0QNtwUpfMxEd5FUMSVMxbiefqAVeMUum3+wX7Xh0
	x8LpApdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPg4X-00BaLa-06;
	Tue, 16 Jan 2024 09:49:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPg4U-00BaKw-1p
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 09:49:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPg4T-00071f-6p; Tue, 16 Jan 2024 10:49:25 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPg4S-000D2b-QV; Tue, 16 Jan 2024 10:49:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPg4S-004W5E-2M;
	Tue, 16 Jan 2024 10:49:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jan 2024 10:49:21 +0100
Message-Id: <20240116094921.1076616-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_014926_601303_3239032C 
X-CRM114-Status: GOOD (  11.67  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX8M: return error if imx_load_image can't honour entry address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Align the now outdated comment with reality.

Suggested-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/xload-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index 32f12cd7f574..e7f8f162ee8f 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -123,8 +123,8 @@ int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
 
 	if (!start) {
 		/*
-		 * Passing entry different from address is interpreted
-		 * as a request to place the image such that its entry
+		 * When !start, the caller will start the image later on,
+		 * expecting that it is placed such that its entry
 		 * point would be exactly at 'entry', that is:
 		 *
 		 *     buf + ofs = entry
-- 
2.39.2




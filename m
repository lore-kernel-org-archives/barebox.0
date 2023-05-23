Delivery-date: Tue, 23 May 2023 11:43:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OYA-00Acrn-AU
	for lore@lore.pengutronix.de; Tue, 23 May 2023 11:43:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OY7-0007kM-T6
	for lore@pengutronix.de; Tue, 23 May 2023 11:43:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3h0x9VRp/dRAd8y9omDV5KiEuYuZRkvoF8bM7iizWP4=; b=lV+bJIOJiSwS9/Q1STNiYVHmyL
	GhHzDJBwyMG4zdSg77B27L9gffceg2GEFBEA2go4+jrqqOxGi8HuSp99b2jMEUWg5KG7nBiNOCzl5
	vOK4ydXVObzQP96+CnjbwuK00E0ctKmRgJOUYQIwGygTmoeDDNcY5KkX7NBvrLAm/IZuZtx3idxEm
	J/mNZjJ7W3yxu3OM4jZA4YWiILFxlPjhg8OUY40dSA/x0kftR9Zis1iX6j2dse6KzSjgRSioIE5UX
	QmX3TQY4gPQZ4Of8wZOxOyc5gE2Y6xSqEwbK4QRmAbgTL04Z9an9qMqzXJIfLG925W0vXRjRecGb2
	NnFmPHTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OWI-009eDU-1G;
	Tue, 23 May 2023 09:41:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OWF-009eCT-1V
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 09:41:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWE-0007Ot-7Q; Tue, 23 May 2023 11:41:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWD-002DLn-Ir; Tue, 23 May 2023 11:41:25 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWC-00EUSj-RS; Tue, 23 May 2023 11:41:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 May 2023 11:41:24 +0200
Message-Id: <20230523094124.3453658-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_024127_498654_6151A7FB 
X-CRM114-Status: UNSURE (   9.12  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: rockchip: don't attempt building MACH_RADXA_ROCK5 without firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise, multi_v8_defconfig would give errors for users that are only
interested in using it for qemu-virt64, which requires no external
firmware to be built into barebox.

While at it, fix spaces to tabs to be in-line with the rest of the file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 38736102d334..a71c4ae35dd9 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -102,9 +102,10 @@ config MACH_RADXA_ROCK3
 	  Say Y here if you are using a Radxa ROCK3
 
 config MACH_RADXA_ROCK5
-       select ARCH_RK3588
-       bool "Radxa ROCK5"
-       help
+	select ARCH_RK3588
+	depends on $(success,test -e $(srctree)/arch/arm/boards/radxa-rock5/sdram-init.bin)
+	bool "Radxa ROCK5"
+	help
 	  Say Y here if you are using a Radxa ROCK5
 
 config MACH_RADXA_CM3
-- 
2.39.2




Delivery-date: Mon, 05 Feb 2024 13:57:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWyXu-004GqM-0L
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 13:57:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWyXu-0007GU-QD
	for lore@pengutronix.de; Mon, 05 Feb 2024 13:57:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2sIwK61Pj0glwp4AfiuvK8Yc6KoI9MADAT1wg1EzLq0=; b=ay6RBAB4dhoeeP6bElIYEJrwGQ
	bVEwKdgp/hK4UFwW8tbcm627w93g2WRRgewd+MqHFTY0Bpuyxslx+g0YfATV6I8DslahpRmYem/T5
	MFLxdZBfHPHW96I6+pOd2W3onQmf4jQa51yr4bT5boqGFO0lUDNyn5c8xTt0MvTWJNblNbaaIRMpp
	Gat3nHH1OfnzaVvVNg7HasUcuyBZ4XGSNJ8RS0CxPgSith4DLu+yXcnULi8P9pl1XKGZGzDI2Eiei
	AvRB1vdN3lFeK2f7BfTZt4H+TB+2aWls+ermVWYEcnxgas94z34z/wPSACZL55NqkmE5KMx5/HaT3
	Uhoq+bUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWyXW-00000003KDS-41vR;
	Mon, 05 Feb 2024 12:57:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWyXT-00000003KBP-1iSV
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 12:57:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWyXS-0007BJ-81; Mon, 05 Feb 2024 13:57:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWyXR-004dSW-Rr; Mon, 05 Feb 2024 13:57:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWyXR-00AMca-2R;
	Mon, 05 Feb 2024 13:57:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  5 Feb 2024 13:57:28 +0100
Message-Id: <20240205125728.2470228-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_045731_463745_6024D6F7 
X-CRM114-Status: GOOD (  12.19  )
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
Subject: [PATCH] ARM: i.MX: add Kconfig option for scratchmem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

scratch.c is needed for both i.MX8 and i.MX9, but is compiled only for
i.MX8, so linking will failed if only i.MX9 is enabled.
Add a Kconfig option for it and select it from both i.MX8 and i.MX9.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig  | 4 ++++
 arch/arm/mach-imx/Makefile | 3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index b6936a7554..a87ba1cef0 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -42,6 +42,10 @@ config ARCH_IMX_ROMAPI
 	def_bool y
 	depends on ARCH_IMX8M || ARCH_IMX9
 
+config ARCH_IMX_SCRATCHMEM
+	def_bool y
+	depends on ARCH_IMX8M || ARCH_IMX9
+
 #
 # PMIC configuration found on i.MX51 Babbadge board
 #
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 9505cffa81..ce8af486ae 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -17,7 +17,8 @@ CFLAGS_imx6.o := -march=armv7-a
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
-obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o scratch.o
+obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
+obj-pbl-$(CONFIG_ARCH_IMX_SCRATCHMEM) += scratch.o
 obj-$(CONFIG_ARCH_IMX9) += imx9.o
 lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
-- 
2.39.2




Delivery-date: Thu, 19 Jun 2025 19:12:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSIo0-0090dM-2i
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 19:12:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSIo0-0000j6-8g
	for lore@pengutronix.de; Thu, 19 Jun 2025 19:12:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qOLcGCnzrwDR+dgMiqM+13Yp0WiNVMeT2KkCOTqDq08=; b=0SDpVOeQ7VYq8VPmUaW9bQPSmn
	wEyHqKAH8bKleUGggglZLhoZklbg2ZEATIpX9uKEZV2XM8VCqsLocBzVfPAWmxJqbuTBDieplqL5A
	/VsHwThc2aMKqvdxi5P/o+pJ+gxKmKw1ruexz4Mj1dchGAk1I6jCMAJWWNUdt1W+FtQcOdPBMM0Bj
	Hhh586bxnOUoiT2djqJhL7R6E+F0HrHNt0TucdIaE3TwdVzdEat5rW4+VyFjGlrnMg3JHk5mN8jss
	gGIbuZC8FRlfVFKh6vzy8OJHJDsJNosWWmieGmGkAyX00TM8dMgCAKmGngZllOV6fKe4c/Inj7TJf
	n+TVKEPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSInV-0000000DiWs-1eoG;
	Thu, 19 Jun 2025 17:11:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSH9M-0000000DPJW-3FV8
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 15:26:02 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uSH9L-0006U8-Lx
	for barebox@lists.infradead.org; Thu, 19 Jun 2025 17:25:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 19 Jun 2025 17:25:56 +0200
Message-Id: <20250619152556.3749995-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250619152556.3749995-1-m.felsch@pengutronix.de>
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_082600_818930_45E55FAE 
X-CRM114-Status: GOOD (  10.38  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] ARM: mach-imx: tzasc: add imx6q_tzc380_is_enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation of adding an i.MX6QD optee-early helper add a helper to
check if the early code e.g. PBL/BootROM enabled the TZC380 controllers
on the i.MX6QDL.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/tzasc.c | 15 +++++++++++++++
 include/mach/imx/tzasc.h  |  1 +
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index aad6ece64f18..14b72386ad53 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -76,6 +76,9 @@
 #define MX6_TZASC1_BASE			0x21d0000
 #define MX6_TZASC2_BASE			0x21d4000
 
+#define MX6_GPR_TZASC1_EN		BIT(0)
+#define MX6_GPR_TZASC2_EN		BIT(1)
+
 #define GPR_TZASC_EN					BIT(0)
 #define GPR_TZASC_ID_SWAP_BYPASS		BIT(1)
 #define GPR_TZASC_EN_LOCK				BIT(16)
@@ -293,6 +296,18 @@ void imx6q_tzc380_early_ns_region1(void)
 				  TZC380_REGION_SP_NS_RW);
 }
 
+bool imx6q_tzc380_is_enabled(void)
+{
+	u32 __iomem *gpr = IOMEM(MX6_IOMUXC_BASE_ADDR);
+
+	/*
+	 * MX6_GPR_TZASC1_EN and MX6_GPR_TZASC2_EN are sticky bits which
+	 * preserve their values once set until the next power-up cycle.
+	 */
+	return (readl(&gpr[9]) & (MX6_GPR_TZASC1_EN | MX6_GPR_TZASC2_EN)) ==
+	       (MX6_GPR_TZASC1_EN | MX6_GPR_TZASC2_EN);
+}
+
 void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
index 4d3f26fc82f1..59ec56a5ec60 100644
--- a/include/mach/imx/tzasc.h
+++ b/include/mach/imx/tzasc.h
@@ -7,6 +7,7 @@
 #include <asm/system.h>
 
 void imx6q_tzc380_early_ns_region1(void);
+bool imx6q_tzc380_is_enabled(void);
 void imx8m_tzc380_init(void);
 bool imx8m_tzc380_is_enabled(void);
 
-- 
2.39.5




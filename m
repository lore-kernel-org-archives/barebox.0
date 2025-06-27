Delivery-date: Fri, 27 Jun 2025 16:20:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vw-00BeFb-0L
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 16:20:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV9vv-0004Fe-4s
	for lore@pengutronix.de; Fri, 27 Jun 2025 16:20:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zlKNFR7K8UW9veqPAVNxSHe+GlCWeTV0WyDTzerddsY=; b=1oWqbsxv1T0zOXHF6PNDGsZSf9
	z5FssVEBk93Gl6WbFpcPQqncuq6NrS75OFYyJHtkqxPqm2w9IaWeGpWWm/yhJk2uVYPlfKAqjbz+I
	jOEBtE0Jk4UCNW1jQWfNgBfpyf35MorB7jgXo++cXXB0h9eHY+sulx6v9+WCGo5cclI4UlOVob2P0
	E0hFFBgaxavNUOlu4X+qqwJV4S8GgNv0QlX135pB/jPe5isO/WAEwEtEb5wgTaxupVqzsCl9vuNE7
	9Dcnwii97aP5pUz98cVfVWk/EdxFXwB1dz2QxENtlkAa2Q6wcQ+m9yX2xTxceQYjETIwAiWYXLQPr
	Jq9SJ/XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9vT-0000000Et2V-2fCv;
	Fri, 27 Jun 2025 14:19:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9kQ-0000000ErZN-2Gl3
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:08:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kH-0004vQ-9i; Fri, 27 Jun 2025 16:08:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-005dAb-2s;
	Fri, 27 Jun 2025 16:08:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2R;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:07:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-arm-optee-early-helper-v1-8-4b098e8ac7cd@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=2819;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=5qJlZVwpzfpL1IxCh2KObaFP81GKZf6zFroKOKKbZ+A=;
 b=4I6OMivabJP4Vg5DEFtMjS/atVoTMYzWMaI/YEoKVpyQXp+I8I97R6LXlHgdYeq74tVxN0ytq
 e5U72mQxJI6C/zHs2yKAFi8SRQS5VwMKUGO3K3s7sJXkIB654Ucztj4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_070810_586608_35C6F102 
X-CRM114-Status: GOOD (  15.47  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/14] ARM: mach-imx: tzasc: add
 imx6[q|ul]_tzc380_is_bypassed()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

The TZASC_BYP bits in the IOMUX GPR offer a great way to shoot yourself
in the foot. These bits are cleared by default and with these bits
cleared the TZASC will never check DDR transactions. The TZASC can be
configured normally with the bits cleared, it just doesn't work and all
secure regions can be accessed by the normal worls. These
bits can only be set in the DCD table, trying to set them in code will
make the system hang. As the DCD tables are board specific it's easy to
forget setting them. This patch adds a function that checks if the bits
are set as desired which will be called by the optee-early helper later.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/tzasc.c | 26 ++++++++++++++++++++++++++
 include/mach/imx/tzasc.h  |  2 ++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index 169c4b9801e5fdd01edd3c5661418a945cf21c55..ed20ad8803a2e91b67b5d8c3ab1a4265c4228ec7 100644
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
@@ -303,6 +306,29 @@ void imx6ul_tzc380_early_ns_region1(void)
 				  TZC380_REGION_SP_NS_RW);
 }
 
+bool imx6q_tzc380_is_bypassed(void)
+{
+	u32 __iomem *gpr = IOMEM(MX6_IOMUXC_BASE_ADDR);
+
+	/*
+	 * MX6_GPR_TZASC1_EN and MX6_GPR_TZASC2_EN are sticky bits which
+	 * preserve their values once set until the next power-up cycle.
+	 */
+	return (readl(&gpr[9]) & (MX6_GPR_TZASC1_EN | MX6_GPR_TZASC2_EN)) !=
+	       (MX6_GPR_TZASC1_EN | MX6_GPR_TZASC2_EN);
+}
+
+bool imx6ul_tzc380_is_bypassed(void)
+{
+	u32 __iomem *gpr = IOMEM(MX6_IOMUXC_BASE_ADDR + 0x4000);
+
+	/*
+	 * MX6_GPR_TZASC1_EN is a sticky bit which preserves its value
+	 * once set until the next power-up cycle.
+	 */
+	return !(readl(&gpr[9]) & MX6_GPR_TZASC1_EN);
+}
+
 void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
index eb479ad55c9c101a5fb47fc4a7178b3669b9e44f..0fbcdc2150e63864366a8dddeed2d1b97685903d 100644
--- a/include/mach/imx/tzasc.h
+++ b/include/mach/imx/tzasc.h
@@ -8,6 +8,8 @@
 
 void imx6q_tzc380_early_ns_region1(void);
 void imx6ul_tzc380_early_ns_region1(void);
+bool imx6q_tzc380_is_bypassed(void);
+bool imx6ul_tzc380_is_bypassed(void);
 void imx8m_tzc380_init(void);
 bool imx8m_tzc380_is_enabled(void);
 

-- 
2.39.5




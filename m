Delivery-date: Tue, 19 Dec 2023 18:02:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFdTk-004sJb-0g
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 18:02:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFdTj-0001e5-Dl
	for lore@pengutronix.de; Tue, 19 Dec 2023 18:02:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c2DQVyUs+qTX4Ukl2u5gu1ZsCjw0T6FbIB6kQqGMJfM=; b=0CUCcWz/WN95DZAYMZWUiykku4
	8t40ELyKDhnxFVT9dlvssCBWIg9ValKae5HJ8xoJObJWpHFAybKaD4lktvyCS8hoCql7yRNjicGE3
	9J+bv/fH7n1HRiQGWWX7II+ABXGcynlxgGs/QldnQBszVxtgM0ccV5oGTpWf20qHWm55MEXCVy2gT
	1oq9ICW+6lCBTQqfx0qmWjb6ZhjSEggJX0fBd5fFEnWzL3Fk/W1RwTQmCWh1YfFVDWMrvgta8zQka
	G2t5leOb4O4g8bMGCZKz41t6dRmoihrWHwmRED2ea2nif0d/nrh8hdpItGCEeOGPunUFRtUkiPJ7M
	nicju5dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdSJ-00EnlU-2A;
	Tue, 19 Dec 2023 17:00:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdSG-00EnkH-0p
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 17:00:29 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1rFdSE-0000Kt-QZ; Tue, 19 Dec 2023 18:00:26 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Tue, 19 Dec 2023 18:00:26 +0100
Message-Id: <20231219170026.1413636-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090028_300291_314F4751 
X-CRM114-Status: GOOD (  11.05  )
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
Subject: [PATCH] mfd: rn5t568: add complete register map to header and use it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows lowlevel board code to use these symbols to perform power
sequencing with the PBL PMIC helper functions.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 drivers/mfd/rn5t568.c |  24 +-------
 include/mfd/rn5t568.h | 132 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 133 insertions(+), 23 deletions(-)
 create mode 100644 include/mfd/rn5t568.h

diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index 12de689734d..f1e2eeb0c88 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -16,29 +16,7 @@
 #include <linux/regmap.h>
 #include <reset_source.h>
 #include <restart.h>
-
-#define RN5T568_LSIVER 0x00
-#define RN5T568_OTPVER 0x01
-#define RN5T568_PONHIS 0x09
-# define RN5T568_PONHIS_ON_EXTINPON BIT(3)
-# define RN5T568_PONHIS_ON_REPWRPON BIT(1)
-# define RN5T568_PONHIS_ON_PWRONPON BIT(0)
-#define RN5T568_POFFHIS 0x0a
-# define RN5T568_POFFHIS_N_OEPOFF BIT(7)
-# define RN5T568_POFFHIS_DCLIMPOFF BIT(6)
-# define RN5T568_POFFHIS_WDGPOFF BIT(5)
-# define RN5T568_POFFHIS_CPUPOFF BIT(4)
-# define RN5T568_POFFHIS_IODETPOFF BIT(3)
-# define RN5T568_POFFHIS_VINDETPOFF BIT(2)
-# define RN5T568_POFFHIS_TSHUTPOFF BIT(1)
-# define RN5T568_POFFHIS_PWRONPOFF BIT(0)
-#define RN5T568_SLPCNT 0x0e
-# define RN5T568_SLPCNT_SWPPWROFF BIT(0)
-#define RN5T568_REPCNT 0x0f
-# define RN5T568_REPCNT_OFF_RESETO_16MS 0x30
-# define RN5T568_REPCNT_OFF_REPWRTIM_1000MS 0x06
-# define RN5T568_REPCNT_OFF_REPWRON BIT(0)
-#define RN5T568_MAX_REG 0xbc
+#include <mfd/rn5t568.h>
 
 struct rn5t568 {
 	struct restart_handler restart;
diff --git a/include/mfd/rn5t568.h b/include/mfd/rn5t568.h
new file mode 100644
index 00000000000..eff2b6dbe67
--- /dev/null
+++ b/include/mfd/rn5t568.h
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2014 Beniamino Galvani <b.galvani@gmail.com>
+ * Copyright (C) 2016 Toradex AG
+ */
+
+#ifndef __MFD_RN5T568_H
+#define __MFD_RN5T568_H
+
+/* RN5T568 registers */
+enum {
+	RN5T568_LSIVER		= 0x00,
+	RN5T568_OTPVER		= 0x01,
+	RN5T568_IODAC		= 0x02,
+	RN5T568_VINDAC		= 0x03,
+	RN5T568_OUT32KEN	= 0x05,
+
+	RN5T568_CPUCNT		= 0x06,
+
+	RN5T568_PSWR		= 0x07,
+	RN5T568_PONHIS		= 0x09,
+	RN5T568_POFFHIS		= 0x0A,
+	RN5T568_WATCHDOG	= 0x0B,
+	RN5T568_WATCHDOGCNT	= 0x0C,
+	RN5T568_PWRFUNC		= 0x0D,
+	RN5T568_SLPCNT		= 0x0E,
+	RN5T568_REPCNT		= 0x0F,
+	RN5T568_PWRONTIMSET	= 0x10,
+	RN5T568_NOETIMSETCNT	= 0x11,
+	RN5T568_PWRIREN		= 0x12,
+	RN5T568_PWRIRQ		= 0x13,
+	RN5T568_PWRMON		= 0x14,
+	RN5T568_PWRIRSEL	= 0x15,
+
+	RN5T568_DC1_SLOT	= 0x16,
+	RN5T568_DC2_SLOT	= 0x17,
+	RN5T568_DC3_SLOT	= 0x18,
+	RN5T568_DC4_SLOT	= 0x19,
+
+	RN5T568_LDO1_SLOT	= 0x1B,
+	RN5T568_LDO2_SLOT	= 0x1C,
+	RN5T568_LDO3_SLOT	= 0x1D,
+	RN5T568_LDO4_SLOT	= 0x1E,
+	RN5T568_LDO5_SLOT	= 0x1F,
+
+	RN5T568_PSO0_SLOT	= 0x25,
+	RN5T568_PSO1_SLOT	= 0x26,
+	RN5T568_PSO2_SLOT	= 0x27,
+	RN5T568_PSO3_SLOT	= 0x28,
+
+	RN5T568_LDORTC1_SLOT	= 0x2A,
+
+	RN5T568_DC1CTL		= 0x2C,
+	RN5T568_DC1CTL2		= 0x2D,
+	RN5T568_DC2CTL		= 0x2E,
+	RN5T568_DC2CTL2		= 0x2F,
+	RN5T568_DC3CTL		= 0x30,
+	RN5T568_DC3CTL2		= 0x31,
+	RN5T568_DC4CTL		= 0x32,
+	RN5T568_DC4CTL2		= 0x33,
+
+	RN5T568_DC1DAC		= 0x36,
+	RN5T568_DC2DAC		= 0x37,
+	RN5T568_DC3DAC		= 0x38,
+	RN5T568_DC4DAC		= 0x39,
+
+	RN5T568_DC1DAC_SLP	= 0x3B,
+	RN5T568_DC2DAC_SLP	= 0x3C,
+	RN5T568_DC3DAC_SLP	= 0x3D,
+	RN5T568_DC4DAC_SLP	= 0x3E,
+
+	RN5T568_DCIREN		= 0x40,
+	RN5T568_DCIRQ		= 0x41,
+	RN5T568_DCIRMON		= 0x42,
+
+	RN5T568_LDOEN1		= 0x44,
+	RN5T568_LDOEN2		= 0x45,
+	RN5T568_LDODIS1		= 0x46,
+
+	RN5T568_LDO1DAC		= 0x4C,
+	RN5T568_LDO2DAC		= 0x4D,
+	RN5T568_LDO3DAC		= 0x4E,
+	RN5T568_LDO4DAC		= 0x4F,
+	RN5T568_LDO5DAC		= 0x50,
+
+	RN5T568_LDORTC1DAC	= 0x56,
+	RN5T568_LDORTC2DAC	= 0x57,
+
+	RN5T568_LDO1DAC_SLP	= 0x58,
+	RN5T568_LDO2DAC_SLP	= 0x59,
+	RN5T568_LDO3DAC_SLP	= 0x5A,
+	RN5T568_LDO4DAC_SLP	= 0x5B,
+	RN5T568_LDO5DAC_SLP	= 0x5C,
+
+	RN5T568_IOSEL		= 0x90,
+	RN5T568_IOOUT		= 0x91,
+	RN5T568_GPEDGE1		= 0x92,
+	RN5T568_EN_GPIR		= 0x94,
+	RN5T568_IR_GPR		= 0x95,
+	RN5T568_IR_GPF		= 0x96,
+	RN5T568_MON_IOIN	= 0x97,
+	RN5T568_GPLED_FUNC	= 0x98,
+	RN5T568_INTPOL		= 0x9C,
+	RN5T568_INTEN		= 0x9D,
+	RN5T568_INTMON		= 0x9E,
+
+	RN5T568_PREVINDAC	= 0xB0,
+	RN5T568_OVTEMP		= 0xBC,
+
+	RN5T568_MAX_REG		= 0xBC,
+};
+
+#define RN5T568_PONHIS_ON_EXTINPON		BIT(3)
+#define RN5T568_PONHIS_ON_REPWRPON		BIT(1)
+#define RN5T568_PONHIS_ON_PWRONPON		BIT(0)
+
+#define RN5T568_POFFHIS_N_OEPOFF		BIT(7)
+#define RN5T568_POFFHIS_DCLIMPOFF		BIT(6)
+#define RN5T568_POFFHIS_WDGPOFF			BIT(5)
+#define RN5T568_POFFHIS_CPUPOFF			BIT(4)
+#define RN5T568_POFFHIS_IODETPOFF		BIT(3)
+#define RN5T568_POFFHIS_VINDETPOFF		BIT(2)
+#define RN5T568_POFFHIS_TSHUTPOFF		BIT(1)
+#define RN5T568_POFFHIS_PWRONPOFF		BIT(0)
+
+#define RN5T568_SLPCNT_SWPPWROFF		BIT(0)
+
+#define RN5T568_REPCNT_OFF_RESETO_16MS		0x30
+#define RN5T568_REPCNT_OFF_REPWRTIM_1000MS	0x06
+#define RN5T568_REPCNT_OFF_REPWRON		BIT(0)
+
+#endif
-- 
2.39.2




Delivery-date: Thu, 24 Jun 2021 17:02:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsc-00054y-0Y
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 17:02:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsa-0001lF-K8
	for lore@pengutronix.de; Thu, 24 Jun 2021 17:02:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eM6iiW6srZ4SxTdTvVS+SybG9yoWDiG2YIH9l/P376o=; b=jzkdnnzzR3/b7O
	ryeLnuHXQMhvWKlmtOFyEL6Q1Z85n3kBa455UTTtqzsfItsHCZIYCWMZ2YkGRlNWwd45HjC4FgvCx
	HH6Uicsg39kz6WIHLp0tW5Z4xXN1ThmdMtxR6QBK4hyfv/ENt+9F0YtnOIwM/FwUKkVT6wIBTsxZ4
	r3VTIYJacN35tQfvUhIeCzKj8njB7BPu5H9cs9AeUdMb0gDXeuqUJGBUeXXHBMPHoPF48kx0XAwxe
	9wLyhJkQjEqSneEfYyNIxastyrR7gXAi2/vCozTqGTCyAVQTT2KSyYoPGqPjApsqqvFdGpnW60J8s
	xQCmQgX5KXL1WA1yeeUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwQr0-00F9We-No; Thu, 24 Jun 2021 15:01:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwQqe-00F9Mw-R1
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 15:01:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqd-0000q5-7r
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:55 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0002Ai-Hd
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0053b5-El
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 17:00:48 +0200
Message-Id: <20210624150054.1205422-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210624150054.1205422-1-m.tretter@pengutronix.de>
References: <20210624150054.1205422-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_080057_040883_73718360 
X-CRM114-Status: GOOD (  17.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/7] ARM: zynqmp: set reset source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The reset reason is available in the APB register set on the ZynqMP.
Read the reset reason and set the reset source accordingly.

There might be multiple bits set in the APB register. Use the MSB for
determining the actual reset source.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2:

- Use RESET_JTAG for debugger reset
- Remove unused zynqmp.h
---
 arch/arm/mach-zynqmp/Makefile |  1 +
 arch/arm/mach-zynqmp/zynqmp.c | 72 +++++++++++++++++++++++++++++++++++
 2 files changed, 73 insertions(+)
 create mode 100644 arch/arm/mach-zynqmp/zynqmp.c

diff --git a/arch/arm/mach-zynqmp/Makefile b/arch/arm/mach-zynqmp/Makefile
index 021efc94afaf..14b8a4e46b87 100644
--- a/arch/arm/mach-zynqmp/Makefile
+++ b/arch/arm/mach-zynqmp/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-or-later
 obj-y += firmware-zynqmp.o
+obj-y += zynqmp.o
diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
new file mode 100644
index 000000000000..5871c145bef2
--- /dev/null
+++ b/arch/arm/mach-zynqmp/zynqmp.c
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 Michael Tretter <m.tretter@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/types.h>
+#include <reset_source.h>
+
+#define ZYNQMP_CRL_APB_BASE		0xff5e0000
+#define ZYNQMP_CRL_APB_RESET_REASON	(ZYNQMP_CRL_APB_BASE + 0x220)
+
+/* External POR: The PS_POR_B reset signal pin was asserted. */
+#define ZYNQMP_CRL_APB_RESET_REASON_EXTERNAL   BIT(0)
+/* Internal POR: A system error triggered a POR reset. */
+#define ZYNQMP_CRL_APB_RESET_REASON_INTERNAL   BIT(1)
+/* Internal system reset; A system error triggered a system reset. */
+#define ZYNQMP_CRL_APB_RESET_REASON_PMU        BIT(2)
+/* PS-only reset: Write to PMU_GLOBAL.GLOBAL_RESET [PS_ONLY_RST]. */
+#define ZYNQMP_CRL_APB_RESET_REASON_PSONLY     BIT(3)
+/* External system reset: The PS_SRST_B reset signal pin was asserted. */
+#define ZYNQMP_CRL_APB_RESET_REASON_SRST       BIT(4)
+/* Software system reset: Write to RESET_CTRL [soft_reset]. */
+#define ZYNQMP_CRL_APB_RESET_REASON_SOFT       BIT(5)
+/* Software debugger reset: Write to BLOCKONLY_RST [debug_only]. */
+#define ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS  BIT(6)
+
+struct zynqmp_reset_reason {
+	u32 mask;
+	enum reset_src_type type;
+};
+
+static const struct zynqmp_reset_reason reset_reasons[] = {
+	{ ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS,	RESET_JTAG },
+	{ ZYNQMP_CRL_APB_RESET_REASON_SOFT,		RESET_RST },
+	{ ZYNQMP_CRL_APB_RESET_REASON_SRST,		RESET_POR },
+	{ ZYNQMP_CRL_APB_RESET_REASON_PSONLY,		RESET_POR },
+	{ ZYNQMP_CRL_APB_RESET_REASON_PMU,		RESET_POR },
+	{ ZYNQMP_CRL_APB_RESET_REASON_INTERNAL,		RESET_POR },
+	{ ZYNQMP_CRL_APB_RESET_REASON_EXTERNAL,		RESET_POR },
+	{ /* sentinel */ }
+};
+
+static enum reset_src_type zynqmp_get_reset_src(void)
+{
+	enum reset_src_type type = RESET_UKWN;
+	unsigned int i;
+	u32 val;
+
+	val = readl(ZYNQMP_CRL_APB_RESET_REASON);
+
+	for (i = 0; i < ARRAY_SIZE(reset_reasons); i++) {
+		if (val & reset_reasons[i].mask) {
+			type = reset_reasons[i].type;
+			break;
+		}
+	}
+
+	pr_info("ZynqMP reset reason %s (ZYNQMP_CRL_APB_RESET_REASON: 0x%08x)\n",
+		reset_source_to_string(type), val);
+
+	return type;
+}
+
+static int zynqmp_init(void)
+{
+	reset_source_set(zynqmp_get_reset_src());
+
+	return 0;
+}
+postcore_initcall(zynqmp_init);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


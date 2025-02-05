Delivery-date: Wed, 05 Feb 2025 10:49:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1k-008kXP-1Z
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:49:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1j-0004ec-V5
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:49:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N7UL3DUsMc8WEWd07bX8Y7xzYKwkMRQMMLrA6U+NRI0=; b=rZwWTM+fX6Gh7TosU0cS7U7C4+
	wFVk3Sf8Wm0p/ntQT7ki/VgfuC1LfcUAVbp6Thz8huA199RvhAy/JUc+y1GXkIQs8uGH7BmNnacaf
	ssunGhKv2jkpO2N602mJlUGYdoj2kkcHOm2p9dlJqT0IkTFzCOUz+3E5lq9lQhvE8iPT9CVLIQXAN
	kKGu46sq1N6G1okkEykdWwMZCOlfDgkcUq/mfi1FxSzUmUQZWY1xeVZJsxGZXXow8ZnL/p1C9jD3u
	DxedOjP/UpCQND3O3SCgwApIA76vdSX4uah21f+YvfHMeeUj3Lw7K5jGANGc5egCbi2grkmNi4ptZ
	F/SlhbRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc17-00000002kHI-46jb;
	Wed, 05 Feb 2025 09:48:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc13-00000002kDf-0DDB
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00048P-Rb; Wed, 05 Feb 2025 10:48:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-003c2g-1F;
	Wed, 05 Feb 2025 10:48:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00F0Mw-0w;
	Wed, 05 Feb 2025 10:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 05 Feb 2025 10:48:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-k3-emmc-v1-5-06679246be41@pengutronix.de>
References: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
In-Reply-To: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738748893; l=1581;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lPKsmuLchXRAik64kz9To1gOUS/KIFKshyPUTT6LmIc=;
 b=RnuewHsUfxZNyU0gUkbjmPCoXL1mPkGsUCtJyK7EYL03hXe4yDoUDI7kYaYlymg7YkPALNOIi
 g/4uaZ3tbqqAQaKEZMQ57dKcy8KuREPDycExXEd1Q2tNwymDtXObbfj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014817_113505_154FA71C 
X-CRM114-Status: GOOD (  14.67  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] ARM: am625-sk: enable 32k crystal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The am625-sk board has the 32k crystal equipped. Enable it to source the
RTC from the crystal rather than from the imprecise RC oscillator.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/am625-sk/Makefile |  1 +
 arch/arm/boards/am625-sk/board.c  | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm/boards/am625-sk/Makefile b/arch/arm/boards/am625-sk/Makefile
index 1ff9e75a00..8c45b1e154 100644
--- a/arch/arm/boards/am625-sk/Makefile
+++ b/arch/arm/boards/am625-sk/Makefile
@@ -1,3 +1,4 @@
 pbl-y += lowlevel.o
+obj-y += board.o
 pbl-$(CONFIG_MACH_K3_CORTEX_A) += entry.o
 pbl-$(CONFIG_MACH_K3_CORTEX_R5) += entry-r5.o am625-sk-ddr.o am625sip-sk-ddr.o
diff --git a/arch/arm/boards/am625-sk/board.c b/arch/arm/boards/am625-sk/board.c
new file mode 100644
index 0000000000..fd3bcdeac6
--- /dev/null
+++ b/arch/arm/boards/am625-sk/board.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "am625-sk: " fmt
+
+#include <linux/kernel.h>
+#include <mach/k3/common.h>
+#include <driver.h>
+#include <bbu.h>
+
+static int am625_sk_probe(struct device *dev)
+{
+	am625_enable_32k_crystal();
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id am625_sk_ids[] = {
+	{
+		.compatible = "ti,am625-sk",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver am625_sk_driver = {
+	.name = "am625-sk",
+	.probe = am625_sk_probe,
+	.of_compatible = am625_sk_ids,
+};
+coredevice_platform_driver(am625_sk_driver);

-- 
2.39.5




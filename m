Delivery-date: Mon, 23 Jun 2025 19:06:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkcq-00AKcx-2R
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 19:06:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkco-00041r-UV
	for lore@pengutronix.de; Mon, 23 Jun 2025 19:06:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5O47ZukxusMS+ayMQ4F0JUMi6aYErIotMwMza6BzsVg=; b=lAPczc8XSiwXb+xDSkKFy9Tc8E
	7ipn3iu8lvVy+O3Zd+RlpIl8lMIHH9hs2U2ngIdmjNgJriOVssBqaxceYuiFoAjEX2pHCkN+UDbLV
	28hmEVSpCTL//IuD1iG4BKH8WWTC7s+OQD6bbPl8NnTAI/Nc7HLFuOC574Vg2pdH/NilBTzS4iedD
	HXJy1rR1MQRrbFTXmEgWY0Wsvzdrer2GVDzmDLSYXj8RB7cmTIUjiIIbDwqKTvKrOrcHw8Ie+7+1K
	2ZjtMr383EODS59zRAz35EatlxxZKtViPsOiUcGAuP0hatbBHuZJqWX9QIKZuhyjxvYXScOwrJASL
	q1jSEUtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTkc6-00000003Vhe-0n2b;
	Mon, 23 Jun 2025 17:05:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThgO-00000002xL6-0kZl
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 13:58:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uThgL-0000r6-Mq; Mon, 23 Jun 2025 15:57:57 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 23 Jun 2025 15:57:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-3-e9de9e31b2c1@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_065800_257901_81F5109A 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 03/10] reset: reset-socfpga: build only for 32-bit
 socfpga
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The 64-bit SoCFPGA platforms will use reset-simple.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/reset/Kconfig  | 6 ++++++
 drivers/reset/Makefile | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 16c05d50f0e30cb93609c6fbaa4287975894509a..c3779f087490f57deeabf2178723983a87d0446c 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -57,4 +57,10 @@ config RESET_SCMI
 	  This driver uses SCMI Message Protocol to interact with the
 	  firmware controlling all the reset signals.
 
+config RESET_SOCFPGA32
+	bool "SoCFPGA 32-bit Reset Driver"
+	default ARCH_SOCFPGA && 32BIT
+	help
+	  This enables the reset controller driver for 32-bit SoCFPGA platforms.
+
 endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index b1668433d76af89a49ef577ad9d0cdc4af48de8d..a446cb20d0b7ddb6404fdf385498bdf6a076e34e 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_RESET_CONTROLLER) += core.o
 obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
-obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
+obj-$(CONFIG_RESET_SOCFPGA32) += reset-socfpga.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_STARFIVE) += reset-starfive-vic.o
 obj-$(CONFIG_RESET_SCMI) += reset-scmi.o

-- 
2.46.0




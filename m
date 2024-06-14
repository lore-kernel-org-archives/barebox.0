Delivery-date: Fri, 14 Jun 2024 15:37:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI76z-005x6k-2g
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 15:37:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI76z-0002D3-8G
	for lore@pengutronix.de; Fri, 14 Jun 2024 15:37:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o6qf4hpnUPDckp6e6Q2RnnWF8ZbsTV7BHph/PhJcglE=; b=aqdC1R4Z7U4vWOkRb5qm31gg1y
	A1CSdInuyrwR1AuenHXqpXByJgjFR+G7DK7fFoIfKXyDq5U1OjVaarh9PAZfhKeKFXI5GF8b5fiX9
	3EvGZ/rilKomIxo8pdU1Yn1SOWsxiazXTYgMy4FRm+fZBgusR8tV/mG/POXZuzEe24AyOtSRSJLx7
	Flqr6I8WeJ9TAARKiI5HHmGwCiJn/phvrwHYnxsxRBiyeLFENaJL6Lb4Enx398AywSkjlRk+iSMdj
	ors1Q7wodFvXGogAzT28HixMVAyh7cG4n+OBcgKb9J6bvSunGdjHp0HN0u5fxmsQ1gXyx5K7f1jT+
	PTcdpECA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI76I-00000002tHt-2zT9;
	Fri, 14 Jun 2024 13:36:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI768-00000002tDP-0U1s
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 13:36:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI764-0001yg-E3; Fri, 14 Jun 2024 15:36:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI764-002HR0-13; Fri, 14 Jun 2024 15:36:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI763-00AI7X-2y;
	Fri, 14 Jun 2024 15:36:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 14 Jun 2024 15:36:01 +0200
Message-Id: <20240614133603.2452891-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240614133603.2452891-1-s.hauer@pengutronix.de>
References: <20240614133603.2452891-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_063608_227504_A1698998 
X-CRM114-Status: GOOD (  14.47  )
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
Subject: [PATCH 1/3] mtd: nand: Kconfig: whitespace cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use tabs instead of spaces for indentation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/Kconfig | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index cf65a90db1..a48670b190 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -147,19 +147,19 @@ config MTD_NAND_NOMADIK
 	  Driver for the NAND flash controller on the Nomadik, with ECC.
 
 config MTD_NAND_DENALI
-        tristate "Support Denali NAND controller"
-        depends on HAS_DMA
-        help
-          Enable support for the Denali NAND controller.  This should be
-          combined with either the PCI or platform drivers to provide device
-          registration.
+	tristate "Support Denali NAND controller"
+	depends on HAS_DMA
+	help
+	  Enable support for the Denali NAND controller.  This should be
+	  combined with either the PCI or platform drivers to provide device
+	  registration.
 
 config MTD_NAND_DENALI_DT
-        tristate "Support Denali NAND controller as a DT device"
-        depends on HAVE_CLK && MTD_NAND_DENALI
-        help
-          Enable the driver for NAND flash on platforms using a Denali NAND
-          controller as a DT device.
+	tristate "Support Denali NAND controller as a DT device"
+	depends on HAVE_CLK && MTD_NAND_DENALI
+	help
+	  Enable the driver for NAND flash on platforms using a Denali NAND
+	  controller as a DT device.
 
 if MTD_NAND_DENALI
 
-- 
2.39.2




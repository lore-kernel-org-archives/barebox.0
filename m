Delivery-date: Fri, 14 Jun 2024 16:49:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI8F7-005ysI-30
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 16:49:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI8F7-0006dC-9l
	for lore@pengutronix.de; Fri, 14 Jun 2024 16:49:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nIgG2QKpm6fv5okHbFYumyrglkb7GHjf3yuyxai9l/0=; b=L+K41Kd/STI8r1R40ERz7Ew0vA
	5HNv2aypcuV3mc28N8SeP3ps3oPJ8aVwyavLMxRZLqx328WfG0iiM3PkFAWw32fSKYYyT3Zks3BM1
	lE2YuBHb4sIbjRxOeqDMKHtvbP8wuVt6muYFzQuv9RdWF5oduHpnbASf+6scgJemjebvIOrZVsdmo
	vRVCqX9HKLKrbo4n3qroskIVNsM0SC2H7lWGr5udR8OPya3aOdlrRHJSQRMnQzt3/80gOn3GCz9ei
	AWT2h37p1yqMh+GbnoC+mbBdWOheNzp8mRbbCgWJAjyVsvo21fejuVBwMHBqqrO7SFlm9K2g2sCLO
	8ngGL8jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI8En-000000036Gi-0QgZ;
	Fri, 14 Jun 2024 14:49:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI768-00000002tDQ-0YQQ
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 13:36:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI764-0001yh-F8; Fri, 14 Jun 2024 15:36:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI764-002HR3-2q; Fri, 14 Jun 2024 15:36:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI763-00AI7X-39;
	Fri, 14 Jun 2024 15:36:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 14 Jun 2024 15:36:02 +0200
Message-Id: <20240614133603.2452891-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240614133603.2452891-1-s.hauer@pengutronix.de>
References: <20240614133603.2452891-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_063608_247001_6C24B8A9 
X-CRM114-Status: GOOD (  13.91  )
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
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] mtd: nand: make exec_op optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While exec_op is the way to go for new drivers, not all drivers use it
yet. Make support for it optional to safe a few bytes of binary space
when only drivers without exec_op are compiled in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/Kconfig     | 7 +++++++
 drivers/mtd/nand/raw/internals.h | 5 +++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index a48670b190..e9d1b83706 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -32,12 +32,16 @@ config NAND_ALLOW_ERASE_BAD
 	  to '1' it will be allowed to erase bad blocks. This is a potientially
 	  dangerous operation, so if unsure say no to this option.
 
+config NAND_NEED_EXEC_OP
+	bool
+
 comment "Raw/parallel NAND flash controllers"
 
 config NAND_IMX
 	bool
 	prompt "i.MX21 to 53 NAND driver aka 'mxc', for NFC"
 	depends on ARCH_IMX
+	select NAND_NEED_EXEC_OP
 	help
 	  Support for NAND flash on Freescale/NXP i.MX devices.  This is for the
 	  "MXC" series:  i.MX21/25/27/31/35/51/53.
@@ -104,6 +108,7 @@ config NAND_STM32
 	select STM32_FMC2_EBI if ARCH_STM32MP
 	select RESET_CONTROLLER if ARCH_STM32MP
 	select RESET_SIMPLE if ARCH_STM32MP
+	select NAND_NEED_EXEC_OP
 	help
 	  Enables support for NAND Flash chips on SoCs containing the FMC2
 	  NAND controller. This controller is found on STM32MP SoCs.
@@ -114,6 +119,7 @@ config NAND_ATMEL
 	bool
 	prompt "Atmel (AT91SAM9xxx) NAND driver"
 	select GENERIC_ALLOCATOR if OFDEVICE
+	select NAND_NEED_EXEC_OP
 	depends on ARCH_AT91 || (OFDEVICE && COMPILE_TEST)
 
 config NAND_ATMEL_LEGACY
@@ -149,6 +155,7 @@ config MTD_NAND_NOMADIK
 config MTD_NAND_DENALI
 	tristate "Support Denali NAND controller"
 	depends on HAS_DMA
+	select NAND_NEED_EXEC_OP
 	help
 	  Enable support for the Denali NAND controller.  This should be
 	  combined with either the PCI or platform drivers to provide device
diff --git a/drivers/mtd/nand/raw/internals.h b/drivers/mtd/nand/raw/internals.h
index 6dab25ecab..191244801b 100644
--- a/drivers/mtd/nand/raw/internals.h
+++ b/drivers/mtd/nand/raw/internals.h
@@ -118,6 +118,11 @@ static inline bool nand_has_exec_op(struct nand_chip *chip)
 	    !chip->controller->ops->exec_op)
 		return false;
 
+	if (!IS_ENABLED(CONFIG_NAND_NEED_EXEC_OP)) {
+		pr_err("driver needs exec_op, but CONFIG_NAND_NEED_EXEC_OP is disabled\n");
+		return false;
+	}
+
 	return true;
 }
 
-- 
2.39.2




Delivery-date: Tue, 16 Sep 2025 11:33:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyS3l-003dvF-2e
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 11:33:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyS3l-00055c-6l
	for lore@pengutronix.de; Tue, 16 Sep 2025 11:33:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Brs2ZGF5tRDJaqZso2t/QwQdu3SWnL7rVut0QK3Z5Ws=; b=ytNMyxX3iM+1g4bqYQHXzrB/26
	IXaBswxw5Hvcm+nrvmRsFwOgy8HflNqr+enZ/MKw0xmgW1R/DEqHPzwdX4SeJgtD70+dhOO0SJjSx
	zbE2gh0ymoFengeRDFNwPGap8dPLecL79m2lkSNjhkv5hHJbDqpdC2tS4jWkbLtTE8HyEVK4GlVk1
	o9m0cvw4qRWLY6LfWb57Sjv4cNkojHPyviyGFg569wkjhdgSUmt8TeJ2K2ahO2lcIhGMpaat+2T72
	YRWPZe1utrEJysG8GQkjT5fjVAON/5PJSuCgjvJDEtXDJaGDSS9iDLbkRE7n67gWXfZVcj7dT3MGf
	iIznoOnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyS3H-00000007ODP-3AYE;
	Tue, 16 Sep 2025 09:32:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyS3F-00000007OCg-1Z3v
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 09:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyS3C-0004yK-Fu; Tue, 16 Sep 2025 11:32:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyS3C-001Z8a-0x;
	Tue, 16 Sep 2025 11:32:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyS3C-00000002zKc-0n5L;
	Tue, 16 Sep 2025 11:32:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Sep 2025 11:32:37 +0200
Message-ID: <20250916093237.712407-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_023241_412651_89E0966C 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] drivers: treewide: Do not use NULL as driver_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Several drivers in the tree use an enum for the chip type casted to int
as driver_data. This comes with the problem that device_get_match_data()
returns NULL for these devices and a potential error check bails out
then.

This patch changes the enums used by the drivers to start from 1 instead
of 0 so that the return value of device_get_match_data() can safely
checked for being NULL.

Most drivers do not check the return value anyway, but fec_imx.c does
which causes the driver to no longer work on i.MX27. This issue is fixed
here.

Fixes: Fixes: 20d87123a6 ("treewide: replace dev_get_drvdata with device_get_match_data")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/nand_mxs.c | 2 +-
 drivers/net/fec_imx.h           | 2 +-
 drivers/net/fsl-fman.c          | 2 +-
 drivers/regulator/fan53555.c    | 2 +-
 include/linux/mfd/axp20x.h      | 2 +-
 include/mfd/bd71837.h           | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_mxs.c b/drivers/mtd/nand/raw/nand_mxs.c
index 02f8546b87..4293f4e0e0 100644
--- a/drivers/mtd/nand/raw/nand_mxs.c
+++ b/drivers/mtd/nand/raw/nand_mxs.c
@@ -38,7 +38,7 @@
 #include "internals.h"
 
 enum gpmi_type {
-	GPMI_MXS,
+	GPMI_MXS = 1,
 	GPMI_IMX6,
 };
 
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 1aaff87fdd..33b8db2745 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -114,7 +114,7 @@ struct buffer_descriptor {
 };
 
 enum fec_type {
-	FEC_TYPE_IMX27,
+	FEC_TYPE_IMX27 = 1,
 	FEC_TYPE_IMX28,
 	FEC_TYPE_IMX6,
 };
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index bde054d751..ac716c7468 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -123,7 +123,7 @@ struct fsl_fman_mdio {
 };
 
 enum fman_port_type {
-	FMAN_PORT_TYPE_RX = 0,	/* RX Port */
+	FMAN_PORT_TYPE_RX = 1,	/* RX Port */
 	FMAN_PORT_TYPE_TX,	/* TX Port */
 };
 
diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index 2dcc6f5394..7477543915 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -44,7 +44,7 @@ enum {
 };
 
 enum fan53555_vendor {
-	FAN53526_VENDOR_FAIRCHILD = 0,
+	FAN53526_VENDOR_FAIRCHILD = 1,
 	FAN53555_VENDOR_FAIRCHILD,
 	FAN53555_VENDOR_ROCKCHIP,	/* RK8600, RK8601 */
 	RK8602_VENDOR_ROCKCHIP,		/* RK8602, RK8603 */
diff --git a/include/linux/mfd/axp20x.h b/include/linux/mfd/axp20x.h
index 93d303c459..0ba4568faf 100644
--- a/include/linux/mfd/axp20x.h
+++ b/include/linux/mfd/axp20x.h
@@ -11,7 +11,7 @@
 #include <poweroff.h>
 
 enum axp20x_variants {
-	AXP152_ID = 0,
+	AXP152_ID = 1,
 	AXP202_ID,
 	AXP209_ID,
 	AXP221_ID,
diff --git a/include/mfd/bd71837.h b/include/mfd/bd71837.h
index 4e285a647a..ab4cc57c88 100644
--- a/include/mfd/bd71837.h
+++ b/include/mfd/bd71837.h
@@ -7,7 +7,7 @@
 #define BD718XX_REGULATOR_DRIVER "bd718x7_regulator"
 
 enum {
-	ROHM_CHIP_TYPE_BD71837 = 0,
+	ROHM_CHIP_TYPE_BD71837 = 1,
 	ROHM_CHIP_TYPE_BD71847,
 	ROHM_CHIP_TYPE_BD70528,
 	ROHM_CHIP_TYPE_AMOUNT
-- 
2.47.3




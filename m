Delivery-date: Wed, 16 Jun 2021 08:34:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8Z-0000G9-HA
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 08:34:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8X-0000G5-Ns
	for lore@pengutronix.de; Wed, 16 Jun 2021 08:34:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNtQqDpk626zzEnLh/PkZf5KelgQnSPnflFbbLMyvb4=; b=tUIyanQ3SUvC9w
	SrlXFUiCE4bKV8HdiaZKtCocgHuO8kuSqXwXeY4/NYU5BPE++NtDZu1TNA8FVFkzR1v8eERU1s1eR
	W0C/Grt7T4WGLrE5lP6MjdzjYaIQ1rjDSINSiEAncT+/UFWeFJ8pf8jj/OB+5j/uveENs7GAvGpl4
	Fvvnn1Jm6a4ekn0mII4siEQyIg0YuAlHrW5o0jXDzLDFX+9IufNDe9xx4tabBJBPYIIv4ENADT2ib
	fPekT1JVZe34ZIT3Q//GHzh76mA9mvu+DX1IfJFQNorl/inaH/lGONXfAoDm/v9+kMgdjuYGoYsC6
	HrYysz2z+Y0GtGllupAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltP7G-00560B-2Q; Wed, 16 Jun 2021 06:33:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltP6m-0055o7-66
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 06:33:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6i-0008Ic-AE
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:33:00 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6h-00049j-KG
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:32:59 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Jun 2021 08:32:41 +0200
Message-Id: <20210616063246.14900-5-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
References: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_233304_345601_EAE3BDAD 
X-CRM114-Status: GOOD (  24.33  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 05/10] firmware: import fpga-mgr.h from linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of defining the fpga-mgr structure in the socfpga driver, import
the fpga-mgr.h file from linux v4.13.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/firmware/socfpga.c |   9 +---
 include/firmware.h         |   1 +
 include/fpga-mgr.h         | 102 +++++++++++++++++++++++++++++++++++++
 3 files changed, 104 insertions(+), 8 deletions(-)
 create mode 100644 include/fpga-mgr.h

diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 14875214b1aa..605c931604c9 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -27,6 +27,7 @@
  */
 
 #include <firmware.h>
+#include <fpga-mgr.h>
 #include <command.h>
 #include <common.h>
 #include <malloc.h>
@@ -83,14 +84,6 @@
 extern void socfpga_sdram_apply_static_cfg(void __iomem *sdrctrlgrp);
 extern void socfpga_sdram_apply_static_cfg_end(void *);
 
-struct fpgamgr {
-	struct firmware_handler fh;
-	struct device_d dev;
-	void __iomem *regs;
-	void __iomem *regs_data;
-	int programmed;
-};
-
 /* Get the FPGA mode */
 static uint32_t socfpga_fpgamgr_get_mode(struct fpgamgr *mgr)
 {
diff --git a/include/firmware.h b/include/firmware.h
index 19777d9bf711..2fef97a48f56 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -13,6 +13,7 @@ struct firmware_handler {
 	char *id; /* unique identifier for this firmware device */
 	char *model; /* description for this device */
 	struct device_d *dev;
+	void *priv;
 	/* called once to prepare the firmware's programming cycle */
 	int (*open)(struct firmware_handler*);
 	/* called multiple times to program the firmware with the given data */
diff --git a/include/fpga-mgr.h b/include/fpga-mgr.h
new file mode 100644
index 000000000000..a120b3918990
--- /dev/null
+++ b/include/fpga-mgr.h
@@ -0,0 +1,102 @@
+/*
+ * FPGA Framework
+ *
+ *  Copyright (C) 2013-2015 Altera Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+#ifndef _LINUX_FPGA_MGR_H
+#define _LINUX_FPGA_MGR_H
+
+#include <firmware.h>
+
+struct fpga_manager;
+
+/**
+ * enum fpga_mgr_states - fpga framework states
+ * @FPGA_MGR_STATE_UNKNOWN: can't determine state
+ * @FPGA_MGR_STATE_POWER_OFF: FPGA power is off
+ * @FPGA_MGR_STATE_POWER_UP: FPGA reports power is up
+ * @FPGA_MGR_STATE_RESET: FPGA in reset state
+ * @FPGA_MGR_STATE_FIRMWARE_REQ: firmware request in progress
+ * @FPGA_MGR_STATE_FIRMWARE_REQ_ERR: firmware request failed
+ * @FPGA_MGR_STATE_WRITE_INIT: preparing FPGA for programming
+ * @FPGA_MGR_STATE_WRITE_INIT_ERR: Error during WRITE_INIT stage
+ * @FPGA_MGR_STATE_WRITE: writing image to FPGA
+ * @FPGA_MGR_STATE_WRITE_ERR: Error while writing FPGA
+ * @FPGA_MGR_STATE_WRITE_COMPLETE: Doing post programming steps
+ * @FPGA_MGR_STATE_WRITE_COMPLETE_ERR: Error during WRITE_COMPLETE
+ * @FPGA_MGR_STATE_OPERATING: FPGA is programmed and operating
+ */
+enum fpga_mgr_states {
+	/* default FPGA states */
+	FPGA_MGR_STATE_UNKNOWN,
+	FPGA_MGR_STATE_POWER_OFF,
+	FPGA_MGR_STATE_POWER_UP,
+	FPGA_MGR_STATE_RESET,
+
+	/* getting an image for loading */
+	FPGA_MGR_STATE_FIRMWARE_REQ,
+	FPGA_MGR_STATE_FIRMWARE_REQ_ERR,
+
+	/* write sequence: init, write, complete */
+	FPGA_MGR_STATE_WRITE_INIT,
+	FPGA_MGR_STATE_WRITE_INIT_ERR,
+	FPGA_MGR_STATE_WRITE,
+	FPGA_MGR_STATE_WRITE_ERR,
+	FPGA_MGR_STATE_WRITE_COMPLETE,
+	FPGA_MGR_STATE_WRITE_COMPLETE_ERR,
+
+	/* fpga is programmed and operating */
+	FPGA_MGR_STATE_OPERATING,
+};
+
+/*
+ * FPGA Manager flags
+ * FPGA_MGR_PARTIAL_RECONFIG: do partial reconfiguration if supported
+ * FPGA_MGR_EXTERNAL_CONFIG: FPGA has been configured prior to Linux booting
+ * FPGA_MGR_BITSTREAM_LSB_FIRST: SPI bitstream bit order is LSB first
+ * FPGA_MGR_COMPRESSED_BITSTREAM: FPGA bitstream is compressed
+ */
+#define FPGA_MGR_PARTIAL_RECONFIG	BIT(0)
+#define FPGA_MGR_EXTERNAL_CONFIG	BIT(1)
+#define FPGA_MGR_ENCRYPTED_BITSTREAM	BIT(2)
+#define FPGA_MGR_BITSTREAM_LSB_FIRST	BIT(3)
+#define FPGA_MGR_COMPRESSED_BITSTREAM	BIT(4)
+
+/**
+ * struct fpga_image_info - information specific to a FPGA image
+ * @flags: boolean flags as defined above
+ * @enable_timeout_us: maximum time to enable traffic through bridge (uSec)
+ * @disable_timeout_us: maximum time to disable traffic through bridge (uSec)
+ * @config_complete_timeout_us: maximum time for FPGA to switch to operating
+ *	   status in the write_complete op.
+ */
+struct fpga_image_info {
+	u32 flags;
+	u32 enable_timeout_us;
+	u32 disable_timeout_us;
+	u32 config_complete_timeout_us;
+};
+
+struct fpgamgr {
+	struct firmware_handler fh;
+	struct device_d dev;
+	void *priv;
+	void __iomem *regs;
+	void __iomem *regs_data;
+	int programmed;
+};
+
+
+#endif /*_LINUX_FPGA_MGR_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


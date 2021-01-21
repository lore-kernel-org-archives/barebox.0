Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YAH-0001lh-AD
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 11:30:21 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Thu, 21 Jan 2021 12:29:53 +0100
Message-Id: <20210121112958.25937-8-str@pengutronix.de>
In-Reply-To: <20210121112958.25937-1-str@pengutronix.de>
References: <20210121112958.25937-1-str@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/13] firmware: import fpga-mgr.h from linux
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

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
index 14875214b1..605c931604 100644
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
index 19777d9bf7..2fef97a48f 100644
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
index 0000000000..a120b39189
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
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUvw-0006Us-7N
 for barebox@lists.infradead.org; Tue, 28 May 2019 05:46:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id w22so10264085pgi.6
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 22:45:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 22:45:13 -0700
Message-Id: <20190528054513.21313-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190528054513.21313-1-andrew.smirnov@gmail.com>
References: <20190528054513.21313-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] Documentation: zii-imx8mq-dev: Update OpenOCD usage
 documentation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Update various files in zii-imx8mq-dev:

    - Add bootstrap.sh to match other boards

    - Cosmetic update to openocd.cfg to match the style of other ZII
      boards

    - Update readme.rst to reflecte the chagnes

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../boards/imx/zii-imx8mq-dev/bootstrap.sh    |  6 ++
 .../boards/imx/zii-imx8mq-dev/openocd.cfg     | 99 ++++++++++---------
 .../boards/imx/zii-imx8mq-dev/readme.rst      |  4 +-
 3 files changed, 59 insertions(+), 50 deletions(-)
 create mode 100755 Documentation/boards/imx/zii-imx8mq-dev/bootstrap.sh

diff --git a/Documentation/boards/imx/zii-imx8mq-dev/bootstrap.sh b/Documentation/boards/imx/zii-imx8mq-dev/bootstrap.sh
new file mode 100755
index 000000000..7342e890e
--- /dev/null
+++ b/Documentation/boards/imx/zii-imx8mq-dev/bootstrap.sh
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+OPENOCD=${OPENOCD:-openocd}
+DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
+
+${OPENOCD} -f ${DIR}/openocd.cfg --command "adapter_khz 10000; init; reset init; start_barebox"
diff --git a/Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg b/Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg
index 31f94227e..cc0bec6b7 100644
--- a/Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg
+++ b/Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg
@@ -1,3 +1,7 @@
+#
+# Board configuration file for the Zodiac RDU3 boards
+#
+
 interface ftdi
 ftdi_vid_pid 0x0403 0x6011
 
@@ -5,13 +9,11 @@ ftdi_layout_init 0x0038 0x003b
 ftdi_layout_signal nSRST -data 0x0010
 ftdi_layout_signal LED -data 0x0020
 
-# Board has a standard ARM-20 JTAG connector with
-# nSRST available.
-reset_config srst_only srst_push_pull connect_deassert_srst
-
 # select JTAG
 transport select jtag
 
+reset_config srst_only srst_push_pull connect_deassert_srst
+
 # set a slow default JTAG clock, can be overridden later
 adapter_khz 1000
 
@@ -27,60 +29,61 @@ source [find target/imx8m.cfg]
 source [find mem_helper.tcl]
 
 proc ddr_init { } {
-     #
-     # We use the same start address as is configured in our i.MX boot
-     # header (address originally taken from U-Boot).
-     #
-     set IMX8MQ_TCM_BASE_ADDR	0x007e1000
-     set IMX8MQ_TCM_MAX_SIZE	0x3f000
-     #
-     # Header word at offset 0x28 is not used on AArch64 and is just
-     # filled with placeholder value 0xffff_ffff, see
-     # arch/arm/include/asm/barebox-arm-head.h for more details
-     #
-     set RDU3_TCM_MAIC_LOCATION	[expr $IMX8MQ_TCM_BASE_ADDR + 0x28]
-     set RDU3_TCM_MAGIC_REQUEST	0xdeadbeef
-     set RDU3_TCM_MAGIC_REPLY	0xbaadf00d
-
-     echo "==== Uploading DDR helper ===="
-
-     halt
-     load_image images/start_zii_imx8mq_dev.pblb \
-     		$IMX8MQ_TCM_BASE_ADDR \
+	echo "Bootstrap: Initializing DDR"
+	#
+	# We use the same start address as is configured in our i.MX boot
+	# header (address originally taken from U-Boot).
+	#
+	set IMX8MQ_TCM_BASE_ADDR	0x007e1000
+	set IMX8MQ_TCM_MAX_SIZE	0x3f000
+	#
+	# Header word at offset 0x28 is not used on AArch64 and is just
+	# filled with placeholder value 0xffff_ffff, see
+	# arch/arm/include/asm/barebox-arm-head.h for more details
+	#
+	set RDU3_TCM_MAIC_LOCATION	[expr $IMX8MQ_TCM_BASE_ADDR + 0x28]
+	set RDU3_TCM_MAGIC_REQUEST	0xdeadbeef
+	set RDU3_TCM_MAGIC_REPLY	0xbaadf00d
+
+	echo "Bootstrap: Uploading DDR helper"
+
+	halt
+	load_image images/start_zii_imx8mq_dev.pblb \
+		$IMX8MQ_TCM_BASE_ADDR \
 		bin \
 		$IMX8MQ_TCM_BASE_ADDR \
 		$IMX8MQ_TCM_MAX_SIZE
 
-     echo "==== Running DDR helper ===="
+	echo "Bootstrap: Running DDR helper"
 
-     mww phys $RDU3_TCM_MAIC_LOCATION $RDU3_TCM_MAGIC_REQUEST
-     resume $IMX8MQ_TCM_BASE_ADDR
+	mww phys $RDU3_TCM_MAIC_LOCATION $RDU3_TCM_MAGIC_REQUEST
+	resume $IMX8MQ_TCM_BASE_ADDR
 
-     echo "==== Waiting for DDR helper to finish ===="
+	echo "Bootstrap: Waiting for DDR helper to finish"
 
-     if {[catch {wait_halt} errmsg] ||
-     	 [mrw $RDU3_TCM_MAIC_LOCATION] != $RDU3_TCM_MAGIC_REPLY} {
-	echo "==== DDR initialization FAILED ===="
-     } else {
-	echo "==== DDR is ready ===="
-     }
+	if {[catch {wait_halt} errmsg] ||
+	    [mrw $RDU3_TCM_MAIC_LOCATION] != $RDU3_TCM_MAGIC_REPLY} {
+		echo "Bootstrap: DDR initialization FAILED"
+	} else {
+		echo "Bootstrap: DDR is ready"
+	}
 }
 
 proc start_barebox {} {
-     #
-     # We have to place our image at MX8MQ_ATF_BL33_BASE_ADDR in order
-     # to be able to initialize ATF firmware since that's where it
-     # expects entry point to BL33 would be
-     #
-     set MX8MQ_ATF_BL33_BASE_ADDR	0x40200000
-
-     echo "==== Starting Barebox ===="
-     load_image images/start_zii_imx8mq_dev.pblb $MX8MQ_ATF_BL33_BASE_ADDR bin
-     resume $MX8MQ_ATF_BL33_BASE_ADDR
+	#
+	# We have to place our image at MX8MQ_ATF_BL33_BASE_ADDR in order
+	# to be able to initialize ATF firmware since that's where it
+	# expects entry point to BL33 would be
+	#
+	set MX8MQ_ATF_BL33_BASE_ADDR	0x40200000
+	echo "Bootstrap: Loading Barebox"
+	load_image images/start_zii_imx8mq_dev.pblb $MX8MQ_ATF_BL33_BASE_ADDR bin
+	echo [format "Bootstrap: Jumping to 0x%08x" $MX8MQ_ATF_BL33_BASE_ADDR]
+	resume $MX8MQ_ATF_BL33_BASE_ADDR
 }
 
-# proc board_init { } {
-# 	ddr_init
-# }
+proc board_init { } {
+	ddr_init
+}
 
-# ${_TARGETNAME}.0 configure -event reset-init { board_init }
+${_TARGETNAME}.0 configure -event reset-init { board_init }
diff --git a/Documentation/boards/imx/zii-imx8mq-dev/readme.rst b/Documentation/boards/imx/zii-imx8mq-dev/readme.rst
index dc031e4af..363e00e6c 100644
--- a/Documentation/boards/imx/zii-imx8mq-dev/readme.rst
+++ b/Documentation/boards/imx/zii-imx8mq-dev/readme.rst
@@ -20,5 +20,5 @@ follows:
 
 .. code-block:: sh
 
-        cd barebox
-        openocd -f Documentation/boards/imx/zii-imx8mq-dev/openocd.cfg --command "init; ddr_init; start_barebox"
+  cd barebox
+  Documentation/boards/imx/zii-imx8mq-dev/bootstrap.sh
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

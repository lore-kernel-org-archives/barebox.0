Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzK4w-0004it-NU
 for barebox@lists.infradead.org; Tue, 12 Jan 2021 13:51:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1kzK4v-0002Is-Ga
 for barebox@lists.infradead.org; Tue, 12 Jan 2021 14:51:21 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1kzK4v-0004Be-8J
 for barebox@lists.infradead.org; Tue, 12 Jan 2021 14:51:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Jan 2021 14:51:20 +0100
Message-Id: <20210112135120.15811-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] documentation: devicetree: migrate remaining binding to reST
To: barebox@lists.infradead.org

Eventually, we will want to have formalized YAML bindings and scripts to
turn them into reST for display in the online documentation.

For now, just turn the remaining text files into reST, so they can be
searched as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 ...ive-serial.txt => altr,passive-serial.rst} | 16 +++----
 ...fpga-mgr.txt => altr,socfpga-fpga-mgr.rst} |  8 ++--
 .../devicetree/bindings/mtd/partition.rst     | 42 +++++++++++++++++++
 .../devicetree/bindings/mtd/partition.txt     | 39 -----------------
 4 files changed, 56 insertions(+), 49 deletions(-)
 rename Documentation/devicetree/bindings/firmware/{altr,passive-serial.txt => altr,passive-serial.rst} (51%)
 rename Documentation/devicetree/bindings/firmware/{altr,socfpga-fpga-mgr.txt => altr,socfpga-fpga-mgr.rst} (74%)
 create mode 100644 Documentation/devicetree/bindings/mtd/partition.rst
 delete mode 100644 Documentation/devicetree/bindings/mtd/partition.txt

diff --git a/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt b/Documentation/devicetree/bindings/firmware/altr,passive-serial.rst
similarity index 51%
rename from Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
rename to Documentation/devicetree/bindings/firmware/altr,passive-serial.rst
index eec12fbace52..1012137bc93b 100644
--- a/Documentation/devicetree/bindings/firmware/altr,passive-serial.txt
+++ b/Documentation/devicetree/bindings/firmware/altr,passive-serial.rst
@@ -1,20 +1,22 @@
 Altera FPGAs in passive serial mode
------------------------------------
+===================================
 
 This binding defines the control interface to Altera FPGAs in
 passive serial mode. This is used to upload the firmware and
 to start the FPGA.
 
 Required properties:
-- compatible: shall be "altr,fpga-passive-serial" or
-  "altr,fpga-arria10-passive-serial" for Arria 10
-- reg: SPI chip select
-- nstat-gpios: Specify GPIO for controlling the nstat pin
-- confd-gpios: Specify GPIO for controlling the confd pin
-- nconfig-gpios: Specify GPIO for controlling the nconfig pin
+- ``compatible``: shall be ``"altr,fpga-passive-serial"`` or
+  ``"altr,fpga-arria10-passive-serial"`` for Arria 10
+- ``reg``: SPI chip select
+- ``nstat-gpios``: Specify GPIO for controlling the nstat pin
+- ``confd-gpios``: Specify GPIO for controlling the confd pin
+- ``nconfig-gpios``: Specify GPIO for controlling the nconfig pin
 
 Example:
 
+.. code-block:: none
+
 	fpga@0 {
 		compatible = "altr,fpga-passive-serial";
 		nstat-gpios = <&gpio4 18 0>;
diff --git a/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.txt b/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst
similarity index 74%
rename from Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.txt
rename to Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst
index 70ec4abf25b4..9f7de6b98580 100644
--- a/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.txt
+++ b/Documentation/devicetree/bindings/firmware/altr,socfpga-fpga-mgr.rst
@@ -1,17 +1,19 @@
 Altera SOCFPGA FPGA Manager
----------------------------
+===========================
 
 This binding defines the FPGA Manager on Altera SOCFPGAs. This is used to upload
 the firmware to the FPGA part of the SoC.
 
 Required properties:
-- compatible: shall be "altr,socfpga-fpga-mgr"
-- reg: Must contain 2 register ranges:
+- ``compatible``: shall be ``"altr,socfpga-fpga-mgr"``
+- ``reg``: Must contain 2 register ranges:
 	1. The control address space of the FPGA manager.
 	2. The configuration data address space where the firmware data is written to.
 
 Example:
 
+.. code-block:: none
+
 	fpgamgr@ff706000 {
 		compatible = "altr,socfpga-fpga-mgr";
 		reg = <0xff706000 0x1000>,
diff --git a/Documentation/devicetree/bindings/mtd/partition.rst b/Documentation/devicetree/bindings/mtd/partition.rst
new file mode 100644
index 000000000000..6db54070a991
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partition.rst
@@ -0,0 +1,42 @@
+Representing flash partitions in devicetree
+===========================================
+
+In addition to the upstream binding, another property is added:
+
+Optional properties:
+- ``partuuid`` : The partition UUID for this partition.
+
+Additionally, barebox also supports partitioning the eMMC boot partitions if
+the partition table node is named appropriately:
+- ``partitions`` : user partition
+- ``boot0-partitions`` : boot0 partition
+- ``boot1-partitions`` : boot1 partition
+
+Examples:
+
+.. code-block:: none
+
+  flash@0 {
+  	partitions {
+  		compatible = "fixed-partitions";
+  		#address-cells = <1>;
+  		#size-cells = <1>;
+
+  		state_part: state {
+  			partuuid = "16367da7-c518-499f-9aad-e1f366692365";
+  		};
+  	};
+  };
+
+  emmc@1 {
+  	boot0-partitions {
+  		compatible = "fixed-partitions";
+  		#address-cells = <1>;
+  		#size-cells = <1>;
+
+  		barebox@0 {
+  			label = "barebox";
+  			reg = <0x0 0x300000>;
+  		};
+  	};
+  };
diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
deleted file mode 100644
index 4288a82437b4..000000000000
--- a/Documentation/devicetree/bindings/mtd/partition.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Representing flash partitions in devicetree
-
-In addition to the upstream binding, another property is added:
-
-Optional properties:
-- partuuid : The partition UUID for this partition.
-
-Additionally, barebox also supports partitioning the eMMC boot partitions if
-the partition table node is named appropriately:
-- partitions : user partition
-- boot0-partitions : boot0 partition
-- boot1-partitions : boot1 partition
-
-Examples:
-
-flash@0 {
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		state_part: state {
-			partuuid = "16367da7-c518-499f-9aad-e1f366692365";
-		};
-	};
-};
-
-emmc@1 {
-	boot0-partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		barebox@0 {
-			label = "barebox";
-			reg = <0x0 0x300000>;
-		};
-	};
-};
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.delivery-2-eu-central-1.prod.hydra.sophos.com
 ([35.159.27.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJwvs-0008Uq-TR
 for barebox@lists.infradead.org; Fri, 26 Apr 2019 09:14:15 +0000
Received: from ip-172-20-0-25.eu-central-1.compute.internal
 (ip-172-20-0-25.eu-central-1.compute.internal [127.0.0.1])
 by mail.delivery-2-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTP id
 44r7f75Sfjz5vMH
 for <barebox@lists.infradead.org>; Fri, 26 Apr 2019 09:14:07 +0000 (UTC)
Received: from smtp.eckelmann.de (smtp.eckelmann.de [217.19.183.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by relay-eu-central-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 44r7dw6hXHzCqjJ
 for <barebox@lists.infradead.org>; Fri, 26 Apr 2019 09:13:56 +0000 (UTC)
From: Thorsten Scherer <t.scherer@eckelmann.de>
Date: Fri, 26 Apr 2019 11:13:08 +0200
Message-ID: <20190426091308.23590-1-t.scherer@eckelmann.de>
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
Subject: [PATCH] docs: fix code-block types, indents & whitespaces
To: barebox@lists.infradead.org
Cc: Thorsten Scherer <t.scherer@eckelmann.de>

---
 Documentation/boards/imx/amazon-kindle-3.rst | 10 +--
 Documentation/boards/omap.rst                |  2 +-
 Documentation/boards/openrisc.rst            | 78 ++++++++++----------
 Documentation/boards/sandbox.rst             |  4 +-
 4 files changed, 47 insertions(+), 47 deletions(-)

diff --git a/Documentation/boards/imx/amazon-kindle-3.rst b/Documentation/boards/imx/amazon-kindle-3.rst
index 6b5d9fe53..93fbc10d9 100644
--- a/Documentation/boards/imx/amazon-kindle-3.rst
+++ b/Documentation/boards/imx/amazon-kindle-3.rst
@@ -15,9 +15,9 @@ To upload and run a new bootloader the device can be put into USB-downloader
 mode by the SOC microcode when Vol+ is pressed during startup. A new USB
 device "SE Blank RINGO" should appear, barebox may be uploaded using
 
-.. code-block:: console
+.. code-block:: sh
 
-        $ scripts/imx/imx-usb-loader barebox.imximg
+  $ scripts/imx/imx-usb-loader barebox.imximg
 
 Note: a USB serial ACM console will be launched by a barebox init script
 when the cursor select key is pressed during startup (e.g. before running
@@ -28,7 +28,7 @@ When installing the barebox imximg on the eMMC take care not to overwrite
 the partition table and vendor supplied serial numbers stored on the eMMC.
 e.g. just write the imx-header and the application section:
 
-.. code-block:: sh
+.. code-block:: console
 
-        memcpy -b -s barebox.imximg -d /dev/disk0.imx_header 1024 0 1024
-        memcpy -b -s barebox.imximg -d /dev/disk0.self 4096 0 195584
+  memcpy -b -s barebox.imximg -d /dev/disk0.imx_header 1024 0 1024
+  memcpy -b -s barebox.imximg -d /dev/disk0.self 4096 0 195584
diff --git a/Documentation/boards/omap.rst b/Documentation/boards/omap.rst
index 717a38fe0..700b1ef1e 100644
--- a/Documentation/boards/omap.rst
+++ b/Documentation/boards/omap.rst
@@ -17,7 +17,7 @@ special partitioning). The same procedure can be used for barebox. With such a
 card (assumed to be at /dev/sdc), the following can be used to build and install
 barebox:
 
-.. code-block:: console
+.. code-block:: sh
 
   # mount -t fat /dev/sdc1 /mnt
   # make panda_xload_defconfig
diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
index f9d67f965..838039e53 100644
--- a/Documentation/boards/openrisc.rst
+++ b/Documentation/boards/openrisc.rst
@@ -6,52 +6,52 @@ or1ksim
 
 Compile or1ksim emulator:
 
-.. code-block:: console
+.. code-block:: sh
 
- $ cd ~/
- $ git clone https://github.com/openrisc/or1ksim
- $ cd or1ksim
- $ ./configure
- $ make
+  $ cd ~/
+  $ git clone https://github.com/openrisc/or1ksim
+  $ cd or1ksim
+  $ ./configure
+  $ make
 
 Create minimal or1ksim.cfg file:
 
 .. code-block:: none
 
- section cpu
-   ver = 0x12
-   cfgr = 0x20
-   rev = 0x0001
- end
-
- section memory
-   name = "RAM"
-   type = unknown
-   baseaddr = 0x00000000
-   size = 0x02000000
-   delayr = 1
-   delayw = 2
- end
-
- section uart
-   enabled = 1
-   baseaddr = 0x90000000
-   irq = 2
-   16550 = 1
-   /* channel = "tcp:10084" */
-   channel = "xterm:"
- end
-
- section ethernet
-   enabled = 1
-   baseaddr = 0x92000000
-   irq = 4
-   rtx_type = "tap"
-   tap_dev = "tap0"
- end
+  section cpu
+    ver = 0x12
+    cfgr = 0x20
+    rev = 0x0001
+  end
+
+  section memory
+    name = "RAM"
+    type = unknown
+    baseaddr = 0x00000000
+    size = 0x02000000
+    delayr = 1
+    delayw = 2
+  end
+
+  section uart
+    enabled = 1
+    baseaddr = 0x90000000
+    irq = 2
+    16550 = 1
+    /* channel = "tcp:10084" */
+    channel = "xterm:"
+  end
+
+  section ethernet
+    enabled = 1
+    baseaddr = 0x92000000
+    irq = 4
+    rtx_type = "tap"
+    tap_dev = "tap0"
+  end
 
 Run or1ksim:
 
-.. code-block:: console
+.. code-block:: sh
 
- $ ~/or1ksim/sim -f or1ksim.cfg barebox
+  $ ~/or1ksim/sim -f or1ksim.cfg barebox
diff --git a/Documentation/boards/sandbox.rst b/Documentation/boards/sandbox.rst
index 85a54e6b0..b5673a0df 100644
--- a/Documentation/boards/sandbox.rst
+++ b/Documentation/boards/sandbox.rst
@@ -17,9 +17,9 @@ The barebox sandbox can be built with the host compiler:
 Running the sandbox
 -------------------
 
-Once you compile barebox for the sandbox, you can run it with::
+Once you compile barebox for the sandbox, you can run it with:
 
-.. code-block:: console
+.. code-block:: sh
 
   $ barebox [<OPTIONS>]
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

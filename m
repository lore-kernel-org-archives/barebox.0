Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsjh-0000H5-Rm
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 10:25:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Jul 2019 12:24:57 +0200
Message-Id: <20190712102457.15339-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190712102457.15339-1-a.fatoum@pengutronix.de>
References: <20190712102457.15339-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/5] Documentation: boards: add initial STM32MP documentation
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Support for the SoC is still in progress, but lets document
what we have now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 73 ++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/boards/stm32mp.rst

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
new file mode 100644
index 000000000000..7f787bac203e
--- /dev/null
+++ b/Documentation/boards/stm32mp.rst
@@ -0,0 +1,73 @@
+STMicroelectronics STM32MP
+==========================
+
+.. note::
+
+  Support for the STM32MP architecure in barebox is still in progress.
+  Bootstrapping an OS from mainline barebox is not yet supported.
+
+The STM32MP is a line of 32-bit ARM SoCs. They reuse peripherals of the
+STM32 line of microcontrollers and can have a STM32 MCU embedded as co-processor
+as well.
+
+The boot process of the STM32MP SoC is a two step process.
+The first stage boot loader (FSBL) is loaded by the ROM code into the built-in
+SYSRAM and executed. The FSBL sets up the SDRAM, install a secure monitor and
+then the second stage boot loader (SSBL) is loaded into DRAM.
+
+When building barebox, the resulting ``barebox-${board}.img`` file has the STM32
+header preprended, so it can be loaded directly as FSBL by the ARM TF-A
+(https://github.com/ARM-software/arm-trusted-firmware). Each entry point has a
+header-less image ending in ``*.pblb`` as well.
+
+Use of barebox as FSBL is not supported.
+
+Following boards are currently supported in barebox:
+
+Building barebox
+----------------
+
+With multi-image and device trees, it's expected to have ``stm32mp_defconfig``
+as sole defconfig for all STM32MP boards::
+
+  make ARCH=arm stm32mp_defconfig
+
+The resulting images will be placed under ``images/``:
+
+::
+
+  barebox-stm32mp157c-dk2.img
+
+
+Flashing barebox
+----------------
+
+An appropriate image for the boot media can be generated with following
+``genimage(1)`` config::
+
+  image @STM32MP_BOARD@.img {
+      hdimage {
+          align = 1M
+          gpt = "true"
+      }
+      partition fsbl1 {
+          image = "tf-a-@STM32MP_BOARD@.stm32"
+          size = 256K
+      }
+      partition fsbl2 {
+          image = "tf-a-@STM32MP_BOARD@.stm32"
+          size = 256K
+      }
+      partition ssbl {
+          image = "barebox-@STM32MP_BOARD@.img"
+          size = 1M
+      }
+  }
+
+Image can then be flashed on e.g. a SD-Card.
+
+TODO
+----
+
+* Extend barebox MMCI support to support the SDMMC2
+* Extend barebox DesignWare MAC support to support the stmmac
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

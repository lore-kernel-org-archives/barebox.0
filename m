Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1R-0005NC-6g
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:23 +0200
Message-Id: <20190401101822.7392-16-a.fatoum@pengutronix.de>
In-Reply-To: <20190401101822.7392-1-a.fatoum@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 15/15] doc: microchip-ksz9477-evb: add documentation
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../boards/at91/microchip-ksz9477-evb.rst     | 38 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/at91/microchip-ksz9477-evb.rst b/Documentation/boards/at91/microchip-ksz9477-evb.rst
index 4c4c4aecbfb3..2a68c2a552cd 100644
--- a/Documentation/boards/at91/microchip-ksz9477-evb.rst
+++ b/Documentation/boards/at91/microchip-ksz9477-evb.rst
@@ -1,11 +1,45 @@
 Microchip KSZ 9477 Evaluation board
 ===================================
 
-This is an evaluation board for a switch that uses the at91sam9x5 CPU.
+This is an evaluation board for the KSZ9477 switch that uses the sama5d36 CPU.
 The board uses Device Tree and supports multi image.
 
-Building barebox:
+Building barebox as second stage bootloader:
 
 .. code-block:: sh
 
   make ARCH=arm microchip_ksz9477_evb_defconfig
+
+There are also a separate defconfig for operating barebox as first stage
+bootloader originating from SD Card.
+This configuration doesn't yet support device-tree use as the NVM bootloader
+(SoC ROM code) requires the first stage bootloader to fit into 64K.
+
+Generally, the first stage may comes from any of the following boot
+sources (in that order):
+
+* SPI0 CS0 Flash
+* SD Card
+* NAND Flash
+* SPI0 CS1 Flash
+* I2C EEPROM
+
+After being loaded into SRAM by the NVM bootloader, the first stage does low
+level clock initialization, configuration of the DDRAM controller and
+bootstraps the second stage boot loader.
+
+SD Card Bootstrap
+-----------------
+
+For boot from SD card, barebox additionally needs to be configured as
+first stage bootloader:
+
+.. code-block:: sh
+
+  make ARCH=arm microchip_ksz9477_evb_bootstrap_mmc_defconfig
+
+The resulting barebox image must be renamed to ``BOOT.BIN``
+and located in the root directory of the first FAT16/32 partition
+on the SD Card/eMMC. After initialization, ``BOOT.BIN`` will look
+for a ``barebox.bin`` in the same directory and load and execute it
+from SDRAM.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

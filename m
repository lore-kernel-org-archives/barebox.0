Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYb-0003yM-4m
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:14 +0000
Received: by mail-la0-f47.google.com with SMTP id q1so1271295lam.6
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:26 +0400
Message-Id: <1410334946-12922-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 9/9] Documentation: add MIPS Creator CI20 board mini-howto
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/img-ci20.rst | 42 ++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/Documentation/boards/mips/img-ci20.rst b/Documentation/boards/mips/img-ci20.rst
new file mode 100644
index 0000000..8f5cd80
--- /dev/null
+++ b/Documentation/boards/mips/img-ci20.rst
@@ -0,0 +1,42 @@
+MIPS Creator CI20
+=================
+
+The MIPS Creator CI20 board is a high performance, fully featured
+Linux and Android development platform.
+
+Major hardware features include:
+
+  * Ingenic JZ4780 SoC (dual 1.2GHz MIPS32 processor);
+  * 1 GiB DDR3 memory;
+  * 8 GiB NAND Flash;
+  * 2 x UART;
+  * Davicom dm9000 10/100 Ethernet controller;
+  * 2 x USB (host and OTG);
+  * HDMI output;
+  * 14-pin ETAG connector;
+  * GPIO, SPI, I2C, ADC, expansion headers.
+
+
+The board uses U-Boot 2013.10 as bootloader.
+
+
+Running barebox
+---------------
+
+  1. Boot the board with UART0 serial console. Stop the auto boot during U-boot.
+
+  2. Upload ``zbarebox.bin`` via Ymodem to the board and then run:
+
+.. code-block:: none
+
+    ci20# loady 0xa8000000
+    ...
+    ci20# go 0xa8000000
+..
+
+
+Links
+-----
+
+  * http://store.imgtec.com/product/mips-creator-ci20
+  * http://elinux.org/MIPS_Creator_CI20
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

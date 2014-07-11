Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5hP9-0004Ak-7r
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 20:26:53 +0000
Received: by mail-lb0-f171.google.com with SMTP id v6so1043562lbi.30
 for <barebox@lists.infradead.org>; Fri, 11 Jul 2014 13:26:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 12 Jul 2014 00:26:22 +0400
Message-Id: <1405110382-29843-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] Documentation: add virt2real barebox mini-howto
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/davinci.rst | 51 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/boards/davinci.rst

diff --git a/Documentation/boards/davinci.rst b/Documentation/boards/davinci.rst
new file mode 100644
index 0000000..a2ddc3c
--- /dev/null
+++ b/Documentation/boards/davinci.rst
@@ -0,0 +1,51 @@
+TI Davinci
+==========
+
+virt2real
+---------
+
+virt2real is a miniature board for creation of WiFi
+or Internet controllable smart devices.
+
+The board has
+
+  * TI DaVinchi DM365 running at 300 MHz;
+  * 128 MiB DDR2 SDRAM;
+  * 256 MiB NAND Flash Memory;
+  * 2 x UART serial interfaces;
+  * 1 x Ethernet interface (Micrel KS8851);
+  * 1 x USB interface;
+  * microSD card slot.
+
+The board uses U-Boot as bootloader.
+
+
+Running barebox
+^^^^^^^^^^^^^^^
+
+  1. Connect to the boards's UART0 (115200 8N1);
+     Use J2.2 (GND), J2.4 (UART0_TXD), J2.6 (UART0_RXD) pins.
+
+  2. Turn board's power on;
+
+  3. Wait for ``Hit any key to stop autoboot`` prompt and press the space key.
+
+  4. Upload ``barebox.bin`` via Ymodem
+
+.. code-block:: none
+    virt2real ># loady
+..
+
+  5. Run barebox
+
+.. code-block:: none
+    virt2real ># go 0x82000000
+..
+
+
+Links
+^^^^^
+
+  * http://virt2real.com/
+  * http://wiki.virt2real.ru/
+  * https://github.com/virt2real
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

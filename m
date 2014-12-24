Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3umj-0004C9-K3
 for barebox@lists.infradead.org; Wed, 24 Dec 2014 22:52:06 +0000
Received: by mail-la0-f50.google.com with SMTP id pn19so7484934lab.37
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 14:51:42 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 25 Dec 2014 01:53:42 +0300
Message-Id: <1419461623-16349-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] Documentation: add Raspberry Pi barebox mini-howto
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/bcm2835.rst | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 Documentation/boards/bcm2835.rst

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
new file mode 100644
index 0000000..13cebb0
--- /dev/null
+++ b/Documentation/boards/bcm2835.rst
@@ -0,0 +1,17 @@
+Broadcom BCM2835
+================
+
+Raspberry Pi
+------------
+
+  1. Prepare a card with a FAT filesystem. Download a tiny NOOBS LITE
+     zip archive and unpack it into FAT partition.
+     See http://www.raspberrypi.org/help/noobs-setup/ for details.
+
+  2. Compile ``barebox.bin`` image (use ``rpi_defconfig``).
+     Copy it to the SD/microSD card and name it ``recovery.img``.
+
+  3. Connect to board's UART (115200 8N1);
+     Use PIN6 (GND), PIN8 (UART_TX), PIN10 (UART_RX) pins.
+
+  4. Turn board's power on.
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

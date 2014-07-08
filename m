Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4bvE-0001ZJ-Fc
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 20:23:29 +0000
Received: by mail-lb0-f173.google.com with SMTP id s7so4402855lbd.32
 for <barebox@lists.infradead.org>; Tue, 08 Jul 2014 13:23:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  9 Jul 2014 00:22:56 +0400
Message-Id: <1404850976-27975-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] Documentation: add uemd mb7707 barebox mini-howto
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/uemd.rst | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/boards/uemd.rst

diff --git a/Documentation/boards/uemd.rst b/Documentation/boards/uemd.rst
new file mode 100644
index 0000000..4fb30fa
--- /dev/null
+++ b/Documentation/boards/uemd.rst
@@ -0,0 +1,40 @@
+UEMD
+====
+
+MB 77.07
+--------
+
+MB 77.07 board uses MBOOT as bootloader.
+MBOOT is a U-Boot clone with reduced functionality.
+See https://github.com/RC-MODULE/mboot for details.
+
+Running barebox
+^^^^^^^^^^^^^^^
+
+  1. Connect to the boards's UART (38400 8N1);
+
+  2. Turn board's power on;
+
+  3. Wait ``Hit any key (in 2 sec) to skip autoload...`` prompt and press the space key;
+
+  4. Compile ``zbarebox.bin`` image and upload it to the board via tftp
+
+.. code-block:: none
+
+  MBOOT # tftpboot zbarebox.bin
+  greth: greth_halt
+  TFTP Using GRETH_10/100 device
+  TFTP params: server 192.168.0.1 our_ip 192.168.0.7
+  TFTP params: filename 'zbarebox.bin' load_address 0x40100000
+  TFTP Loading: ################
+  TFTP done
+
+..
+
+  5. Run barebox
+
+.. code-block:: none
+
+  MBOOT # go 0x40100000
+
+..
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

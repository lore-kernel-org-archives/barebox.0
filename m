Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnYzp-0004u9-Iw
 for barebox@lists.infradead.org; Thu, 22 May 2014 19:49:46 +0000
Received: by mail-la0-f44.google.com with SMTP id hr17so3097232lab.3
 for <barebox@lists.infradead.org>; Thu, 22 May 2014 12:49:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 May 2014 23:48:50 +0400
Message-Id: <1400788130-24202-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
References: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 7/7] ARM: mb7707: add barebox mini-howto
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/module-mb7707/module-mb7707.dox | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boards/module-mb7707/module-mb7707.dox b/arch/arm/boards/module-mb7707/module-mb7707.dox
new file mode 100644
index 0000000..c0dbc8a
--- /dev/null
+++ b/arch/arm/boards/module-mb7707/module-mb7707.dox
@@ -0,0 +1,29 @@
+/** @page module-mb7707 MB 77.07 board
+
+The board uses MBOOT as bootloader.
+
+Barebox mini-howto:
+
+1. Connect to the boards's UART (38400 8N1);
+
+2. Turn board's power on;
+
+3. Wait 'Hit any key (in 2 sec) to skip autoload...' prompt and press the space key;
+
+4. Compile zbarebox.bin image and upload it to the board via tftp
+@verbatim
+    MBOOT # tftpboot zbarebox.bin
+    greth: greth_halt
+    TFTP Using GRETH_10/100 device
+    TFTP params: server 192.168.0.1 our_ip 192.168.0.7
+    TFTP params: filename 'zbarebox.bin' load_address 0x40100000
+    TFTP Loading: ################
+    TFTP done
+@endverbatim
+
+5. Run barebox
+@verbatim
+    MBOOT # go 0x40100000
+@endverbatim
+
+*/
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

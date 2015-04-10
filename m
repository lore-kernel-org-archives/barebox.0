Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgiGf-0001zW-Dz
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 23:23:23 +0000
Received: by laat2 with SMTP id t2so23358842laa.1
 for <barebox@lists.infradead.org>; Fri, 10 Apr 2015 16:22:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 11 Apr 2015 02:23:01 +0300
Message-Id: <1428708181-12506-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
References: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/5] Documentation: add Ainol Novo7 Paladin board mini-howto
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/ainol-novo7-paladin.rst | 45 +++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/Documentation/boards/mips/ainol-novo7-paladin.rst b/Documentation/boards/mips/ainol-novo7-paladin.rst
new file mode 100644
index 0000000..becfcd0
--- /dev/null
+++ b/Documentation/boards/mips/ainol-novo7-paladin.rst
@@ -0,0 +1,45 @@
+Ainol Novo7 Paladin
+===================
+
+The tablet has
+
+  * Ingenic JZ4770 SoC;
+  * 512 MiB DDR2 SDRAM;
+  * 8 GiB eMMC Flash Memory;
+  * UART;
+  * touchscreen (800x480);
+  * 1xUSB interface;
+  * buttons.
+
+The tablet uses X-Boot (Ingenic's not interactive U-Boot) as bootloader.
+
+Running barebox
+---------------
+
+  1. Connect to the tablet's UART (see. http://a320.emulate.su/2012/05/14/mini-obzor-planshet-ainol-novo7-paladin-i-processor-jz4770/);
+
+  2. Download and compile ingenic-boot tool for GCW0
+
+.. code-block:: none
+
+    $ git clone https://github.com/gcwnow/ingenic-boot
+    $ cd ingenic-boot
+    ingenic-boot$ make
+..
+
+  3. Push & hold VOL- (GPIO 114 aka D18) while power on or reset (this selects USB boot mode by activating BOOTSEL1 signal);
+
+  3. Upload and start barebox:
+
+.. code-block:: none
+
+    ingenic-boot$ sudo ./tool/down2ram.sh --config=gcw0_v11_ddr2_512mb --bin=${PATH_TO_BAREBOX_DIR}/barebox-flash-image --downto=0xa0800000 --runat=0xa0800000
+..
+
+Links
+-----
+
+  * http://www.ainol-novo.com/ainol-novo-7-paladin-first-android-4-0-tablet-pc.html
+  * ftp://ftp.ingenic.cn/SOC/JZ4770/JZ4770_DS.PDF
+  * https://github.com/IngenicSemiconductor/X-BOOT_NPM801
+  * https://github.com/gcwnow/UBIBoot
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

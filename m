Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPBRL-0003QZ-Lh
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 13:49:25 +0000
Received: by mail-lb0-f177.google.com with SMTP id z11so2912834lbi.22
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 06:49:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 16 Mar 2014 17:48:20 +0400
Message-Id: <1394977701-5889-10-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 09/10] ARM: virt2real: add documentation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards.dox                |  1 +
 arch/arm/boards/virt2real/virt2real.dox | 41 +++++++++++++++++++++++++++++++++
 arch/arm/mach-davinci/mach-davinci.dox  |  2 ++
 3 files changed, 44 insertions(+)

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 6bcc14f..9a14aee 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -43,6 +43,7 @@ ARM type:
 @li @subpage tny-a9263
 @li @subpage usb-a9g20-lpw
 @li @subpage usb-a9263
+@li @subpage virt2real
 
 Blackfin type:
 
diff --git a/arch/arm/boards/virt2real/virt2real.dox b/arch/arm/boards/virt2real/virt2real.dox
new file mode 100644
index 0000000..fc38321
--- /dev/null
+++ b/arch/arm/boards/virt2real/virt2real.dox
@@ -0,0 +1,41 @@
+/** @page virt2real virt2real board
+
+virt2real is a is a miniature board for creation of WiFi
+or internet controllable smart devices.
+
+The board has
+@li TI DaVinchi DM365 running at 300 MHz
+@li 128 MiB DDR2 SDRAM;
+@li 256 MiB NAND Flash Memory;
+@li 2 x UART serial interfaces;
+@li 2 x Ethernet interfaces;
+@li 1 x USB interface;
+@li microSD card slot.
+
+The board uses U-Boot as bootloader.
+
+Barebox mini-howto:
+
+1. Connect to the boards's UART0 (115200 8N1);
+Use J2.2 (GND), J2.4 (UART0_TXD), J2.6(UART0_RXD) pins.
+
+2. Turn board's power on;
+
+3. Wait 'Hit any key to stop autoboot' prompt and press the space key.
+
+4. Upload barebox.bin via Ymodem
+@verbatim
+    virt2real ># loady
+@endverbatim
+
+5. Run barebox
+@verbatim
+    virt2real ># go 0x82000000
+@endverbatim
+
+virt2real links:
+@li http://virt2real.com/
+@li http://wiki.virt2real.ru/
+@li https://github.com/virt2real
+
+*/
diff --git a/arch/arm/mach-davinci/mach-davinci.dox b/arch/arm/mach-davinci/mach-davinci.dox
index f0f3a92..789eacc 100644
--- a/arch/arm/mach-davinci/mach-davinci.dox
+++ b/arch/arm/mach-davinci/mach-davinci.dox
@@ -2,4 +2,6 @@
 
 @section davinci_boards DaVinci-based boards
 
+@li @subpage virt2real
+
 */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

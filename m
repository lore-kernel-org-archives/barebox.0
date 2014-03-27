Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTHpk-000260-2A
 for barebox@lists.infradead.org; Thu, 27 Mar 2014 21:27:35 +0000
Received: by mail-la0-f53.google.com with SMTP id b8so3050566lan.40
 for <barebox@lists.infradead.org>; Thu, 27 Mar 2014 14:27:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 01:26:43 +0400
Message-Id: <1395955604-12826-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 8/9] MIPS: tplink-mr3020: add documentation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards.dox                         |  1 +
 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox | 64 ++++++++++++++++++++++++
 2 files changed, 65 insertions(+)

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 42bc5e6..8d4fabb 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -60,6 +60,7 @@ MIPS type:
 @li @subpage loongson_ls1b
 @li @subpage qemu_malta
 @li @subpage ritmix-rzx50
+@li @subpage tplink-mr3020
 
 */
 
diff --git a/arch/mips/boards/tplink-mr3020/tplink-mr3020.dox b/arch/mips/boards/tplink-mr3020/tplink-mr3020.dox
new file mode 100644
index 0000000..16fe465
--- /dev/null
+++ b/arch/mips/boards/tplink-mr3020/tplink-mr3020.dox
@@ -0,0 +1,64 @@
+/** @page tplink-mr3020 TP-LINK MR3020 wireless router
+
+The router has
+@li Atheros ar9331 SoC;
+@li 32 MiB SDRAM;
+@li 4 MiB NOR type SPI Flash Memory;
+@li RS232 serial interface (LV-TTL levels on board!);
+@li 1 USB interface;
+@li 1 Ethernet interfaces;
+@li 802.11b/g/n (WiFi) interface;
+@li LEDs & buttons.
+
+The router uses U-Boot 1.1.4 as firmware.
+
+Barebox can be started from U-Boot using tftp.
+But you have to encode barebox image in a very special way.
+
+First obtain 'lzma' and 'mktplinkfw' utilities.
+
+The 'lzma' utility can be obtained in Debian/Ubuntu
+distro by installing lzma package.
+
+The 'mktplinkfw' utility can be obtained from openwrt, e.g.:
+
+@verbatim
+$ OWRTPREF=https://raw.githubusercontent.com/mirrors/openwrt/master
+$ curl -OL $OWRTPREF/tools/firmware-utils/src/mktplinkfw.c \
+        -OL $OWRTPREF/tools/firmware-utils/src/md5.c \
+        -OL $OWRTPREF/tools/firmware-utils/src/md5.h
+$ cc -o mktplinkfw mktplinkfw.c md5.c
+@endverbatim
+
+To convert your barebox.bin to U-Boot-loadable image (6F01A8C0.img)
+use this command sequence:
+
+@verbatim
+$ lzma -c -k barebox.bin > barebox.lzma
+$ ./FW/mktplinkfw -c -H 0x07200103 -W 1 -N TL-WR720N-v3 \
+    -s -F 4Mlzma -k barebox.lzma -o 6F01A8C0.img
+@endverbatim
+
+You must setup tftp-server on host 192.168.0.1.
+Put your 6F01A8C0.img to tftp-server directory
+(usual /tftpboot or /srv/tftp).
+Connect your board to your tftp-server network via Ethernet.
+
+Next, setup network on MR3020 and run 6F01A8C0.img, e.g.:
+@verbatim
+hornet> set ipaddr 192.168.0.2
+hornet> set serverip 192.168.0.1
+hornet> tftpboot 0x81000000 6F01A8C0.img
+hornet> bootm 0x81000000
+@endverbatim
+
+TP-LINK MR3020 links:
+@li http://www.tp-link.com/en/products/details/?model=TL-MR3020
+@li http://wiki.openwrt.org/toh/tp-link/tl-mr3020
+@li https://wikidevi.com/wiki/TP-LINK_TL-MR3020
+
+See also:
+@li http://www.eeboard.com/wp-content/uploads/downloads/2013/08/AR9331.pdf
+@li http://squonk42.github.io/TL-WR703N/
+
+*/
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

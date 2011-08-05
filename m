Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QpI7I-0005ff-No
	for barebox@lists.infradead.org; Fri, 05 Aug 2011 10:59:09 +0000
Received: by fxd20 with SMTP id 20so263592fxd.36
	for <barebox@lists.infradead.org>; Fri, 05 Aug 2011 03:58:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 Aug 2011 14:58:41 +0400
Message-Id: <1312541922-696-12-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1312541922-696-1-git-send-email-antonynpavlov@gmail.com>
References: <1312541922-696-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/12] MIPS: add D-Link DIR-320 documentation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards.dox                         |    1 +
 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox |   38 ++++++++++++++++++++++
 arch/mips/mach-bcm47xx/mach-bcm47xx.dox          |    7 ++++
 arch/mips/mach-mips.dox                          |    4 ++
 4 files changed, 50 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
 create mode 100644 arch/mips/mach-bcm47xx/mach-bcm47xx.dox

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 798c4be..1407479 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -48,6 +48,7 @@ x86 type:
 
 MIPS type:
 
+@li @subpage dlink_dir_320
 @li @subpage qemu_malta
 
 */
diff --git a/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox b/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
new file mode 100644
index 0000000..d0f5869
--- /dev/null
+++ b/arch/mips/boards/dlink-dir-320/dlink-dir-320.dox
@@ -0,0 +1,38 @@
+/** @page dlink_dir_320 D-Link DIR-320 wireless router
+
+The router has
+@li BCM5354 SoC;
+@li 32 MiB SDRAM;
+@li 4 MiB NOR type Flash Memory;
+@li RS232 serial interface (LV-TTL levels on board!);
+@li 1xUSB interface;
+@li 4 + 1 ethernet interfaces;
+@li 802.11b/g (WiFi) interface;
+@li JTAG interface;
+@li 5 LEDs;
+@li 2 buttons.
+
+The router uses CFE as firmware.
+
+Barebox can be started from CFE using tftp.
+You must setup tftp-server on host 192.168.0.1.
+Put your barebox.bin to tftp-server directory
+(usual /tftpboot or /srv/tftp).
+Connect your DIR-320 to your tftp-server network via
+one of four <LAN> sockets.
+
+Next, setup network on DIR-320 and run barebox.bin, e.g.:
+@verbatim
+CFE> ifconfig eth0 -addr=192.168.0.99
+CFE> boot -tftp -addr=a0800000 -raw 192.168.0.1:barebox.bin
+@endverbatim
+
+DIR-320 links:
+@li http://www.dlink.com.au/products/?pid=768
+@li http://wiki.openwrt.org/toh/d-link/dir-320
+
+CFE links:
+@li http://www.broadcom.com/support/communications_processors/downloads.php#cfe
+@li http://www.linux-mips.org/wiki/CFE
+
+*/
diff --git a/arch/mips/mach-bcm47xx/mach-bcm47xx.dox b/arch/mips/mach-bcm47xx/mach-bcm47xx.dox
new file mode 100644
index 0000000..04ccf03
--- /dev/null
+++ b/arch/mips/mach-bcm47xx/mach-bcm47xx.dox
@@ -0,0 +1,7 @@
+/** @page dev_bcm47xx_mach BCM47xx in barebox
+
+@section bcm47xx_boards BCM47xx-based boards
+
+@li @subpage dlink_dir_320
+
+*/
diff --git a/arch/mips/mach-mips.dox b/arch/mips/mach-mips.dox
index 50dbbd2..9bcec13 100644
--- a/arch/mips/mach-mips.dox
+++ b/arch/mips/mach-mips.dox
@@ -54,4 +54,8 @@ ISBN-13: 978-0120884216
 @subsection mach_mips_malta_info Malta boards
 
 @li @subpage dev_malta_mach
+
+@subsection mach_bcm47xx_info BCM47xx-based boards
+
+@li @subpage dev_bcm47xx_mach
 */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

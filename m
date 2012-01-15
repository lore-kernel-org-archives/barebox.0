Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmMtZ-00088N-4o
 for barebox@lists.infradead.org; Sun, 15 Jan 2012 10:01:03 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 27880FFADD1
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2012 11:02:28 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Jan 2012 11:00:21 +0100
Message-Id: <1326621621-11484-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120115095156.GH5002@game.jcrosoft.org>
References: <20120115095156.GH5002@game.jcrosoft.org>
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
Subject: [PATCH 5/5] usb-926x: add dfu mem options support
To: barebox@lists.infradead.org

this will allow to upload a bootable image in memory and boot it
boot with the rootfs via nfs

the image will must be 16MiB max

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/env/bin/init_board |   10 +++++++++-
 arch/arm/configs/usb_a9260_defconfig         |    1 +
 arch/arm/configs/usb_a9263_128mib_defconfig  |    1 +
 arch/arm/configs/usb_a9263_defconfig         |    1 +
 arch/arm/configs/usb_a9g20_128mib_defconfig  |    1 +
 arch/arm/configs/usb_a9g20_defconfig         |    1 +
 6 files changed, 14 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/env/bin/init_board b/arch/arm/boards/usb-a926x/env/bin/init_board
index 0a6baf7..4c906f0 100644
--- a/arch/arm/boards/usb-a926x/env/bin/init_board
+++ b/arch/arm/boards/usb-a926x/env/bin/init_board
@@ -6,7 +6,7 @@ button_wait=5
 product_id=0x1234
 vendor_id=0x4321
 
-dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
+dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r,/dev/ram0.kernel(mem)r"
 
 if [ $at91_udc0.vbus != 1 ]
 then
@@ -46,4 +46,12 @@ echo ""
 echo "Start DFU Mode"
 echo ""
 
+addpart /dev/ram0 16M@8M(kernel)
 dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
+
+filetype /dev/ram0.kernel
+
+if [ $filetype -eq 1 -o $filetype -eq 3 -o $filetype -eq 4 ]
+then
+	boot -k mem -r net
+fi
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 9073d04..861c62d 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -27,6 +27,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index 457b25c..2c54743 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -28,6 +28,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 6a7ded7..eb9ad9a 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -27,6 +27,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index 3d44f39..cb17d71 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -28,6 +28,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 7abcd95..edce2cf 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -27,6 +27,7 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

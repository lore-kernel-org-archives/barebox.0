Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAYmt-0005hY-3K
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 07:19:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 09:19:36 +0200
Message-Id: <1435821576-18638-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435821576-18638-1-git-send-email-s.hauer@pengutronix.de>
References: <1435821576-18638-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: beagleboard: register update handlers for NAND
To: Barebox List <barebox@lists.infradead.org>

To make updating barebox to nand easy. To bootstrap from a SD
card:

barebox_update -t nand-xload /boot/MLO
barebox_update -t nand /boot/barebox.bin

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/board.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index b7efe95..a7ff3a4 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -21,6 +21,7 @@
 #include <driver.h>
 #include <linux/sizes.h>
 #include <io.h>
+#include <bbu.h>
 #include <ns16550.h>
 #include <envfs.h>
 #include <asm/armlinux.h>
@@ -120,6 +121,11 @@ static int beagle_devices_init(void)
 
 	defaultenv_append_directory(defaultenv_beagle);
 
+	bbu_register_std_file_update("nand-xload", 0,
+			"/dev/nand0.xload.bb", filetype_ch_image);
+	bbu_register_std_file_update("nand", 0,
+			"/dev/nand0.barebox.bb", filetype_arm_barebox);
+
 	return 0;
 }
 device_initcall(beagle_devices_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

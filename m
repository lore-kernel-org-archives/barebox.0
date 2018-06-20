Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVZls-0000Ms-IY
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 09:51:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fVZlg-0005UX-Ur
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 11:51:12 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 20 Jun 2018 11:51:12 +0200
Message-Id: <20180620095112.14944-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: rdu2: program e1000 iNVM
To: barebox@lists.infradead.org

Check if the iNVM is already correctly written. If it isn't write
the correct value in, so the device uses the correct PCI ID for the
Linux driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 29 ++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 265f97e2f464..984ca42a3772 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -15,6 +15,7 @@
 
 #include <common.h>
 #include <envfs.h>
+#include <fs.h>
 #include <gpio.h>
 #include <init.h>
 #include <mach/bbu.h>
@@ -151,3 +152,31 @@ static int rdu2_devices_init(void)
 	return 0;
 }
 device_initcall(rdu2_devices_init);
+
+static int rdu2_i210_invm(void)
+{
+	int fd;
+	u32 val;
+
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		return 0;
+
+	fd = open("/dev/e1000-invm0", O_RDWR);
+	if (fd < 0) {
+		pr_err("could not open e1000 iNVM device!\n");
+		return fd;
+	}
+
+	pread(fd, &val, sizeof(val), 0);
+	if (val == 0x157b1a11) {
+		pr_debug("i210 already programmed correctly\n");
+		return 0;
+	}
+
+	val = 0x157b1a11;
+	pwrite(fd, &val, sizeof(val), 0);
+
+	return 0;
+}
+late_initcall(rdu2_i210_invm);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

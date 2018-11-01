Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIHfT-0003qq-EI
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 18:26:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gIHfH-0008Pp-5D
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 19:25:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 Nov 2018 19:25:54 +0100
Message-Id: <20181101182555.18561-3-l.stach@pengutronix.de>
In-Reply-To: <20181101182555.18561-1-l.stach@pengutronix.de>
References: <20181101182555.18561-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] ARM: rdu2: program e1000 iNVM
To: barebox@lists.infradead.org

Check if the iNVM is already correctly written. If it isn't write
the correct value in, so the device uses the correct PCI ID for the
Linux driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 30 ++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 49cc234c020b..960c5ba53301 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -15,6 +15,7 @@
 
 #include <common.h>
 #include <envfs.h>
+#include <fs.h>
 #include <gpio.h>
 #include <i2c/i2c.h>
 #include <init.h>
@@ -226,3 +227,32 @@ static int rdu2_ethernet_init(void)
 	return 0;
 }
 late_initcall(rdu2_ethernet_init);
+
+#define I210_CFGWORD_PCIID_157B	0x157b1a11
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
+	if (val == I210_CFGWORD_PCIID_157B) {
+		pr_debug("i210 already programmed correctly\n");
+		return 0;
+	}
+
+	val = I210_CFGWORD_PCIID_157B;
+	pwrite(fd, &val, sizeof(val), 0);
+
+	return 0;
+}
+late_initcall(rdu2_i210_invm);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

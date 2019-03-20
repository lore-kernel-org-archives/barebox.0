Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6bWk-00074W-TS
 for barebox@lists.infradead.org; Wed, 20 Mar 2019 13:45:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1h6bWh-0002u3-PS
 for barebox@lists.infradead.org; Wed, 20 Mar 2019 14:45:03 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 20 Mar 2019 14:45:03 +0100
Message-Id: <20190320134503.27194-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: zii-common: reuse i210 config check for RDU3
To: barebox@lists.infradead.org

The i210 on the RDU3 must be configured in the same way as on RDU2.
Move the config check/patching to the common directory and add the
compatible of the RDU3 boards.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-common/board.c     | 30 ++++++++++++++++++++++++++
 arch/arm/boards/zii-imx6q-rdu2/board.c | 29 -------------------------
 2 files changed, 30 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
index 254b09a7a768..1a9dadf5fb09 100644
--- a/arch/arm/boards/zii-common/board.c
+++ b/arch/arm/boards/zii-common/board.c
@@ -42,3 +42,33 @@ static int rdu_networkconfig(void)
 	return 0;
 }
 late_initcall(rdu_networkconfig);
+
+#define I210_CFGWORD_PCIID_157B		0x157b1a11
+static int rdu_i210_invm(void)
+{
+	int fd;
+	u32 val;
+
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx8mq-ultra"))
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
+late_initcall(rdu_i210_invm);
diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 344a654f23f1..6adb0b1c6fbc 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -214,35 +214,6 @@ static int rdu2_ethernet_init(void)
 }
 late_initcall(rdu2_ethernet_init);
 
-#define I210_CFGWORD_PCIID_157B	0x157b1a11
-static int rdu2_i210_invm(void)
-{
-	int fd;
-	u32 val;
-
-	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
-	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
-		return 0;
-
-	fd = open("/dev/e1000-invm0", O_RDWR);
-	if (fd < 0) {
-		pr_err("could not open e1000 iNVM device!\n");
-		return fd;
-	}
-
-	pread(fd, &val, sizeof(val), 0);
-	if (val == I210_CFGWORD_PCIID_157B) {
-		pr_debug("i210 already programmed correctly\n");
-		return 0;
-	}
-
-	val = I210_CFGWORD_PCIID_157B;
-	pwrite(fd, &val, sizeof(val), 0);
-
-	return 0;
-}
-late_initcall(rdu2_i210_invm);
-
 static int rdu2_fixup_egalax_ts(struct device_node *root, void *context)
 {
 	struct device_node *np;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

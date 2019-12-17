Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAsU-00042d-Fi
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 11:18:59 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihAsQ-0004Wc-Q9
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 12:18:54 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 17 Dec 2019 12:18:54 +0100
Message-Id: <20191217111854.3164-3-l.stach@pengutronix.de>
In-Reply-To: <20191217111854.3164-1-l.stach@pengutronix.de>
References: <20191217111854.3164-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: zii-imx8mq-dev: fixup touchscreen and ethernet
 switch alias
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx8mq-dev/board.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index 0be68423d9bf..76d499a37094 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -44,7 +44,7 @@ device_initcall(zii_imx8mq_dev_init);
 
 static int zii_imx8mq_dev_fixup_egalax_ts(struct device_node *root, void *ctx)
 {
-	struct device_node *np;
+	struct device_node *np, * aliases;
 
 	/*
 	 * The 27" unit has a EETI eGalax touchscreen instead of the
@@ -64,6 +64,12 @@ static int zii_imx8mq_dev_fixup_egalax_ts(struct device_node *root, void *ctx)
 
 	of_device_enable(np);
 
+	aliases = of_find_node_by_path_from(root, "/aliases");
+	if (!aliases)
+		return -ENODEV;
+
+	of_property_write_string(aliases, "touchscreen0", np->full_name);
+
 	return 0;
 }
 
@@ -109,7 +115,8 @@ static int zii_imx8mq_dev_fixup_deb_internal(void)
 
 static int zii_imx8mq_dev_fixup_deb(struct device_node *root, void *ctx)
 {
-	struct device_node *np;
+	struct device_node *np, *aliases;
+	struct property *pp;
 
 	/*
 	 * In the kernel DT remove all devices from the DEB, which isn't
@@ -127,6 +134,16 @@ static int zii_imx8mq_dev_fixup_deb(struct device_node *root, void *ctx)
 
 	of_device_disable(np);
 
+	aliases = of_find_node_by_path_from(root, "/aliases");
+	if (!aliases)
+		return -ENODEV;
+
+	pp = of_find_property(aliases, "ethernet-switch0", NULL);
+	if (!pp)
+		return -ENODEV;
+
+	of_delete_property(pp);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

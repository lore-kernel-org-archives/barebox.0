Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihB1W-0001xA-2V
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 11:28:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihB1U-00063F-TH
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 12:28:16 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 17 Dec 2019 12:28:16 +0100
Message-Id: <20191217112816.13305-3-l.stach@pengutronix.de>
In-Reply-To: <20191217112816.13305-1-l.stach@pengutronix.de>
References: <20191217112816.13305-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: rdu2: fixup touchscreen alias
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index c06c5ebd9a7c..d41609bfae8a 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -1,3 +1,4 @@
+
 /*
  * Copyright (C) 2016 Zodiac Inflight Innovation
  * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
@@ -161,7 +162,7 @@ device_initcall(rdu2_devices_init);
 
 static int rdu2_fixup_egalax_ts(struct device_node *root, void *context)
 {
-	struct device_node *np;
+	struct device_node *np, *aliases;
 
 	/*
 	 * The 32" unit has a EETI eGalax touchscreen instead of the
@@ -181,6 +182,12 @@ static int rdu2_fixup_egalax_ts(struct device_node *root, void *context)
 
 	of_device_enable(np);
 
+	aliases = of_find_node_by_path_from(root, "/aliases");
+	if (!aliases)
+		return -ENODEV;
+
+	of_property_write_string(aliases, "touchscreen0", np->full_name);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

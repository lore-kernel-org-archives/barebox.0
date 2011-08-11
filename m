Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrX8t-0001JM-UT
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 15:25:56 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id E2C6D100859E
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 17:26:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 11 Aug 2011 17:07:03 +0200
Message-Id: <1313075225-27280-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] clkdev: factorize macro
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/clock.h                    |   13 -------------
 arch/arm/mach-nomadik/include/mach/clkdev.h   |    6 ------
 arch/arm/mach-versatile/include/mach/clkdev.h |    6 ------
 include/linux/clkdev.h                        |   19 +++++++++++++++++++
 4 files changed, 19 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-at91/clock.h b/arch/arm/mach-at91/clock.h
index c2e63e4..cacc0b5 100644
--- a/arch/arm/mach-at91/clock.h
+++ b/arch/arm/mach-at91/clock.h
@@ -32,16 +32,3 @@ struct clk {
 extern int __init clk_register(struct clk *clk);
 extern struct clk mck;
 extern struct clk utmi_clk;
-
-#define CLKDEV_CON_ID(_id, _clk)			\
-	{						\
-		.con_id = _id,				\
-		.clk = _clk,				\
-	}
-
-#define CLKDEV_CON_DEV_ID(_con_id, _dev_id, _clk)	\
-	{						\
-		.con_id = _con_id,			\
-		.dev_id = _dev_id,			\
-		.clk = _clk,				\
-	}
diff --git a/arch/arm/mach-nomadik/include/mach/clkdev.h b/arch/arm/mach-nomadik/include/mach/clkdev.h
index a9092a2..04b37a8 100644
--- a/arch/arm/mach-nomadik/include/mach/clkdev.h
+++ b/arch/arm/mach-nomadik/include/mach/clkdev.h
@@ -4,10 +4,4 @@
 #define __clk_get(clk) ({ 1; })
 #define __clk_put(clk) do { } while (0)
 
-#define CLKDEV_CON_ID(_id, _clk)			\
-	{						\
-		.con_id = _id,				\
-		.clk = _clk,				\
-	}
-
 #endif
diff --git a/arch/arm/mach-versatile/include/mach/clkdev.h b/arch/arm/mach-versatile/include/mach/clkdev.h
index a9092a2..04b37a8 100644
--- a/arch/arm/mach-versatile/include/mach/clkdev.h
+++ b/arch/arm/mach-versatile/include/mach/clkdev.h
@@ -4,10 +4,4 @@
 #define __clk_get(clk) ({ 1; })
 #define __clk_put(clk) do { } while (0)
 
-#define CLKDEV_CON_ID(_id, _clk)			\
-	{						\
-		.con_id = _id,				\
-		.clk = _clk,				\
-	}
-
 #endif
diff --git a/include/linux/clkdev.h b/include/linux/clkdev.h
index ae38e1a..d2eca99 100644
--- a/include/linux/clkdev.h
+++ b/include/linux/clkdev.h
@@ -33,4 +33,23 @@ void clkdev_drop(struct clk_lookup *cl);
 void clkdev_add_table(struct clk_lookup *, size_t);
 int clk_add_alias(const char *, const char *, char *, struct device_d *);
 
+#define CLKDEV_DEV_ID(_id, _clk)			\
+	{						\
+		.dev_id = _id,				\
+		.clk = _clk,				\
+	}
+
+#define CLKDEV_CON_ID(_id, _clk)			\
+	{						\
+		.con_id = _id,				\
+		.clk = _clk,				\
+	}
+
+#define CLKDEV_CON_DEV_ID(_con_id, _dev_id, _clk)	\
+	{						\
+		.con_id = _con_id,			\
+		.dev_id = _dev_id,			\
+		.clk = _clk,				\
+	}
+
 #endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

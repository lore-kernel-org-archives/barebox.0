Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QqXUG-00039s-S5
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 21:35:55 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 3D503FFB3BC
	for <barebox@lists.infradead.org>;
	Mon,  8 Aug 2011 23:35:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  8 Aug 2011 23:17:16 +0200
Message-Id: <1312838236-646-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
References: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] versatilek: switch to static allocation clkdev
To: barebox@lists.infradead.org

as we need to register it before the device

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-versatile/core.c                |   19 ++++++++++++++++---
 arch/arm/mach-versatile/include/mach/clkdev.h |    6 ++++++
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 28582f7..f58e3bd 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -144,10 +144,24 @@ static int vpb_clocksource_init(void)
 
 core_initcall(vpb_clocksource_init);
 
+static struct clk_lookup clocks_lookups[] = {
+	CLKDEV_CON_ID("uart-pl0110", &ref_clk_24),
+	CLKDEV_CON_ID("uart-pl0111", &ref_clk_24),
+	CLKDEV_CON_ID("uart-pl0112", &ref_clk_24),
+	CLKDEV_CON_ID("uart-pl0113", &ref_clk_24),
+};
+
+static int versatile_clkdev_init(void)
+{
+	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
+
+	return 0;
+}
+postcore_initcall(versatile_clkdev_init);
+
 void versatile_register_uart(unsigned id)
 {
 	resource_size_t start;
-	struct device_d *dev;
 
 	switch (id) {
 	case 0:
@@ -165,9 +179,8 @@ void versatile_register_uart(unsigned id)
 	default:
 		return;
 	}
-	dev = add_generic_device("uart-pl011", id, NULL, start, 4096,
+	add_generic_device("uart-pl011", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
-	vpb_clk_create(&ref_clk_24, dev_name(dev));
 }
 
 void __noreturn reset_cpu (unsigned long ignored)
diff --git a/arch/arm/mach-versatile/include/mach/clkdev.h b/arch/arm/mach-versatile/include/mach/clkdev.h
index 04b37a8..a9092a2 100644
--- a/arch/arm/mach-versatile/include/mach/clkdev.h
+++ b/arch/arm/mach-versatile/include/mach/clkdev.h
@@ -4,4 +4,10 @@
 #define __clk_get(clk) ({ 1; })
 #define __clk_put(clk) do { } while (0)
 
+#define CLKDEV_CON_ID(_id, _clk)			\
+	{						\
+		.con_id = _id,				\
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

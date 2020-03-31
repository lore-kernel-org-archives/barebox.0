Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvM-00060C-9p
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id k191so10725678pgc.13
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:06 -0700
Message-Id: <20200331184722.22707-8-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/23] ARM: zii-common: Support rave_switch_reset on ZII Ultra
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

ZII Ultra boards implement switch watchdog the same way as ZII
RDU2. Add necessary code to make rave_switch_reset availible.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-common/switch-cmd.c              | 12 +++++++++++-
 arch/arm/boards/zii-imx8mq-dev/board.c               |  9 +++++++++
 .../defaultenv-imx8mq-zii-dev/network/eth0-discover  |  4 ++++
 arch/arm/dts/imx8mq-zii-ultra.dtsi                   |  1 -
 4 files changed, 24 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/network/eth0-discover

diff --git a/arch/arm/boards/zii-common/switch-cmd.c b/arch/arm/boards/zii-common/switch-cmd.c
index 02802ff86..cf5554e2e 100644
--- a/arch/arm/boards/zii-common/switch-cmd.c
+++ b/arch/arm/boards/zii-common/switch-cmd.c
@@ -29,6 +29,15 @@ static int do_rdu2_switch_reset(void)
 		return -ENODEV;
 	}
 
+	if (!of_device_is_available(np)) {
+		/*
+		 * If switch watchdog device is not available assume
+		 * it was removed for a reason and switch reset
+		 * command should be a no-op
+		 */
+		return 0;
+	}
+
 	client = of_find_i2c_device_by_node(np);
 	if (!client) {
 		pr_err("No switch watchdog I2C device found\n");
@@ -78,7 +87,8 @@ static int do_rdu1_switch_reset(void)
 static int do_rave_switch_reset(int argc, char *argv[])
 {
 	if (of_machine_is_compatible("zii,imx6q-zii-rdu2") ||
-	    of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+	    of_machine_is_compatible("zii,imx6qp-zii-rdu2") ||
+	    of_machine_is_compatible("zii,imx8mq-ultra"))
 		return do_rdu2_switch_reset();
 
 	if (of_machine_is_compatible("zii,imx51-rdu1"))
diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index ac455990b..7591841fe 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -110,6 +110,15 @@ static int zii_imx8mq_dev_fixup_deb_internal(void)
 	/* Refresh the internal aliases list from the patched DT */
 	of_alias_scan();
 
+	/*
+	 * Disable switch watchdog to make rave_reset_switch a no-op
+	 */
+	np = of_find_compatible_node(NULL, NULL, "zii,rave-wdt");
+	if (!np)
+		return -ENODEV;
+
+	of_device_disable(np);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/network/eth0-discover b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/network/eth0-discover
new file mode 100644
index 000000000..00f312011
--- /dev/null
+++ b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/network/eth0-discover
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+# reset switch to clear DSA config
+rave_reset_switch
diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 50bad9b1a..2df87d07a 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -114,4 +114,3 @@
 		reg = <0xe0000 0x20000>;
 	};
 };
-
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf3q-0002hA-Fn
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 10:14:27 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Apr 2020 12:14:22 +0200
Message-Id: <20200415101422.14405-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: dts. i.MX7: add stopgap solution for barebox UART clock
 breakage
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Juergen Borleis <jbe@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Commit 8b2104d740 ("driver: Call of_clk_set_defaults for each probed device")
made barebox act on the assigned-clock-parents property everywhere, not
only for clock provider nodes. This breaks at least the serial console on
the i.MX7 SabreSD board; only garbage is output if the patch is not
reverted. As stopgap measure, override these properties for all enabled
uart nodes in the barebox i.MX7 device tree. This reverts the behavior
to what it was like before the offending commit.

This is of course no real solution, as obviously Linux was fine dealing
with these properties before. But this hack should at least fix the
serial console for the boards that were broken in v2020.03.0.

When a proper fix follows, this patch can be reverted.

Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Hello Sascha,

please apply to master, so the boards broken in v2020.03.0
aren't broken in v2020.04.0 as well.

Cheers,
---
 arch/arm/dts/imx7d-sdb.dts      | 11 +++++++++++
 arch/arm/dts/imx7d-zii-rmu2.dts | 11 +++++++++++
 arch/arm/dts/imx7d-zii-rpu2.dts | 11 +++++++++++
 arch/arm/dts/imx7s-warp.dts     | 16 ++++++++++++++++
 4 files changed, 49 insertions(+)

diff --git a/arch/arm/dts/imx7d-sdb.dts b/arch/arm/dts/imx7d-sdb.dts
index b90ada61b805..16bfabe9b358 100644
--- a/arch/arm/dts/imx7d-sdb.dts
+++ b/arch/arm/dts/imx7d-sdb.dts
@@ -28,3 +28,14 @@
 		line-name = "enet-rst-b";
 	};
 };
+
+/* FIXME: barebox serial is broken when barebox applies requested reparenting */
+&uart1 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&uart6 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
diff --git a/arch/arm/dts/imx7d-zii-rmu2.dts b/arch/arm/dts/imx7d-zii-rmu2.dts
index 1d0d631de7d2..a9e35aadf7a4 100644
--- a/arch/arm/dts/imx7d-zii-rmu2.dts
+++ b/arch/arm/dts/imx7d-zii-rmu2.dts
@@ -6,3 +6,14 @@
 
 #include "imx7d-zii-rmu2.dtsi"
 #include "imx7d-ddrc.dtsi"
+
+/* FIXME: barebox serial is broken when barebox applies requested reparenting */
+&uart2 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&uart4 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
diff --git a/arch/arm/dts/imx7d-zii-rpu2.dts b/arch/arm/dts/imx7d-zii-rpu2.dts
index f8d6e89046d7..af5991b16458 100644
--- a/arch/arm/dts/imx7d-zii-rpu2.dts
+++ b/arch/arm/dts/imx7d-zii-rpu2.dts
@@ -26,3 +26,14 @@
 		switch-eeprom = &switch;
 	};
 };
+
+/* FIXME: barebox serial is broken when barebox applies requested reparenting */
+&uart2 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&uart4 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
diff --git a/arch/arm/dts/imx7s-warp.dts b/arch/arm/dts/imx7s-warp.dts
index 49d4c7f2941a..c90147778346 100644
--- a/arch/arm/dts/imx7s-warp.dts
+++ b/arch/arm/dts/imx7s-warp.dts
@@ -42,3 +42,19 @@
 		};
 	};
 };
+
+/* FIXME: barebox serial is broken when barebox applies requested reparenting */
+&uart1 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&uart3  {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
+
+&uart6 {
+	/delete-property/ assigned-clocks;
+	/delete-property/ assigned-clock-parents;
+};
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

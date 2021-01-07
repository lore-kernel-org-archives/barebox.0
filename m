Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxQ8X-0004f3-5F
 for barebox@lists.infradead.org; Thu, 07 Jan 2021 07:55:14 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Jan 2021 08:55:08 +0100
Message-Id: <20210107075508.15261-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] MIPS: dts: ar9331: add stdout-path properties
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

With the kernel v5.11-rc2 the console will be automatically redirected
to null if no default console is configured. Make sure the barebox is
doing it to make kernel happy.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts   | 2 ++
 arch/mips/dts/ar9331-okud-max9331.dts            | 2 ++
 arch/mips/dts/ar9331-openembed-som9331-board.dts | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index cbaf5ab39e..24ce0d0d67 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -7,6 +7,8 @@
 	};
 
 	chosen {
+		stdout-path = &uart;
+
 		environment {
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
diff --git a/arch/mips/dts/ar9331-okud-max9331.dts b/arch/mips/dts/ar9331-okud-max9331.dts
index 53350899f9..3b93bee93b 100644
--- a/arch/mips/dts/ar9331-okud-max9331.dts
+++ b/arch/mips/dts/ar9331-okud-max9331.dts
@@ -17,6 +17,8 @@
 	};
 
 	chosen {
+		stdout-path = &uart;
+
 		environment {
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
diff --git a/arch/mips/dts/ar9331-openembed-som9331-board.dts b/arch/mips/dts/ar9331-openembed-som9331-board.dts
index ff9d25e352..4736332f8f 100644
--- a/arch/mips/dts/ar9331-openembed-som9331-board.dts
+++ b/arch/mips/dts/ar9331-openembed-som9331-board.dts
@@ -33,6 +33,8 @@
 
 
 	chosen {
+		stdout-path = &uart;
+
 		environment {
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

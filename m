Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YcXMo-0001Tp-RD
 for barebox@lists.infradead.org; Mon, 30 Mar 2015 10:56:27 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YcXMR-0002Gp-4U
 for barebox@lists.infradead.org; Mon, 30 Mar 2015 12:56:03 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 30 Mar 2015 12:56:03 +0200
Message-Id: <1427712963-16478-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: tegra124: remove serial aliases
To: barebox@lists.infradead.org

They are upstream now and unfortunately actively break some boards
as they are using a different alias numbering in the kernel.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
If possible please apply to master, to shorten the period of time
where barebox + upstream kernel combinations are broken.
---
 arch/arm/dts/tegra124.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/tegra124.dtsi b/arch/arm/dts/tegra124.dtsi
index cd515a2e2ab1..9276f2f0bd9c 100644
--- a/arch/arm/dts/tegra124.dtsi
+++ b/arch/arm/dts/tegra124.dtsi
@@ -1,9 +1,5 @@
 / {
 	aliases {
-		serial0 = "/serial@0,70006000/";
-		serial1 = "/serial@0,70006040/";
-		serial2 = "/serial@0,70006200/";
-		serial3 = "/serial@0,70006300/";
 		mmc0 = "/sdhci@0,700b0000/";
 		mmc1 = "/sdhci@0,700b0200/";
 		mmc2 = "/sdhci@0,700b0400/";
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

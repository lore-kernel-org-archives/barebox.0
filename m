Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNByQ-0008Ik-Kg
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 07:22:00 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Thu, 15 Nov 2018 08:20:54 +0100
Message-Id: <20181115072054.6297-1-ejo@pengutronix.de>
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
Subject: [PATCH] ARM: socfpga: achilles: enable watchdog1
To: barebox@lists.infradead.org
Cc: s.trumtrar@pengutronix.de, Enrico Jorns <ejo@pengutronix.de>

This one is required for guarding the boot procedure

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index 176e06df12..e94a321999 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -242,3 +242,7 @@
 	reg-io-width = <4>;
 	status = "okay";
 };
+
+&watchdog1 {
+	status = "okay";
+};
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

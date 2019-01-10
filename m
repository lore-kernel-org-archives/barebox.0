Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghdR8-0006uP-Pv
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 16:44:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <p.zabel@pengutronix.de>) id 1ghdR5-0006oW-8q
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 17:44:03 +0100
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 10 Jan 2019 17:43:35 +0100
Message-Id: <20190110164335.2970-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] ARM: nitrogen6x: remove conflicting upstream SPI NOR
 partitions
To: barebox@lists.infradead.org

Since kernel commit 44eac6ef3779 ("ARM: dts: imx6qdl-nitrogen6x: Add SPI
NOR partitions"), included in barebox commit a9c5f6b9ec88 ("dts: update
to v4.16-rc1"), the upstream device tree contains partition definitions
that conflict with preexisting barebox partitions:

  ERROR: m25p0.env: New partition m25p0.env conflicts with m25p0.barebox
  ERROR: m25p0.splash: New partition m25p0.splash conflicts with m25p0.barebox

Remove them so we can add the larger barebox and barebox-environment
partitions that are used since commit 3fb70de496b3 ("ARM: i.MX: increase
barebox partition sizes").

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 53fdb722d01a..5c43b16ab168 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -32,6 +32,9 @@
 		reg = <0x0 0xe0000>;
 	};
 
+	/delete-node/ partition@c0000;
+	/delete-node/ partition@c2000;
+
 	partition@e0000 {
 		label = "barebox-environment";
 		reg = <0xe0000 0x20000>;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

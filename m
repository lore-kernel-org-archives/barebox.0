Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHvTI-0005P0-Iq
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 20:53:14 +0000
Received: from geraet.fritz.box (muedsl-82-207-214-223.citykom.de
 [82.207.214.223]) (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 74C0420006
 for <barebox@lists.infradead.org>; Mon, 14 Sep 2020 20:53:03 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 14 Sep 2020 22:52:59 +0200
Message-Id: <20200914205259.834746-1-ahmad@a3f.at>
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
Subject: [PATCH] ARM: dts: stm32mp: drop no longer needed PSCI version override
To: barebox@lists.infradead.org

52cc061f50aa ("ARM: dts: stm32mp: report psci v0.2 at least") adds a
barebox override, because the upstream device tree's compatible was
outdated.  Since abef60363d8e ("dts: update to v5.8-rc1"), the
upstream device tree has &{/psci} { compatible = "arm,psci-1.0"; }; ,
so now we can drop our override again without adverse effect.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/dts/stm32mp151.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index 5ff3b96fae4a..cc2540047591 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -37,10 +37,6 @@
 	compatible = "simple-bus";
 };
 
-&{/psci} {
-		compatible = "arm,psci-0.2";
-};
-
 &{/soc} {
 	memory-controller@5a003000 {
 		compatible = "st,stm32mp1-ddr";
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

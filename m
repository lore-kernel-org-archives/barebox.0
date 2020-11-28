Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wX-0002QQ-Sz
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:47 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:25 +0100
Message-Id: <20201128213934.681065-2-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-1-ahmad@a3f.at>
References: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 02/11] ARM: dts: rpi: drop unnecessary /chosen/stdout-path
 overrides
To: barebox@lists.infradead.org

The upstream device trees reference the stdout-path via alias.
barebox overrides them with a path to the node, but the effect is
the same as both barebox and the kernel accept both for the property's
value.

No functional change:

	serial0	serial1	upstream stdout-path
 Rpi1	&uart0	&uart1 	serial0
 Rpi2	&uart0	&uart1 	serial0
 Rpi3	&uart0	&uart1 	serial1

Tested on a Raspberry Pi 3B.

Cc: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/dts/bcm2835-rpi.dts   | 6 ------
 arch/arm/dts/bcm2836-rpi-2.dts | 6 ------
 arch/arm/dts/bcm2837-rpi-3.dts | 6 ------
 3 files changed, 18 deletions(-)

diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
index cc5a8a927112..121edebdb3a0 100644
--- a/arch/arm/dts/bcm2835-rpi.dts
+++ b/arch/arm/dts/bcm2835-rpi.dts
@@ -1,11 +1,5 @@
 #include <arm/bcm2835-rpi-a.dts>
 
-/ {
-	chosen {
-		stdout-path = &uart0;
-	};
-};
-
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
diff --git a/arch/arm/dts/bcm2836-rpi-2.dts b/arch/arm/dts/bcm2836-rpi-2.dts
index c9c3892d6a21..c9106515ee1f 100644
--- a/arch/arm/dts/bcm2836-rpi-2.dts
+++ b/arch/arm/dts/bcm2836-rpi-2.dts
@@ -1,11 +1,5 @@
 #include <arm/bcm2836-rpi-2-b.dts>
 
-/ {
-	chosen {
-		stdout-path = &uart0;
-	};
-};
-
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
index d66beddb2281..e82d518fa551 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -1,11 +1,5 @@
 #include <arm64/broadcom/bcm2837-rpi-3-b.dts>
 
-/ {
-	chosen {
-		stdout-path = &uart1;
-	};
-};
-
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

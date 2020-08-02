Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2BQB-0005c4-SE
 for barebox@lists.infradead.org; Sun, 02 Aug 2020 10:40:52 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun,  2 Aug 2020 12:40:41 +0200
Message-Id: <20200802104041.780304-1-ahmad@a3f.at>
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
Subject: [PATCH] ARM: socfpga: achilles: remove unused barebox,bootstate node
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>

We use barebox,state as compatible for the state node. The
barebox,bootstate node serves no purpose with current code base and is
just confusing. Drop it.

Reported-by: Xogium <contact@xogium.me>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index 2fce0114c89a..6071dbfb49ee 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -106,24 +106,6 @@
 			};
 		};
 	};
-
-	bootstate: bootstate {
-		compatible = "barebox,bootstate";
-		backend-type = "state"; // or "nv", or "efivar"
-		backend = <&state>;
-
-		system0 {
-			default_attempts = <3>;
-		};
-
-		system1 {
-			default_attempts = <3>;
-		};
-
-		factory {
-			default_attempts = <3>;
-		};
-	};
 };
 
 &{/soc/clkmgr@ffd04000/clocks/osc1} {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

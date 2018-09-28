Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5qEH-0004zm-Vp
 for barebox@lists.infradead.org; Fri, 28 Sep 2018 10:42:39 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Sep 2018 12:42:05 +0200
Message-Id: <20180928104206.17764-5-s.trumtrar@pengutronix.de>
In-Reply-To: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
References: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: socfpga: achilles: let bootchooser boot from system0
 initially
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Jorns <ejo@pengutronix.de>

From: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index abf2a7d9f15b..908e929d9edf 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -66,7 +66,7 @@
 				priority {
 					reg = <0x4 0x4>;
 					type = "uint32";
-					default = <20>;
+					default = <21>;
 				};
 			};
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

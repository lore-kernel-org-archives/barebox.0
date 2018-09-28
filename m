Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5qEE-0006ov-Sv
 for barebox@lists.infradead.org; Fri, 28 Sep 2018 10:42:36 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Sep 2018 12:42:03 +0200
Message-Id: <20180928104206.17764-3-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: socfpga: achilles: move partitions to free disk space
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Jorns <ejo@pengutronix.de>

From: Enrico Jorns <ejo@pengutronix.de>

Prior to this, environment and state was placed inside the redundant
barbeox copies.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index 5c08be82d67f..abf2a7d9f15b 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -207,12 +207,12 @@
 		#address-cells = <1>;
 		environment_mmc: partition@178000 {
 			label = "environment";
-			reg = <0x178000 0x8000>;
+			reg = <0x300000 0x8000>;
 		};
 
 		state_mmc: partition@180000 {
 			label = "state";
-			reg = <0x180000 0xC00>;
+			reg = <0x400000 0x8000>;
 		};
 	};
 };
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

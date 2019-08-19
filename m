Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeTF-0007s2-2r
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 10:01:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hzeTA-0003mz-FR
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 12:00:56 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hzeTA-00088T-3l
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 12:00:56 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 19 Aug 2019 12:00:47 +0200
Message-Id: <20190819100049.6053-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
References: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: Arria10: achilles: fix offsets in node names
To: Barebox List <barebox@lists.infradead.org>

The node names do not match the actual reg values.
Fix this up.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index e94a3219992f..585ac20e1e0a 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -226,12 +226,12 @@
 		compatible = "fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
-		environment_mmc: partition@178000 {
+		environment_mmc: partition@300000 {
 			label = "environment";
 			reg = <0x300000 0x8000>;
 		};
 
-		state_mmc: partition@180000 {
+		state_mmc: partition@400000 {
 			label = "state";
 			reg = <0x400000 0x8000>;
 		};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

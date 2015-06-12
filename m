Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZZ-0006uG-Il
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:37 +0200
Message-Id: <1434090946-6574-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
References: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] ARM: dts: Karo tx6: increase barebox partition to 4MB
To: Barebox List <barebox@lists.infradead.org>

Due to the DBBT, multiple FCBs, two bootloaders and the possibility
of bad blocks the bootloader partition needs more space. Increase
it to 4MB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6dl-tx6u-801x.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6dl-tx6u-801x.dts b/arch/arm/dts/imx6dl-tx6u-801x.dts
index 43104b2..a480408 100644
--- a/arch/arm/dts/imx6dl-tx6u-801x.dts
+++ b/arch/arm/dts/imx6dl-tx6u-801x.dts
@@ -18,12 +18,12 @@
 &gpmi {
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x100000>;
+		reg = <0x0 0x400000>;
 	};
 
 	partition@1 {
 		label = "barebox-environment";
-		reg = <0x100000 0x100000>;
+		reg = <0x400000 0x100000>;
 	};
 };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

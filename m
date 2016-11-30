Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC27T-0003uC-4y
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 10:28:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id EA612A00258
 for <barebox@lists.infradead.org>; Wed, 30 Nov 2016 11:28:24 +0100 (CET)
From: Stefan Lengfeld <s.lengfeld@phytec.de>
Date: Wed, 30 Nov 2016 11:27:39 +0100
Message-Id: <1480501660-4540-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: [PATCH 1/2] imx6qdl-phytec-phycore-som.dtsi: rename eeprom
To: barebox@lists.infradead.org

From: Jan Remmet <j.remmet@phytec.de>

Chose name according to kernel. This is needed for bootstate.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index d446a5e..37ad878 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -119,9 +119,9 @@
 	clock-frequency = <400000>;
 	status = "okay";
 
-	eeprom: 24c32@50 {
+	eeprom: eeprom@50 {
 		status = "disabled";
-		compatible = "st,24c32";
+		compatible = "24c32";
 		reg = <0x50>;
 	};
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

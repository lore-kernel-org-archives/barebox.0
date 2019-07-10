Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAkQ-0000KY-Vx
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 11:26:56 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 10 Jul 2019 13:26:53 +0200
Message-Id: <1562758013-447148-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH] ARM: dts: am335x-phytec-state: Add backend-storage-type
To: barebox@lists.infradead.org
Cc: d.schultz@phytec.de

Add the backend-storage-type for both states and set it to "direct" as
the backend is an EEPROM.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/am335x-phytec-state.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/am335x-phytec-state.dtsi b/arch/arm/dts/am335x-phytec-state.dtsi
index 1f61cf5a2e6c..af4da4ea6469 100644
--- a/arch/arm/dts/am335x-phytec-state.dtsi
+++ b/arch/arm/dts/am335x-phytec-state.dtsi
@@ -23,6 +23,7 @@
 		compatible = "barebox,state";
 		backend-type = "raw";
 		backend = <&backend_state_mac_eeprom>;
+		backend-storage-type = "direct";
 		backend-stridesize = <40>;
 		keep-previous-content;
 
@@ -44,6 +45,7 @@
 		compatible = "barebox,state";
 		backend-type = "raw";
 		backend = <&backend_state_update_eeprom>;
+		backend-storage-type = "direct";
 		backend-stridesize = <54>;
 		keep-previous-content;
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

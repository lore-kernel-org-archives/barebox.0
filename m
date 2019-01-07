Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggQ5z-0004D1-AG
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 08:17:16 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 7 Jan 2019 09:17:07 +0100
Message-Id: <1546849029-47070-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
References: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/4] ARM: dts: am335x-phytec-state: Reduce partition size
To: barebox@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Partition size was not calculated correct. Set the correct size.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am335x-phytec-state.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/am335x-phytec-state.dtsi b/arch/arm/dts/am335x-phytec-state.dtsi
index 6bca59715901..d332abe4b9b7 100644
--- a/arch/arm/dts/am335x-phytec-state.dtsi
+++ b/arch/arm/dts/am335x-phytec-state.dtsi
@@ -46,7 +46,7 @@
 		#size-cells = <1>;
 		#address-cells = <1>;
 		backend_state_eeprom: state@0 {
-			reg = <0x000 0x120>;
+			reg = <0x000 0x100>;
 			label = "state-eeprom";
 		};
 	};
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

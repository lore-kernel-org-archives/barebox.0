Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eUJ6O-0007Ow-77
 for barebox@lists.infradead.org; Wed, 27 Dec 2017 21:19:06 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 27 Dec 2017 22:18:37 +0100
Message-Id: <20171227211839.2359-3-sam@ravnborg.org>
In-Reply-To: <20171227211743.GA1084@ravnborg.org>
References: <20171227211743.GA1084@ravnborg.org>
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
Subject: [PATCH 3/5] at91sam9263ek: fix SD card in DT
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

The DT file from the linux kernel uses mmc0 for SD card,
but the evaluation board uses mmc1.
Fix DT file so it has same behaviour like the non-DT
version where mmc1 is used.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/dts/at91sam9263ek.dts | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
index 224748ecc..7d0ae0447 100644
--- a/arch/arm/dts/at91sam9263ek.dts
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -55,12 +55,13 @@
 				status = "okay";
 			};
 
-			mmc0: mmc@fff80000 {
+			mmc1: mmc@fff84000 {
 				pinctrl-0 = <
-					&pinctrl_board_mmc0
-					&pinctrl_mmc0_clk
-					&pinctrl_mmc0_slot0_cmd_dat0
-					&pinctrl_mmc0_slot0_dat1_3>;
+					&pinctrl_board_mmc1
+					&pinctrl_mmc1_clk
+					&pinctrl_mmc1_slot0_cmd_dat0
+					&pinctrl_mmc1_slot0_dat1_3>;
+				cd-gpios = <&pioE 18 GPIO_ACTIVE_HIGH>;
 				status = "okay";
 				slot@0 {
 					reg = <0>;
@@ -71,8 +72,8 @@
 			};
 
 			pinctrl@fffff200 {
-				mmc0 {
-					pinctrl_board_mmc0: mmc0-board {
+				mmc1 {
+					pinctrl_board_mmc1: mmc1-board {
 						atmel,pins =
 							<AT91_PIOE 18 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH 	/* PE18 gpio CD pin pull up and deglitch */
 							 AT91_PIOE 19 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;	/* PE19 gpio WP pin pull up */
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

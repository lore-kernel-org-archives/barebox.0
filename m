Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr680077.outbound.protection.outlook.com
 ([40.107.68.77] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Kxt-0000qX-CB
 for barebox@lists.infradead.org; Mon, 26 Aug 2019 19:47:46 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Mon, 26 Aug 2019 19:47:41 +0000
Message-ID: <20190826194654.32574-1-cory.tusar@zii.aero>
Content-Language: en-US
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
Subject: [PATCH] ARM: dts: vf610-zii-cfu1: Fix indentation
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Chris Healy <Chris.Healy@zii.aero>

Whitespace only - no functional changes.

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 arch/arm/dts/vf610-zii-cfu1.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
index 1de9ee9ad..a9793adc3 100644
--- a/arch/arm/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -11,10 +11,10 @@
 / {
 	aliases {
 		/*
-		* NVMEM device corresponding to EEPROM attached to
-		* the switch shared DT node with it, so we use that
-		* fact to create a desirable naming
-		*/
+		 * NVMEM device corresponding to EEPROM attached to
+		 * the switch shared DT node with it, so we use that
+		 * fact to create a desirable naming
+		 */
 		switch-eeprom = &switch0;
 	};
 };
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

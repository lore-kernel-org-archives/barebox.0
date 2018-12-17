Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYo08-0002BX-IV
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 08:11:48 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 17 Dec 2018 09:10:44 +0100
Message-Id: <fdc4c30ec1b4dc4b754533de1ba3dff7d627e7d1.1545034218.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
References: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v4 6/7] ARM: rpi: choose miniuart as stdout
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Since we now support the miniuart, enable it as the default stdout port.
With this change the device tree overlay to switch the miniuart to bluetooth is
no longer necessary.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/dts/bcm2837-rpi-3.dts | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
index d6ffc36..194b41c 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -2,15 +2,10 @@
 
 / {
 	chosen {
-		stdout-path = &uart0;
+		stdout-path = &uart1;
 	};
 
 	memory {
 		reg = <0x0 0x0>;
 	};
 };
-
-&uart0 {
-	status = "okay";
-	/delete-node/ bluetooth;
-};
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

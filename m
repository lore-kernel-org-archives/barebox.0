Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuSKn-0005ol-H1
 for barebox@lists.infradead.org; Wed, 03 Jul 2013 19:03:22 +0000
Received: by mail-wg0-f52.google.com with SMTP id b12so441564wgh.7
 for <barebox@lists.infradead.org>; Wed, 03 Jul 2013 12:02:59 -0700 (PDT)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Wed,  3 Jul 2013 21:02:47 +0200
Message-Id: <1372878167-19034-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH] ARM: i.MX6: Fix usbmisc label in devicetree
To: barebox@lists.infradead.org

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 arch/arm/dts/imx6qdl.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
index 8b5b3b7..34535a7 100644
--- a/arch/arm/dts/imx6qdl.dtsi
+++ b/arch/arm/dts/imx6qdl.dtsi
@@ -645,7 +645,7 @@
 				status = "disabled";
 			};
 
-			usbmisc: usbmisc: usbmisc@02184800 {
+			usbmisc: usbmisc@02184800 {
 				#index-cells = <1>;
 				compatible = "fsl,imx6q-usbmisc";
 				reg = <0x02184800 0x200>;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

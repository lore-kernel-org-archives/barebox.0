Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYqnv-00085z-Uy
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 07:57:44 +0000
Received: by mail-lf0-x230.google.com with SMTP id j78so27751965lfb.1
 for <barebox@lists.infradead.org>; Wed, 24 Feb 2016 23:57:23 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 25 Feb 2016 10:57:17 +0300
Message-Id: <1456387037-15005-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: dts: ar9331.dtsi: fix whitespace
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 99ede9e..efc0531 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -33,7 +33,7 @@
 			#clock-cells = <1>;
 		};
 
-		spi: spi@1f000000{
+		spi: spi@1f000000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "qca,ath79-spi";
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

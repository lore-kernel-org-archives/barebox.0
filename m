Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kik-0008GT-BI
 for barebox@lists.infradead.org; Sun, 08 Sep 2019 00:06:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id y72so6830828pfb.12
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 17:06:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 17:06:09 -0700
Message-Id: <20190908000615.28868-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/7] ARM: dts: vf610-zii-dev-rev-b: Fix SPI flash node name
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Latest upstream DTS renamed the node to flash@0, so we need to follow
suit.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-dev-rev-b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/vf610-zii-dev-rev-b.dts b/arch/arm/dts/vf610-zii-dev-rev-b.dts
index c90af91a9f..abc5237080 100644
--- a/arch/arm/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/dts/vf610-zii-dev-rev-b.dts
@@ -10,7 +10,7 @@
 
 / {
 	spi0 {
-		m25p128@0 {
+		flash@0 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

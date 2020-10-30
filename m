Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp37.i.mail.ru ([94.100.177.97])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYOtG-0004hK-6S
 for barebox@lists.infradead.org; Fri, 30 Oct 2020 07:32:03 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 30 Oct 2020 10:31:57 +0300
Message-Id: <20201030073157.11093-1-shc_work@mail.ru>
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
Subject: [PATCH] ARM: dts: CCMX51: Increase kernel partition size
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx51-ccxmx51.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx51-ccxmx51.dts b/arch/arm/dts/imx51-ccxmx51.dts
index efe5dbf63..4aa32e4c8 100644
--- a/arch/arm/dts/imx51-ccxmx51.dts
+++ b/arch/arm/dts/imx51-ccxmx51.dts
@@ -31,11 +31,11 @@
 
 	partition@c0000 {
 		label = "kernel";
-		reg = <0xc0000 0x340000>;
+		reg = <0xc0000 0x400000>;
 	};
 
-	partition@400000 {
+	partition@4c0000 {
 		label = "root";
-		reg = <0x400000 0>;
+		reg = <0x4c0000 0>;
 	};
 };
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

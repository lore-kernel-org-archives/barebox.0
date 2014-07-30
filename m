Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCXmP-0005xH-1Q
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 17:35:09 +0000
Received: by mail-la0-f44.google.com with SMTP id e16so1169649lan.31
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 10:34:46 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 21:34:32 +0400
Message-Id: <1406741676-1641-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
References: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/5] MIPS: dts: rzx50.dts: add LCD backlight
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/rzx50.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
index 360c1bf..7ec3352 100644
--- a/arch/mips/dts/rzx50.dts
+++ b/arch/mips/dts/rzx50.dts
@@ -9,6 +9,16 @@
 	memory {
 		reg = <0x00000000 0x4000000>;
 	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		lcd-backlight-enable {
+			label = "lcd backlight";
+			gpios = <&gpio4 22 0>;
+			linux,default-trigger = "default-on";
+		};
+	};
 };
 
 &serial1 {
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

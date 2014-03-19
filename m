Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQEgb-0007LE-Qo
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 11:29:30 +0000
Received: by mail-lb0-f171.google.com with SMTP id w7so5739599lbi.2
 for <barebox@lists.infradead.org>; Wed, 19 Mar 2014 04:29:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 19 Mar 2014 15:28:57 +0400
Message-Id: <1395228537-28677-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] [FOR SQUASH] ARM: virt2real.dts: use labels without
 whitespaces
To: barebox@lists.infradead.org

see comment in the maillist
  http://lists.infradead.org/pipermail/barebox/2014-March/018333.html

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/dts/virt2real.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/virt2real.dts b/arch/arm/dts/virt2real.dts
index 0e2210a..09aec1f 100644
--- a/arch/arm/dts/virt2real.dts
+++ b/arch/arm/dts/virt2real.dts
@@ -23,12 +23,12 @@
 		compatible = "gpio-leds";
 
 		green_led {
-			label = "green led";
+			label = "green-led";
 			gpios = <&gpio 73 0>;
 		};
 
 		red_led {
-			label = "red led";
+			label = "red-led";
 			gpios = <&gpio 74 0>;
 		};
 	};
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

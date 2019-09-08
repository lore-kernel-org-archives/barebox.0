Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kim-0008H2-Qd
 for barebox@lists.infradead.org; Sun, 08 Sep 2019 00:06:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so5589029pgg.8
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 17:06:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 17:06:11 -0700
Message-Id: <20190908000615.28868-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190908000615.28868-1-andrew.smirnov@gmail.com>
References: <20190908000615.28868-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/7] ARM: dts: vf610-zii-cfu1: Configure "STATUS" LED as
 heartbeat
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

Configure "STATUS" LED as heartbeat in addition to "DEBUG" LED not
exposed on the front panel. This way it becomes a bit easier to see
what part of the boot process the device is at.

Suggested-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-cfu1.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
index a9793adc3c..aace448e76 100644
--- a/arch/arm/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -17,4 +17,10 @@
 		 */
 		switch-eeprom = &switch0;
 	};
+
+	gpio-leds {
+		led-status {
+			linux,default-trigger = "heartbeat";
+		};
+	};
 };
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

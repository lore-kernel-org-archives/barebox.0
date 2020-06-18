Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZv-00027G-8g
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:25 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:11:01 +0200
Message-Id: <20200618091102.30150-15-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 14/15] ARM: socfpga: dts: remove unused nodes and phandles
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The phandles are unreferenced anywhere. They are likely a remnant of
copy and paste from another device tree that makes use of them, e.g. the
socfpga_cyclone5_socrates.dts. Drop them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
index 40a7a9c488a7..427f150fb43d 100644
--- a/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
+++ b/arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts
@@ -31,10 +31,4 @@
 			file-path = "barebox.env";
 		};
 	};
-
-	leds: gpio-leds {
-	};
-
-	buttons: gpio-keys {
-	};
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

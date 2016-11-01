Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1VkS-0004vO-S9
 for barebox@lists.infradead.org; Tue, 01 Nov 2016 09:52:53 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  1 Nov 2016 10:52:27 +0100
Message-Id: <20161101095227.2087-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20161101095227.2087-1-s.trumtrar@pengutronix.de>
References: <20161101095227.2087-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] fixup! ARM: socfpga: dtsi: add dw-wdt reset lines
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index 66d7f21dc6a3..5b141c23914c 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -52,10 +52,8 @@
 
 &watchdog0 {
 	resets = <&rst L4WD0_RESET>;
-	reset-names = "dw-wdt";
 };
 
 &watchdog1 {
 	resets = <&rst L4WD1_RESET>;
-	reset-names = "dw-wdt";
 };
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

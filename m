Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1b9T-0001Xn-16
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 20:29:27 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0007nE-St
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1l1b9R-0000wu-G7
 for barebox@lists.infradead.org; Mon, 18 Jan 2021 21:29:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Jan 2021 21:29:22 +0100
Message-Id: <20210118202922.3581-6-m.felsch@pengutronix.de>
In-Reply-To: <20210118202922.3581-1-m.felsch@pengutronix.de>
References: <20210118202922.3581-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: dts: imx6qdl-samx6i: cosmetic partition cleanup
To: barebox@lists.infradead.org

The reg property is always the first property and the label is the
following. No functional changes.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
index 197b5cbf8b..504cd06de1 100644
--- a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
+++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
@@ -42,18 +42,18 @@
 	#size-cells = <1>;
 
 	partition@0 {
+		reg = <0x0 0x0c0000>;
 		label = "bootloader";
-		reg = <0x000000 0x0c0000>;
 	};
 
 	flash_bareboxenv: partition@c0000 {
-		label = "environment";
 		reg = <0x0c0000 0x010000>;
+		label = "environment";
 	};
 
 	partition@d0000 {
-		label = "user";
 		reg = <0x0d0000 0x130000>;
+		label = "user";
 	};
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Bcb-0002Ly-FJ
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 17:46:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1j9BcX-0006Ky-Se
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 18:46:17 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1j9BcX-0001UQ-J2
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 18:46:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue,  3 Mar 2020 18:46:14 +0100
Message-Id: <20200303174616.4476-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: nitrogen6x: add phy reset timings
To: barebox@lists.infradead.org

Add reset timings according the datasheet [1]. Due to missing test hw I
added the fix only to the imx6qdl based boards.

[1] http://ww1.microchip.com/downloads/en/DeviceDoc/KSZ9021RL-RN-Data-Sheet-DS00003050A.pdf; page 56

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
index 5c43b16ab1..d565a26ae4 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -23,6 +23,11 @@
 	};
 };
 
+&fec {
+	phy-reset-duration = <10>;
+	phy-reset-post-delay = <1>;
+};
+
 &flash {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

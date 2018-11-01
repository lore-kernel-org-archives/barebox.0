Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIHfT-0003qp-EJ
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 18:26:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gIHfH-0008Pp-3N
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 19:25:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 Nov 2018 19:25:53 +0100
Message-Id: <20181101182555.18561-2-l.stach@pengutronix.de>
In-Reply-To: <20181101182555.18561-1-l.stach@pengutronix.de>
References: <20181101182555.18561-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: rdu2: configure the USB port as OTG
To: barebox@lists.infradead.org

While the USB port is host-only for the Linux system, it is useful
to be able to switch it into device mode for debugging purposes in
Barebox.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index f63b5d2ed760..a885e4f3f2c0 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -124,3 +124,7 @@
 		};
 	};
 };
+
+&usbotg {
+	dr_mode = "otg";
+};
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

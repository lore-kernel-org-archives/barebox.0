Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7QZG-0000JM-52
 for barebox@lists.infradead.org; Sun, 16 Aug 2020 21:51:55 +0000
Received: from radon.fritz.box (a89-183-41-155.net-htp.de [89.183.41.155])
 by lynxeye.de (Postfix) with ESMTPA id 70369E740DA
 for <barebox@lists.infradead.org>; Sun, 16 Aug 2020 23:42:45 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 16 Aug 2020 23:42:40 +0200
Message-Id: <20200816214242.137168-1-dev@lynxeye.de>
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
Subject: [PATCH 1/3] ARM: vexpress: set stdout path
To: barebox@lists.infradead.org

This ensures that the correct console gets activated independent
of the device probe order.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/vexpress-v2p-ca15.dts | 4 ++++
 arch/arm/dts/vexpress-v2p-ca9.dts  | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
index 69e93ee7b2b3..78d002590924 100644
--- a/arch/arm/dts/vexpress-v2p-ca15.dts
+++ b/arch/arm/dts/vexpress-v2p-ca15.dts
@@ -5,6 +5,10 @@
 		compatible = "barebox,environment";
 		device-path = &barebox_env;
 	};
+
+	chosen {
+		stdout-path = &v2m_serial0;
+	};
 };
 
 &nor_flash {
diff --git a/arch/arm/dts/vexpress-v2p-ca9.dts b/arch/arm/dts/vexpress-v2p-ca9.dts
index cb4afef185b6..8be04b174bed 100644
--- a/arch/arm/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/dts/vexpress-v2p-ca9.dts
@@ -10,6 +10,10 @@
 		state = &state;
 	};
 
+	chosen {
+		stdout-path = &v2m_serial0;
+	};
+
 	/* State: mutable part */
 	state: state {
 		magic = <0x4d433230>;
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

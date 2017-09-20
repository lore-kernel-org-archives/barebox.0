Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dujOi-0001xO-KS
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 18:06:58 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 20 Sep 2017 20:05:56 +0200
Message-Id: <20170920180557.22857-2-linux@rempel-privat.de>
In-Reply-To: <20170920180557.22857-1-linux@rempel-privat.de>
References: <20170920180557.22857-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/3] MIPS: dts: tl_wdr4300: add Atheros ART partition
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

and define it as source of MAC address for ag71xx driver

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
index d16cab005..3733ad5b7 100644
--- a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
+++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
@@ -26,6 +26,12 @@
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
 		};
+
+		art@0 {
+			compatible = "qca,art", "qca,art-ar9344";
+			device-path = &spiflash, "partname:art";
+			barebox,provide-mac-address = <&mac0>;
+		};
 	};
 };
 
@@ -59,6 +65,11 @@
 			label = "barebox-environment";
 			reg = <0x80000 0x10000>;
 		};
+
+		partition@7f0000 {
+			label = "art";
+			reg = <0x7f0000 0x10000>;
+		};
 	};
 };
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

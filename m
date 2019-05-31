Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWepf-0005oZ-LW
 for barebox@lists.infradead.org; Fri, 31 May 2019 10:32:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hWepe-0006AC-8o
 for barebox@lists.infradead.org; Fri, 31 May 2019 12:32:18 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 31 May 2019 12:32:18 +0200
Message-Id: <20190531103218.27675-2-l.stach@pengutronix.de>
In-Reply-To: <20190531103218.27675-1-l.stach@pengutronix.de>
References: <20190531103218.27675-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: rdu1: reserve pstore memory region
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Reserve a 2 MiB memory region (barebox may choose another address)
to serve as a pstore backend.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/dts/imx51-zii-rdu1.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 1b5331f48bbc..a4f6654e3f69 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -25,6 +25,23 @@
 		};
 	};
 
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		/* Address will be determined by the bootloader */
+		ramoops@afe00000 {
+			compatible = "ramoops";
+			reg = <0xafe00000 0x200000>;
+			ecc-size = <16>;
+			record-size = <0x20000>;
+			console-size = <0x20000>;
+			ftrace-size = <0x20000>;
+			pmsg-size = <0x20000>;
+		};
+	};
+
 	aliases {
 		/*
 		 * NVMEM device corresponding to EEPROM attached to
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

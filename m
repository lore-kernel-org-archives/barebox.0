Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bX6IE-00078r-QT
 for barebox@lists.infradead.org; Tue, 09 Aug 2016 12:38:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  9 Aug 2016 14:37:31 +0200
Message-Id: <1470746252-3146-6-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 6/7] ARM: socfpga: socrates: add qspi partitions
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga_cyclone5_socrates.dts | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index e94df86813dc..ea7e6cc102bd 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -45,5 +45,35 @@
 		cdns,tsd2d-ns = <50>;
 		cdns,tchsh-ns = <4>;
 		cdns,tslch-ns = <4>;
+
+		partition@0 {
+			label = "prebootloader0";
+			reg = <0x00000 0x10000>;
+		};
+
+		partition@1 {
+			label = "prebootloader1";
+			reg = <0x10000 0x10000>;
+		};
+
+		partition@2 {
+			label = "prebootloader2";
+			reg = <0x20000 0x10000>;
+		};
+
+		partition@3 {
+			label = "prebootloader3";
+			reg = <0x30000 0x10000>;
+		};
+
+		partition@4 {
+			label = "barebox";
+			reg = <0x40000 0x80000>;
+		};
+
+		partition@5 {
+			label = "data";
+			reg = <0xc0000 0x1f40000>;
+		};
 	};
 };
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

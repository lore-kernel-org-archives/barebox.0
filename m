Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWVRt-0000D3-54
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 18:36:14 +0000
Received: by mail-lb0-f170.google.com with SMTP id s7so3469047lbd.15
 for <barebox@lists.infradead.org>; Sat, 05 Apr 2014 11:35:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  5 Apr 2014 22:35:33 +0400
Message-Id: <1396722934-23818-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1396722934-23818-1-git-send-email-antonynpavlov@gmail.com>
References: <1396722934-23818-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/5] MIPS: tplink-mr3020.dts: add S25FL032PIF SPI flash chip
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/tplink-mr3020.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index 5d613d8..7aeb740 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -14,3 +14,23 @@
 &serial0 {
 	status = "okay";
 };
+
+&spi {
+	num-chipselects = <1>;
+	status = "okay";
+
+	/* Spansion S25FL032PIF SPI flash */
+	spiflash: m25p80@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "m25p80";
+		spi-max-frequency = <104000000>;
+		reg = <0>;
+	};
+};
+
+/ {
+	aliases {
+		spiflash = &spiflash;
+	};
+};
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

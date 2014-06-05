Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsSy0-0008SI-Nz
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 08:24:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jun 2014 10:23:40 +0200
Message-Id: <1401956624-31802-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
References: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] mips: ar9331: Add missing #address-cells/#size-cells
 properties
To: barebox@lists.infradead.org

SPI nodes need valid #address-cells/#size-cells properties.
Fixes:

Warning (reg_format): "reg" property in /soc/spi@bf000000/m25p80@0 has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
Warning (avoid_default_addr_size): Relying on default #address-cells value for /soc/spi@bf000000/m25p80@0
Warning (avoid_default_addr_size): Relying on default #size-cells value for /soc/spi@bf000000/m25p80@0

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/dts/ar9331.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 9485fbf..8280588 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -24,6 +24,8 @@
 		};
 
 		spi: spi@bf000000{
+			#address-cells = <1>;
+			#size-cells = <0>;
 			compatible = "qca,ath79-spi";
 			reg = <0xbf000000 0x01000000>;
 			status = "disabled";
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

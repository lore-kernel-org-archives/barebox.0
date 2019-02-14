Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guH0e-0000qU-SQ
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 13:25:11 +0000
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Thu, 14 Feb 2019 14:24:23 +0100
Message-Id: <20190214132429.7463-2-tomaz.solc@tablix.org>
In-Reply-To: <20190214132429.7463-1-tomaz.solc@tablix.org>
References: <20190214132429.7463-1-tomaz.solc@tablix.org>
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
Subject: [PATCH 1/7] ARM: rpi: switch emmc from sdhost to sdhci
To: barebox@lists.infradead.org
Cc: Tomaz Solc <tomaz.solc@tablix.org>

BCM2837 has two mmc interfaces: sdhost and sdhci. On Raspberry Pi 3, sdhost is
normally used for SD card/MMC flash and sdhci for the wireless interface.
Barebox currently only has a driver for sdhci, so we disable the sdhost
interface and remap the pins so that the sdhci has access to the SD card/MMC
flash.
---
 arch/arm/dts/bcm2837-rpi-3.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
index 194b41c23..51883613c 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -9,3 +9,12 @@
 		reg = <0x0 0x0>;
 	};
 };
+
+&sdhci {
+	pinctrl-0 = <&emmc_gpio48>;
+	/delete-node/ wifi@1;
+};
+
+&sdhost {
+	status = "disabled";
+};
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

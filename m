Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg5e-0000PJ-GK
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:50 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 2C93F18B425C
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:05 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:39 +0200
Message-Id: <1400100352-13002-12-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 12/25] ARM: tegra: beaver: adjust pinmux to make sdmmc1 work
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra30-beaver.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index 1110b8974966..35b4d7e43c29 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -191,6 +191,15 @@
 						"pex_l1_clkreq_n_pdd6";
 				nvidia,pull = <TEGRA_PIN_PULL_UP>;
 			};
+			sdio1 {
+				nvidia,pins = "drive_sdio1";
+				nvidia,high-speed-mode = <TEGRA_PIN_DISABLE>;
+				nvidia,schmitt = <TEGRA_PIN_DISABLE>;
+				nvidia,pull-down-strength = <46>;
+				nvidia,pull-up-strength = <42>;
+				nvidia,slew-rate-rising = <1>;
+				nvidia,slew-rate-falling = <1>;
+			};
 			sdio3 {
 				nvidia,pins = "drive_sdio3";
 				nvidia,high-speed-mode = <TEGRA_PIN_DISABLE>;
@@ -325,6 +334,7 @@
 						"vi_hsync_pd7";
 				nvidia,function = "ddr";
 				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,io-reset = <TEGRA_PIN_DISABLE>;
 			};
 			ddr_up {
 				nvidia,pins =	"vi_d11_pt3";
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

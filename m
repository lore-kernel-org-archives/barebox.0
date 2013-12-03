Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnw2p-00074t-Uv
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 19:54:08 +0000
Received: from tellur.localdomain (p54831992.dip0.t-ipconnect.de
 [84.131.25.146]) by lynxeye.de (Postfix) with ESMTPA id 2D2B618B426A
 for <barebox@lists.infradead.org>; Tue,  3 Dec 2013 20:52:24 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Dec 2013 20:57:02 +0100
Message-Id: <1386100622-8498-10-git-send-email-dev@lynxeye.de>
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 8/8] dts: tegra: activate SDMMC on Colibri T20
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20-colibri-iris.dts | 5 +++++
 arch/arm/dts/tegra20-colibri.dtsi     | 4 ++++
 2 files changed, 9 insertions(+)

diff --git a/arch/arm/dts/tegra20-colibri-iris.dts b/arch/arm/dts/tegra20-colibri-iris.dts
index 804750e..6b4ee00 100644
--- a/arch/arm/dts/tegra20-colibri-iris.dts
+++ b/arch/arm/dts/tegra20-colibri-iris.dts
@@ -29,4 +29,9 @@
 			};
 		};
 	};
+
+	sdhci@c8000600 {
+		status = "okay";
+		bus-width = <4>;
+	};
 };
diff --git a/arch/arm/dts/tegra20-colibri.dtsi b/arch/arm/dts/tegra20-colibri.dtsi
index 3644e7d..1ae5375 100644
--- a/arch/arm/dts/tegra20-colibri.dtsi
+++ b/arch/arm/dts/tegra20-colibri.dtsi
@@ -187,4 +187,8 @@
 			};
 		};
 	};
+
+	sdhci@c8000600 {
+		cd-gpios = <&gpio 23 0>; /* gpio PC7 */
+	};
 };
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ8kl-0001ja-NM
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 12:41:08 +0000
From: Yunus Bas <y.bas@phytec.de>
Date: Wed, 7 Oct 2020 14:41:06 +0200
Message-Id: <20201007124106.21615-1-y.bas@phytec.de>
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
Subject: [PATCH v2020.09.0] fixup! UPSTREAM: ARM: dts: imx6ul: phycore: Add
 phyCORE i.MX6 UL with eMMC
To: barebox@lists.infradead.org

The FIT-Image verification was missing. This was also fixed upstream.

Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
index c51907665..7d29c329a 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som-emmc.dts
@@ -5,7 +5,9 @@
  */
 
 /dts-v1/;
-
+#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+#include CONFIG_BOOTM_FITIMAGE_PUBKEY
+#endif
 #include <arm/imx6ul.dtsi>
 #include "imx6ul-phytec-phycore-som.dtsi"
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGdcu-0008Kw-8Y
 for barebox@lists.infradead.org; Fri, 11 Sep 2020 07:37:45 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Fri, 11 Sep 2020 09:37:36 +0200
Message-Id: <1599809857-266934-2-git-send-email-m.otto@phytec.de>
In-Reply-To: <1599809857-266934-1-git-send-email-m.otto@phytec.de>
References: <1599809857-266934-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v2 1/2] arch: arm: boards phytec: Split flash header for
 pcl063 with i.MX6Ul and i.MX6ULL
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

i.MX6UL and i.MX6ULL have different engines for Secure Boot on HABv4.
For better differentiation rename existing pcl063 flash headers to
pcl063ul and pcl063ull.

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v2:
    - none
---
 ...tec-pcl063-512mb.imxcfg => flash-header-phytec-pcl063-512mb.h} | 1 -
 .../phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg     | 3 +++
 ...63-256mb.imxcfg => flash-header-phytec-pcl063ull-256mb.imxcfg} | 0
 .../phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg    | 3 +++
 images/Makefile.imx                                               | 8 ++++----
 5 files changed, 10 insertions(+), 5 deletions(-)
 rename arch/arm/boards/phytec-som-imx6/{flash-header-phytec-pcl063-512mb.imxcfg => flash-header-phytec-pcl063-512mb.h} (83%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
 rename arch/arm/boards/phytec-som-imx6/{flash-header-phytec-pcl063-256mb.imxcfg => flash-header-phytec-pcl063ull-256mb.imxcfg} (100%)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.h
similarity index 83%
rename from arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.h
index 26998c3..c4122d2 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.h
@@ -7,4 +7,3 @@
 	wm 32 0x021B0000 0x84180000
 
 #include "flash-header-phytec-pcl063.h"
-#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
new file mode 100644
index 0000000..f629a8e
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ul-512mb.imxcfg
@@ -0,0 +1,3 @@
+
+#include "flash-header-phytec-pcl063-512mb.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
new file mode 100644
index 0000000..f629a8e
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
@@ -0,0 +1,3 @@
+
+#include "flash-header-phytec-pcl063-512mb.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 7b24e5f..3434a10 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -346,13 +346,13 @@ $(call build_imx_habv4img, CONFIG_MACH_GRINN_LITEBOARD, start_imx6ul_liteboard_5
 
 $(call build_imx_habv4img, CONFIG_MACH_NXP_IMX6ULL_EVK, start_nxp_imx6ull_evk, nxp-imx6ull-evk/flash-header-nxp-imx6ull-evk, nxp-imx6ull-evk)
 
-$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ul_som_nand_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ul-nand-512mb)
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ul_som_nand_512mb, phytec-som-imx6/flash-header-phytec-pcl063ul-512mb, phytec-phycore-imx6ul-nand-512mb)
 
-$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_lc_nand_256mb, phytec-som-imx6/flash-header-phytec-pcl063-256mb, phytec-phycore-imx6ull-lc-nand-256mb)
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_lc_nand_256mb, phytec-som-imx6/flash-header-phytec-pcl063ull-256mb, phytec-phycore-imx6ull-lc-nand-256mb)
 
-$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_nand_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ull-nand-512mb)
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_nand_512mb, phytec-som-imx6/flash-header-phytec-pcl063ull-512mb, phytec-phycore-imx6ull-nand-512mb)
 
-$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_emmc_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ull-emmc-512mb)
+$(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_emmc_512mb, phytec-som-imx6/flash-header-phytec-pcl063ull-512mb, phytec-phycore-imx6ull-emmc-512mb)
 
 $(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6ul_prti6g, protonic-imx6/flash-header-prti6g, protonic-prti6g)
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

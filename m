Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGdcv-0008Kw-PX
 for barebox@lists.infradead.org; Fri, 11 Sep 2020 07:37:46 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Fri, 11 Sep 2020 09:37:37 +0200
Message-Id: <1599809857-266934-3-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v2 2/2] arch: arm: mach-imx: Add habv4 config file for i.MX6ULL
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

The i.MX6ULL has no CAAM engine for Secure Boot on HABv4 (NXP AN4581).
For i.MX6ULL the engine Software (SW) must used for the image
validation.

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v2:
    - Rework the file habv4-imx6-gencsf.h, because cst 3.3.1 fails for engine
      software with parameter Feature.
---
 .../phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg    | 2 +-
 .../phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg    | 2 +-
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h                | 8 ++++++++
 arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h             | 4 ++++
 4 files changed, 14 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
index b93e81f..e6871d8 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-256mb.imxcfg
@@ -7,4 +7,4 @@
 	wm 32 0x021B0000 0x83180000
 
 #include "flash-header-phytec-pcl063.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/habv4-imx6ull-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
index f629a8e..d2d7183 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063ull-512mb.imxcfg
@@ -1,3 +1,3 @@
 
 #include "flash-header-phytec-pcl063-512mb.h"
-#include <mach/habv4-imx6-gencsf.h>
+#include <mach/habv4-imx6ull-gencsf.h>
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index 17c4d79..ee21e0b 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -14,7 +14,11 @@ hab Hash Algorithm = sha256
 hab Engine Configuration = 0
 hab Certificate Format = X509
 hab Signature Format = CMS
+#ifndef SETUP_HABV4_ENGINE
 hab Engine = CAAM
+#else
+hab Engine = SETUP_HABV4_ENGINE
+#endif
 
 hab [Install SRK]
 hab File = CONFIG_HABV4_TABLE_BIN
@@ -28,8 +32,12 @@ hab File = CONFIG_HABV4_CSF_CRT_PEM
 hab [Authenticate CSF]
 
 hab [Unlock]
+#ifndef SETUP_HABV4_ENGINE
 hab Engine = CAAM
 hab Features = RNG, MID
+#else
+hab Engine = SETUP_HABV4_ENGINE
+#endif
 
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
new file mode 100644
index 0000000..54c4915
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
@@ -0,0 +1,4 @@
+
+#define SETUP_HABV4_ENGINE SW
+
+#include <mach/habv4-imx6-gencsf.h>
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

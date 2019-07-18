Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1Ma-0001Fo-IO
 for barebox@lists.infradead.org; Thu, 18 Jul 2019 08:02:07 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Thu, 18 Jul 2019 10:01:58 +0200
Message-Id: <1563436921-362991-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v3 1/4] i.mx6: signed boot: add habv4-imx6-gencsf.h to the
 flash header of the PHYTEC boards
To: barebox@lists.infradead.org

the habv4-imx6-gencsf.h is necessary in the board flash header to build
a signed barebox

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v3:
    - nothing
Changes in v2:
    - no changes, was Patch 3/4 in v1
---
 .../phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg       | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg  | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg  | 1 +
 .../phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg      | 1 +
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg | 1 +
 .../boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg    | 2 ++
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg | 1 +
 .../boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg  | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg  | 1 +
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg  | 1 +
 .../phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg       | 1 +
 .../phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg      | 1 +
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg | 1 +
 .../phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg      | 1 +
 .../phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg      | 1 +
 .../phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg      | 1 +
 21 files changed, 22 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
index 62a24ed..bb4fbeb 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
@@ -7,3 +7,4 @@
 	wm 32 0x021b0000 0x831a0000
 
 #include "flash-header-phytec-pcaaxl3.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
index bab726d..990c34b 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
@@ -7,3 +7,4 @@
 	wm 32 0x021b0000 0xc21a0000
 
 #include "flash-header-phytec-pcaaxl3.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
index 512f6cb..7c56c24 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
@@ -7,3 +7,4 @@
 	wm 32 0x021b0000 0xc31a0000
 
 #include "flash-header-phytec-pcaaxl3.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
index 4a827e4..b93e81f 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
@@ -7,3 +7,4 @@
 	wm 32 0x021B0000 0x83180000
 
 #include "flash-header-phytec-pcl063.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
index c4122d2..26998c3 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-512mb.imxcfg
@@ -7,3 +7,4 @@
 	wm 32 0x021B0000 0x84180000
 
 #include "flash-header-phytec-pcl063.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
index 5df46b9..0042909 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-1gib.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x831A0000
 
 #include "flash-header-phytec-pcm058.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
index 54c9e41..8a09036 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058-2gib.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x841A0000
 
 #include "flash-header-phytec-pcm058.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
index bf95d0f..c949f98 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib-32bit.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x84190000
 
 #include "flash-header-phytec-pcm058dl.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
index f047253..3ac7e4e 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-1gib.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x831A0000
 
 #include "flash-header-phytec-pcm058dl.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
index bf50190..bb8cdc9 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058dl-256mb.imxcfg
@@ -6,3 +6,5 @@
 	wm 32 0x021b0000 0x82190000
 
 #include "flash-header-phytec-pcm058dl.h"
+#include <mach/habv4-imx6-gencsf.h>
+
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
index bf85f0a..3ed5b34 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcm058qp-1gib.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x831A0000
 
 #include "flash-header-phytec-pcm058qp.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
index 75dc982..02f3fa7 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x831a0000
 
 #include "flash-header-phytec-pfla02.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
index 1f1fbe5..dd142a2 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0xc21a0000
 
 #include "flash-header-phytec-pfla02.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
index aa01c05..3f9d11d 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0xC31A0000
 
 #include "flash-header-phytec-pfla02.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
index c8d33cf..fdb1d15 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0xC41A0000
 
 #include "flash-header-phytec-pfla02.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
index d6bbe1f..f4f150e 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-512mb-1bank.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x821a0000
 
 #include "flash-header-phytec-pfla02.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
index 7b64e5d..b2a0521 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x831a0000
 
 #include "flash-header-phytec-pfla02dl.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
index 04c489d..e03e25e 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0xc21a0000
 
 #include "flash-header-phytec-pfla02dl.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
index ebe5a96..58c1576 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
@@ -6,3 +6,4 @@
         wm 32 0x021b0000 0x82180000
 
 #include "flash-header-phytec-pfla02dl.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
index 5f1585a..9975e21 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
@@ -6,3 +6,4 @@
         wm 32 0x021b0000 0x82190000
 
 #include "flash-header-phytec-pfla02dl.h"
+#include <mach/habv4-imx6-gencsf.h>
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
index 5ff3ec6..edc396b 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
@@ -6,3 +6,4 @@
 	wm 32 0x021b0000 0x83190000
 
 #include "flash-header-phytec-pfla02dl.h"
+#include <mach/habv4-imx6-gencsf.h>
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

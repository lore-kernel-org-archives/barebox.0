Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIqLe-0002lb-K4
 for barebox@lists.infradead.org; Thu, 17 Sep 2020 09:37:04 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Thu, 17 Sep 2020 11:36:55 +0200
Message-Id: <1600335415-315975-3-git-send-email-m.otto@phytec.de>
In-Reply-To: <1600335415-315975-1-git-send-email-m.otto@phytec.de>
References: <1600335415-315975-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH v3 2/2] arch: arm: mach-imx: Add habv4 config file for i.MX6ULL
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

The i.MX6ULL has no CAAM engine for Secure Boot on HABv4 (NXP AN4581).
For i.MX6ULL the engine Software (SW) must used for the image
validation.

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
Changes in v3:
    - move habv4-imx6-gencsf.h to habv4-imx6-gencsf-template.h and rework it
    - create new habv4-imx6-gencsf.h
    - rework habv4-imx6ull-gencsf.h
Changes in v2:
    - Rework the file habv4-imx6-gencsf.h, because cst 3.3.1 fails for engine
      software with parameter Feature.
---
 .../flash-header-phytec-pcl063ull-256mb.imxcfg     |  2 +-
 .../flash-header-phytec-pcl063ull-512mb.imxcfg     |  2 +-
 .../include/mach/habv4-imx6-gencsf-template.h      | 64 ++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h | 59 +-------------------
 .../mach-imx/include/mach/habv4-imx6ull-gencsf.h   |  4 ++
 5 files changed, 73 insertions(+), 58 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
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
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
new file mode 100644
index 0000000..668fb06
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
@@ -0,0 +1,64 @@
+/*
+ * This snippet can be included from a i.MX flash header configuration
+ * file for generating signed images. The necessary keys/certificates
+ * are expected in these config variables:
+ *
+ * CONFIG_HABV4_TABLE_BIN
+ * CONFIG_HABV4_CSF_CRT_PEM
+ * CONFIG_HABV4_IMG_CRT_PEM
+ */
+
+#ifndef SETUP_HABV4_ENGINE
+#error "SETUP_HABV4_ENGINE undefined"
+#endif
+
+hab [Header]
+hab Version = 4.1
+hab Hash Algorithm = sha256
+hab Engine Configuration = 0
+hab Certificate Format = X509
+hab Signature Format = CMS
+hab Engine = SETUP_HABV4_ENGINE
+
+hab [Install SRK]
+hab File = CONFIG_HABV4_TABLE_BIN
+hab # SRK index within SRK-Table 0..3
+hab Source index = CONFIG_HABV4_SRK_INDEX
+
+hab [Install CSFK]
+/* target key index in keystore 1 */
+hab File = CONFIG_HABV4_CSF_CRT_PEM
+
+hab [Authenticate CSF]
+
+hab [Unlock]
+hab Engine = SETUP_HABV4_ENGINE
+#ifdef SETUP_HABV4_FEATURES
+hab Features = SETUP_HABV4_FEATURES
+#endif
+
+hab [Install Key]
+/* verification key index in key store (0, 2...4) */
+hab Verification index = 0
+/* target key index in key store (2...4) */
+hab Target index = 2
+hab File = CONFIG_HABV4_IMG_CRT_PEM
+
+hab [Authenticate Data]
+/* verification key index in key store (2...4) */
+hab Verification index = 2
+
+hab_blocks
+
+hab_encrypt [Install Secret Key]
+hab_encrypt Verification index = 0
+hab_encrypt Target index = 0
+hab_encrypt_key
+hab_encrypt_key_length 256
+hab_encrypt_blob_address
+
+hab_encrypt [Decrypt Data]
+hab_encrypt Verification index = 0
+hab_encrypt Mac Bytes = 16
+
+hab_encrypt_blocks
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index 17c4d79..ca741b2 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -1,58 +1,5 @@
-/*
- * This snippet can be included from a i.MX flash header configuration
- * file for generating signed images. The necessary keys/certificates
- * are expected in these config variables:
- *
- * CONFIG_HABV4_TABLE_BIN
- * CONFIG_HABV4_CSF_CRT_PEM
- * CONFIG_HABV4_IMG_CRT_PEM
- */
 
-hab [Header]
-hab Version = 4.1
-hab Hash Algorithm = sha256
-hab Engine Configuration = 0
-hab Certificate Format = X509
-hab Signature Format = CMS
-hab Engine = CAAM
+#define SETUP_HABV4_ENGINE CAAM
+#define SETUP_HABV4_FEATURES  RNG, MID
 
-hab [Install SRK]
-hab File = CONFIG_HABV4_TABLE_BIN
-hab # SRK index within SRK-Table 0..3
-hab Source index = CONFIG_HABV4_SRK_INDEX
-
-hab [Install CSFK]
-/* target key index in keystore 1 */
-hab File = CONFIG_HABV4_CSF_CRT_PEM
-
-hab [Authenticate CSF]
-
-hab [Unlock]
-hab Engine = CAAM
-hab Features = RNG, MID
-
-hab [Install Key]
-/* verification key index in key store (0, 2...4) */
-hab Verification index = 0
-/* target key index in key store (2...4) */
-hab Target index = 2
-hab File = CONFIG_HABV4_IMG_CRT_PEM
-
-hab [Authenticate Data]
-/* verification key index in key store (2...4) */
-hab Verification index = 2
-
-hab_blocks
-
-hab_encrypt [Install Secret Key]
-hab_encrypt Verification index = 0
-hab_encrypt Target index = 0
-hab_encrypt_key
-hab_encrypt_key_length 256
-hab_encrypt_blob_address
-
-hab_encrypt [Decrypt Data]
-hab_encrypt Verification index = 0
-hab_encrypt Mac Bytes = 16
-
-hab_encrypt_blocks
+#include <mach/habv4-imx6-gencsf-template.h>
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
new file mode 100644
index 0000000..6a558b8
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6ull-gencsf.h
@@ -0,0 +1,4 @@
+
+#define SETUP_HABV4_ENGINE SW
+
+#include <mach/habv4-imx6-gencsf-template.h>
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

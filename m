Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kl7wq-0005tS-Si
 for barebox@lists.infradead.org; Fri, 04 Dec 2020 10:04:22 +0000
From: Yunus Bas <y.bas@phytec.de>
Date: Fri, 4 Dec 2020 11:04:21 +0100
Message-Id: <20201204100421.2385465-1-y.bas@phytec.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] images: Add automatic image crc generation for imd
To: barebox@lists.infradead.org

Since commit 9d12256bfcc6, the barebox IMD-header has an additional
register space for CRC32 checksum. This is an important feature, since
it allows us to verify the barebox image after flashing to the hardware.

This patch adds an optional feature for automatically generating the CRC32
checksum and writing it into IMD-section for all generated image-files.
Additionally, the file 'barebox-imd-crc', containing the list of IMD
outputs including the CRC32-value, will be generated under the images
directory.

Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 common/Kconfig  | 11 +++++++++++
 images/Makefile | 16 ++++++++++++++--
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 9b73aa845..a278cdbef 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -697,6 +697,17 @@ config IMD
 	select CRC32
 	bool "barebox metadata support"
 
+config IMD_CRC_IMAGE
+	bool "crc32 checksum generation for IMD-header"
+	depends on IMD
+	help
+	  Enable this option for automatic generation and addition of the
+	  crc checksum to the Barebox ImageMetaData (IMD). Once enabled,
+	  this option uses the bareboximd-tool under the scripts directory
+	  to generate and set the crc checksums for all generated img-files.
+	  In addition, the file 'barebox-imd-crc' with a list of IMD's
+	  from the generated images will be created in the images-directory.
+
 config IMD_TARGET
 	bool "build bareboximd target tool"
 	depends on IMD
diff --git a/images/Makefile b/images/Makefile
index b8899dcd2..f5a320bf6 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -196,7 +196,12 @@ flash-link := $(obj)/../barebox-flash-image
 link-dest := $(if $(filter 1,$(words $(image-y))),$(image-y-path),multi-image-build)
 multi-image-build:
 
-images: $(image-y-path) $(flash-link) $(flash-list) FORCE
+# List of IMD's, including the filled crc reg, from the generated images
+ifdef CONFIG_IMD_CRC_IMAGE
+crc-gen := $(obj)/barebox-imd-crc
+endif
+
+images: $(image-y-path) $(flash-link) $(flash-list) $(crc-gen) FORCE
 	@echo "images built:"
 	@for i in $(image-y); do echo $$i; done
 
@@ -206,8 +211,15 @@ $(flash-link): $(link-dest) FORCE
 $(flash-list): $(image-y-path)
 	@for i in $^; do echo $$i; done > $@
 
+$(crc-gen): $(image-y-path)
+	@echo "generating and adding crc checksum to barebox images:"
+	@for i in $^; do \
+		echo "$$i:"; \
+		scripts/bareboximd -c $$i; \
+	done > $@
+
 clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
 	start_*.simximg start_*.usimximg *.zynqimg *.image
-clean-files += pbl.lds
+clean-files += pbl.lds barebox-imd-crc
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9ZCD-0001yb-NL
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 10:20:26 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu,  6 Sep 2012 12:20:16 +0200
Message-Id: <1346926816-6695-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1346926816-6695-1-git-send-email-jlu@pengutronix.de>
References: <1346926816-6695-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] Makefile: add target to produce a SPL compatible uImage
To: barebox@lists.infradead.org

This is mostly useful during the initial port of barebox to a new
board which is supported by u-boot. It also allows starting barebox
from a SRAM-based u-boot SPL.

A different load address can be set like this:
make barebox.uimage UIMAGE_BASE=0x80000000

This patch was developed together with Sascha Hauer. Thanks!

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 Makefile |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Makefile b/Makefile
index 0f1a319..9381e77 100644
--- a/Makefile
+++ b/Makefile
@@ -686,6 +686,22 @@ ifndef CONFIG_PBL_IMAGE
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 endif
 
+# By default the uImage load address is 2MB below CONFIG_TEXT_BASE,
+# leaving space for the compressed PBL image at 1MB below CONFIG_TEXT_BASE.
+UIMAGE_BASE ?= $(shell printf "0x%08x" $$(($(CONFIG_TEXT_BASE) - 0x200000)))
+
+# For development provide a target which makes barebox loadable by an
+# unmodified u-boot
+quiet_cmd_barebox_mkimage = MKIMAGE $@
+      cmd_barebox_mkimage = $(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
+       -O barebox -a $(UIMAGE_BASE) -e $(UIMAGE_BASE) \
+       -n "barebox $(KERNELRELEASE)" -d $< $@
+
+# barebox.uimage is build from the raw barebox binary, without any other
+# headers.
+barebox.uimage: $(KBUILD_BINARY) FORCE
+	$(call if_changed,barebox_mkimage)
+
 ifdef CONFIG_X86
 barebox.S: barebox
 ifdef CONFIG_X86_HDBOOT
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

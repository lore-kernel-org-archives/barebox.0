Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z2a6c-0004KC-5r
 for barebox@lists.infradead.org; Wed, 10 Jun 2015 07:07:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7792BA00391
 for <barebox@lists.infradead.org>; Wed, 10 Jun 2015 09:08:28 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 10 Jun 2015 09:05:51 +0200
Message-Id: <1433919952-28025-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 1/2] images: Add file size check for PBLX files
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 common/Kconfig  | 10 ++++++++++
 images/Makefile |  1 +
 2 files changed, 11 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 1c5d14c..0ffa783 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -198,6 +198,16 @@ config BAREBOX_MAX_BARE_INIT_SIZE
 	  this will allow your bare_init to fit in SRAM as example
 	  ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 
+config BAREBOX_MAX_PBLX_SIZE
+	depends on PBL_MULTI_IMAGES
+	depends on IMAGE_COMPRESSION
+	prompt "Maximum PBLX size"
+	hex
+	default 0xffffffff
+	help
+	  Define the maximum size of the PBLX image.
+	  The pblx is a self extracting barebox binary.
+
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
diff --git a/images/Makefile b/images/Makefile
index 587cb26..bbbfd81 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -75,6 +75,7 @@ quiet_cmd_pblx ?= PBLX    $@
 
 $(obj)/%.pblx: $(obj)/%.pblb $(obj)/barebox.z FORCE
 	$(call if_changed,pblx,$(@F))
+	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_PBLX_SIZE))
 
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

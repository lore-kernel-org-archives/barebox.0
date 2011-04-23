Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QDVAu-0005dF-67
	for barebox@lists.infradead.org; Sat, 23 Apr 2011 05:14:33 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 23 Apr 2011 07:05:18 +0200
Message-Id: <1303535118-4737-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] arm: add support to generate uImage
To: barebox@lists.infradead.org

so barebox could be loaded as kernel by itself

add LOAD_TEXT_BASE to specify the load address

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile |   15 +++++++++++++++
 common/Kconfig    |    7 +++++++
 2 files changed, 22 insertions(+), 0 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 108bd5e..f0ec667 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -134,6 +134,21 @@ ifeq ($(machine-y),netx)
 KBUILD_IMAGE := barebox.netx
 endif
 
+MKIMAGE		:= $(objtree)/scripts/mkimage
+
+quiet_cmd_uimage = UIMAGE  $@
+      cmd_uimage = $(MKIMAGE) -A arm -O linux -T kernel \
+		   -C none -a $(BAREBOX_LOAD) -e $(BAREBOX_ENTRY) \
+		   -n 'Barebox-$(KERNELRELEASE)' -d $< $@
+
+uImage: $(MKIMAGE)
+uImage: BAREBOX_LOAD=$(CONFIG_LOAD_TEXT_BASE)
+uImage: BAREBOX_ENTRY=$(CONFIG_TEXT_BASE)
+
+uImage: barebox.bin
+	$(call if_changed,uimage,none)
+	@echo '  Image $@ is ready'
+
 all: $(KBUILD_IMAGE)
 
 archprepare: maketools
diff --git a/common/Kconfig b/common/Kconfig
index 9e30579..50995d3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -80,6 +80,13 @@ config TEXT_BASE
 	help
 	  The Address barebox gets linked at.
 
+config LOAD_TEXT_BASE
+	prompt "LOAD_TEXT_BASE"
+	hex
+	default TEXT_BASE
+	help
+	  The Address barebox gets load at as a uImage
+
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

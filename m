Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XB5bO-0006Pw-Uw
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 17:17:47 +0000
Received: by mail-la0-f54.google.com with SMTP id el20so4155417lab.13
 for <barebox@lists.infradead.org>; Sat, 26 Jul 2014 10:17:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Jul 2014 21:17:10 +0400
Message-Id: <1406395031-8756-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] treewide: drop Doxygen stuff
To: barebox@lists.infradead.org

Doxygen documentation is removed in the commit

  commit 98360be0fefd58bf27df03c47d887dd676a31d73
  Author: Sascha Hauer <s.hauer@pengutronix.de>
  Date:   Tue Jun 17 10:27:03 2014 +0200

      Documentation: remove doxygen documentation

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .gitignore | 1 -
 Makefile   | 6 +-----
 README     | 2 +-
 3 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/.gitignore b/.gitignore
index 19534c9..ddeb7b1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -67,7 +67,6 @@ include/linux/compile.h
 include/generated
 
 # Generated files
-Doxyfile.version
 Documentation/commands/*.rst
 doctrees/
 
diff --git a/Makefile b/Makefile
index 69320d8..0fde711 100644
--- a/Makefile
+++ b/Makefile
@@ -774,10 +774,6 @@ include/config/kernel.release: include/config/auto.conf FORCE
 	$(Q)rm -f $@
 	$(Q)echo $(KERNELVERSION)$(localversion) > $@
 
-Doxyfile.version: include/config/auto.conf FORCE
-	$(Q)rm -f $@
-	$(Q)echo "PROJECT_NUMBER = $(KERNELRELEASE)" > $@
-
 # Things we need to do before we recursively start building the kernel
 # or the modules are listed in "prepare".
 # A multi level approach is used. prepareN is processed before prepareN-1.
@@ -996,7 +992,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
 		.tmp_kallsyms* common/barebox_default_env* barebox.ldr \
 		scripts/bareboxenv-target barebox-flash-image \
-		Doxyfile.version barebox.srec barebox.s5p barebox.ubl \
+		barebox.srec barebox.s5p barebox.ubl \
 		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
 		barebox.efi
 
diff --git a/README b/README
index cec9ccb..3862f60 100644
--- a/README
+++ b/README
@@ -179,7 +179,7 @@ net/                  -> Networking stuff
 
 scripts/              -> Kconfig system
 
-Documentation/        -> Doxygen generated documentation
+Documentation/        -> Sphinx generated documentation
 
 
 Release Strategy
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

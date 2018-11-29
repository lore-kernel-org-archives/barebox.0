Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003ix-UK
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:09 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0001x4-NW
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000AW-4x
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:39 +0100
Message-Id: <20181129113048.31857-7-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 06/15] Makefile: improve line wrapping
To: Barebox List <barebox@lists.infradead.org>

Based on linux v3.4 patch: 450c6076a79ebb053cf53e43f948de5ab077c573

    Makefile: improve line wrapping

    Break a few lines that go way over the usual 80 column limit that we prefer.
    Also adjust the placement of a few line continuations.

    Signed-off-by: Jesper Juhl <jj@chaosbits.net>
    Signed-off-by: Jiri Kosina <jkosina@suse.cz>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Makefile | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index ee6c8fc82d5a..ca9ee925cbef 100644
--- a/Makefile
+++ b/Makefile
@@ -331,8 +331,10 @@ export LDFLAGS_barebox
 
 # Files to ignore in find ... statements
 
-RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o -name CVS -o -name .pc -o -name .hg -o -name .git \) -prune -o
-export RCS_TAR_IGNORE := --exclude SCCS --exclude BitKeeper --exclude .svn --exclude CVS --exclude .pc --exclude .hg --exclude .git
+RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o -name CVS \
+		  -o -name .pc -o -name .hg -o -name .git \) -prune -o
+export RCS_TAR_IGNORE := --exclude SCCS --exclude BitKeeper --exclude .svn \
+			--exclude CVS --exclude .pc --exclude .hg --exclude .git
 
 # ===========================================================================
 # Rules shared between *config targets and build targets
@@ -820,7 +822,7 @@ prepare3: include/config/kernel.release
 ifneq ($(KBUILD_SRC),)
 	@echo '  Using $(srctree) as source for barebox'
 	$(Q)if [ -f $(srctree)/.config -o -d $(srctree)/include/config ]; then \
-		echo "  $(srctree) is not clean, please run 'make mrproper'";\
+		echo "  $(srctree) is not clean, please run 'make mrproper'"; \
 		echo "  in the '$(srctree)' directory.";\
 		false; \
 	fi;
@@ -880,8 +882,8 @@ define filechk_utsrelease.h
 endef
 
 define filechk_version.h
-	(echo \#define LINUX_VERSION_CODE $(shell                             \
-	expr $(VERSION) \* 65536 + $(PATCHLEVEL) \* 256 + $(SUBLEVEL));     \
+	(echo \#define LINUX_VERSION_CODE $(shell                       \
+	expr $(VERSION) \* 65536 + $(PATCHLEVEL) \* 256 + $(SUBLEVEL)); \
 	echo '#define KERNEL_VERSION(a,b,c) (((a) << 16) + ((b) << 8) + (c))';)
 endef
 
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

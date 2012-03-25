Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBs59-00026J-Df
 for barebox@lists.infradead.org; Sun, 25 Mar 2012 18:22:24 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 25 Mar 2012 22:22:16 +0400
Message-Id: <1332699736-10591-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Add barebox.map and compressed default_env to distclean
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 Makefile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 4f4c006..eef76c5 100644
--- a/Makefile
+++ b/Makefile
@@ -1000,8 +1000,8 @@ endif # CONFIG_MODULES
 # Directories & files removed with 'make clean'
 CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
-                .tmp_version .tmp_barebox* barebox.bin barebox.S \
-		.tmp_kallsyms* barebox_default_env barebox.ldr Doxyfile.version
+                .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
+		.tmp_kallsyms* barebox_default_env* barebox.ldr Doxyfile.version
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include2 usr/include
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

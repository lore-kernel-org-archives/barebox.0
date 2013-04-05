Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp53.i.mail.ru ([94.100.177.113])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UO7rY-0001Of-HB
 for barebox@lists.infradead.org; Fri, 05 Apr 2013 14:43:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  5 Apr 2013 18:43:19 +0400
Message-Id: <1365173000-4422-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 1/2] Makefile: Create empty <config.h> if this header file
 is not needed by board
To: barebox@lists.infradead.org

Patch creates empty <config.h> if this header is not needed by board.
This will allow to remove many empty config.h files from boards.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 Makefile | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index a7db9de..71f181c 100644
--- a/Makefile
+++ b/Makefile
@@ -841,13 +841,19 @@ include/asm:
 	$(Q)$(check-symlink)
 	$(Q)$(create-symlink)
 
+define symlink-config-h
+	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
+		$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';	\
+		ln -fsn $(srctree)/$(BOARD)/config.h $@;	\
+	else							\
+		[ -h $@ ] && rm -f $@;				\
+		$(kecho) '  CREATE  $@';			\
+		touch -a $@;					\
+	fi
+endef
+
 include/config.h: include/config/auto.conf
-	$(Q)$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h'
-ifneq ($(KBUILD_SRC),)
-	$(Q)ln -fsn $(srctree)/$(BOARD)/config.h $@
-else
-	$(Q)ln -fsn ../$(BOARD)/config.h $@
-endif
+	$(Q)$(symlink-config-h)
 
 # Generate some files
 # ---------------------------------------------------------------------------
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

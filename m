Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp27.mail.ru ([94.100.176.180])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDJ6S-0008TD-Jl
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 18:30:14 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed,  6 Mar 2013 22:30:05 +0400
Message-Id: <1362594605-1083-1-git-send-email-shc_work@mail.ru>
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
Subject: [RFC] Makefile: Create empty <config.h> if this header file is not
 needed by board
To: barebox@lists.infradead.org

Patch creates empty <config.h> if this header is not needed by board.
This will allow to remove many empty config.h files from boards.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 Makefile | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index b5819fc..e8d9984 100644
--- a/Makefile
+++ b/Makefile
@@ -898,13 +898,18 @@ include/asm:
 	$(Q)$(check-symlink)
 	$(Q)$(create-symlink)
 
+define symlink-config-h
+	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
+		$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';	\
+		ln -fsn $(srctree)/$(BOARD)/config.h $@;	\
+	else							\
+		$(kecho) '  CREATE  $@';			\
+		echo -n > $@;					\
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
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

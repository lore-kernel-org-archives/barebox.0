Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhGO1-0000lD-8i
 for barebox@lists.infradead.org; Tue, 28 May 2013 09:40:10 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 28 May 2013 11:39:44 +0200
Message-Id: <1369733984-25370-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] scripts: Makefile: do not use obj-* variables for userspace
 tools
To: barebox@lists.infradead.org

When using obj-?, it erroneously tries to link a built-in.o. Instead
use the extra-? variable.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 scripts/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index f062fc0..e375530 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -30,7 +30,7 @@ subdir-	+= basic kconfig setupmbr
 quiet_cmd_csingle	= CC      $@
       cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
 
-obj-$(CONFIG_BAREBOXENV_TARGET)	+= bareboxenv-target
+extra-$(CONFIG_BAREBOXENV_TARGET) += bareboxenv-target
 
 scripts/bareboxenv-target: scripts/bareboxenv.c FORCE
 	$(call if_changed_dep,csingle)
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFMZw-0002cF-QU
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 09:32:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  4 Apr 2012 11:32:27 +0200
Message-Id: <1333531947-15483-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] build bareboxenv for the target as well
To: barebox@lists.infradead.org

From: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/Makefile b/scripts/Makefile
index d6ea48c..15a2b81 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -19,3 +19,11 @@ subdir-$(CONFIG_X86)             += setupmbr
 
 # Let clean descend into subdirs
 subdir-	+= basic kconfig setupmbr
+
+quiet_cmd_csingle	= CC      $@
+      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
+
+always                           += bareboxenv-target
+
+scripts/bareboxenv-target: scripts/bareboxenv.c FORCE
+	$(call if_changed_dep,csingle)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

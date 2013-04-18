Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USm2A-0001bK-5Z
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 10:25:42 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 18 Apr 2013 12:25:33 +0200
Message-Id: <1366280733-19581-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] Makefile: drop duplicate definition of cmd_objcopy
To: barebox@lists.infradead.org

This command is already defined in scripts/Makefile.lib, which is included
from Makefile.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
All defconfigs still build ok.

 Makefile | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Makefile b/Makefile
index 71f181c..ebfe8ca 100644
--- a/Makefile
+++ b/Makefile
@@ -667,9 +667,6 @@ define rule_barebox-modpost
 	$(Q)echo 'cmd_$@ := $(cmd_barebox-modpost)' > $(dot-target).cmd
 endef
 
-quiet_cmd_objcopy = OBJCOPY $@
-      cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
-
 OBJCOPYFLAGS_barebox.bin = -O binary
 
 barebox.bin: barebox FORCE
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

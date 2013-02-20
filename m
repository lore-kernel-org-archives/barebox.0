Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U8Acn-0000BI-9G
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 14:26:21 +0000
Received: from mail611.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 458FEDC1A0D
 for <barebox@lists.infradead.org>; Wed, 20 Feb 2013 15:36:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 20 Feb 2013 15:25:15 +0100
Message-Id: <1361370315-15701-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] Makefile: drop duplicate cmd_as_o_S support
To: barebox@lists.infradead.org

as we have it to in scripts/Makefile.lib

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile |    8 --------
 1 file changed, 8 deletions(-)

diff --git a/Makefile b/Makefile
index a27c07a..7f97e8f 100644
--- a/Makefile
+++ b/Makefile
@@ -1210,14 +1210,6 @@ quiet_cmd_rmdirs = $(if $(wildcard $(rm-dirs)),CLEAN   $(wildcard $(rm-dirs)))
 quiet_cmd_rmfiles = $(if $(wildcard $(rm-files)),CLEAN   $(wildcard $(rm-files)))
       cmd_rmfiles = rm -f $(rm-files)
 
-
-a_flags = -Wp,-MD,$(depfile) $(AFLAGS) $(AFLAGS_KERNEL) \
-	  $(NOSTDINC_FLAGS) $(CPPFLAGS) \
-	  $(modkern_aflags) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
-
-quiet_cmd_as_o_S = AS      $@
-cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
-
 # read all saved command lines
 
 targets := $(wildcard $(sort $(targets)))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

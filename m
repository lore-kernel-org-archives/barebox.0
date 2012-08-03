Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxF4S-0000dA-An
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:25:32 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 2D5C1FFAE56
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 12:31:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 12:25:21 +0200
Message-Id: <1343989522-8807-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803102300.GB23597@game.jcrosoft.org>
 <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/12] kbuild: allow to have custom cppflags for pbl
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/Makefile.build |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index e5b7779..383d73f 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -188,7 +188,7 @@ quiet_cmd_pbl_cc_o_c = PBLCC   $@
 
 ifndef CONFIG_MODVERSIONS
 cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
-cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) -c -o $@ $<
+cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 
 else
 # When module versioning is enabled the following steps are executed:
@@ -282,7 +282,7 @@ quiet_cmd_as_o_S = AS $(quiet_modtag)  $@
 cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
 
 quiet_cmd_pbl_as_o_S = PBLAS   $@
-cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) -c -o $@ $<
+cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 
 pbl-%.o: %.S
 	$(call if_changed_dep,pbl_as_o_S)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

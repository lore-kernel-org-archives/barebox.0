Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sv682-00070B-Pi
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 12:28:19 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6CDB0FF93E6
 for <barebox@lists.infradead.org>; Sat, 28 Jul 2012 14:34:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 28 Jul 2012 14:27:51 +0200
Message-Id: <1343478472-19041-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120728122416.GA26655@game.jcrosoft.org>
References: <20120728122416.GA26655@game.jcrosoft.org>
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
Subject: [PATCH 14/15] kbuild: allow to have custom cppflags for pbl
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/Makefile.build |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index e5b7779..0471a46 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -188,7 +188,7 @@ quiet_cmd_pbl_cc_o_c = PBLCC   $@
 
 ifndef CONFIG_MODVERSIONS
 cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
-cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) -c -o $@ $<
+cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 
 else
 # When module versioning is enabled the following steps are executed:
@@ -279,7 +279,7 @@ cmd_as_s_S       = $(CPP) $(a_flags)   -o $@ $<
 	$(call if_changed_dep,as_s_S)
 
 quiet_cmd_as_o_S = AS $(quiet_modtag)  $@
-cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
+cmd_as_o_S       = $(CC) $(a_flags) $(PBL_CPPFLAGS) -c -o $@ $<
 
 quiet_cmd_pbl_as_o_S = PBLAS   $@
 cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) -c -o $@ $<
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

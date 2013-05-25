Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgEaU-0000h0-Kr
 for barebox@lists.infradead.org; Sat, 25 May 2013 13:32:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 25 May 2013 15:32:18 +0200
Message-Id: <1369488741-4313-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
References: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] pbl: Fix typo in make causing pbl files to be rebuilt
To: barebox@lists.infradead.org

We had pbl_cc__o_c instead of pbl_cc_o_c. This caused all pbl object
files to be rebuilt everytime due to missing .cmd file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a95bbe4..4ef2c56 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -233,7 +233,7 @@ define rule_pbl_cc_o_c
 	$(call echo-cmd,checksrc) $(cmd_checksrc)			  \
 	$(call echo-cmd,pbl_cc_o_c) $(cmd_pbl_cc_o_c);			  \
 	$(cmd_modversions)						  \
-	scripts/basic/fixdep $(depfile) $@ '$(call make-cmd,pbl_cc__o_c)' >    \
+	scripts/basic/fixdep $(depfile) $@ '$(call make-cmd,pbl_cc_o_c)' >    \
 	                                              $(dot-target).tmp;  \
 	rm -f $(depfile);						  \
 	mv -f $(dot-target).tmp $(dot-target).cmd
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

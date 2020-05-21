Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnoJ-0004nA-EN
 for barebox@lists.infradead.org; Thu, 21 May 2020 16:12:45 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 22 May 2020 01:12:11 +0900
Message-Id: <20200521161211.349792-1-masahiroy@kernel.org>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fixup! kbuild: unify barebox and pbl build commands
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Sascha,

Some redundant code slipped in.

Could you please squash this into the preivous
"kbuild: unify barebox and pbl build commands" ?


 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 31341d23c..ed2bb28c5 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -117,7 +117,7 @@ cmd_cc_i_c       = $(CPP) $(c_flags)   -o $@ $<
 # (See cmd_cc_o_c + relevant part of rule_cc_o_c)
 
 quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
-      cmd_cc_o_c = $(CC) $(c_flags) $(if $(part-of-pbl),-D__PBL__ $(PBL_CPPFLAGS)) -c -o $@ $<
+      cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
 
 define rule_cc_o_c
 	$(call cmd,checksrc)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

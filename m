Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guCFz-0006Gq-Hd
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 08:20:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2019 09:20:26 +0100
Message-Id: <20190214082026.22614-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] kbuild: Add missing semicolon
To: Barebox List <barebox@lists.infradead.org>

Fixes: 4fafb35d925e5 ("kbuild: cherry-pick changes from Linux v5.0-rc3")

The change cherry-picked from the Kernel commit 7d0ea2524202 ("kbuild: use
'else ifeq' for checksrc to improve readability") also removed the
trailing semicolons from the cmd_*checksrc lines. These were removed in
kernel commit e5d289100d ("kbuild: remove trailing semicolon from cmd_*
passed to if_changed_rule"), but seems the barebox Kbuild version is not
yet ready for this change. Without the semicolons a make C=1 build fails
with:

No such file: echo

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 scripts/Makefile.build | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 2c45ea872f..db687d5f9e 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -86,10 +86,10 @@ __build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(pbl-target) $(
 # Linus' kernel sanity checking tool
 ifeq ($(KBUILD_CHECKSRC),1)
   quiet_cmd_checksrc       = CHECK   $<
-        cmd_checksrc       = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
+        cmd_checksrc       = $(CHECK) $(CHECKFLAGS) $(c_flags) $< ;
 else ifeq ($(KBUILD_CHECKSRC),2)
   quiet_cmd_force_checksrc = CHECK   $<
-        cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
+        cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $< ;
 endif
 
 # Compile C sources (.c)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

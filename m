Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnkXX-0006py-ES
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 15:08:49 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 23 Jun 2020 17:08:23 +0200
Message-Id: <20200623150823.25336-1-cleger@kalray.eu>
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
Subject: [PATCH] kbuild: fix typo in --no-whole-archive flag
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

"whole" was replaced with "while" during a previous patch. Fix this flag
to allow building correctly.

Fixes 0a78b33954 ("kbuild: switch over to thin archive")
Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/Makefile      | 2 +-
 arch/mips/pbl/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/kvx/Makefile b/arch/kvx/Makefile
index 9e7c8c07f..13c4e2431 100644
--- a/arch/kvx/Makefile
+++ b/arch/kvx/Makefile
@@ -30,6 +30,6 @@ lds-y += arch/kvx/cpu/barebox.lds
 
 cmd_barebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_barebox) -o $@ \
       -T $(BAREBOX_LDS) \
-      --whole-archive $(BAREBOX_OBJS) --no-while-archive \
+      --whole-archive $(BAREBOX_OBJS) --no-whole-archive \
       -L$(LIBGCC_PATH) -lgcc \
       $(filter-out $(BAREBOX_LDS) $(BAREBOX_OBJS) FORCE ,$^)
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index 3bd0df165..f85c7a6d6 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -31,7 +31,7 @@ zbarebox-lds := $(obj)/zbarebox.lds
 quiet_cmd_zbarebox__ ?= LD      $@
       cmd_zbarebox__ ?= $(LD) $(KBUILD_LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
       -T $(zbarebox-lds)                                           \
-      --whole-archive $(zbarebox-common) --no-while-archive        \
+      --whole-archive $(zbarebox-common) --no-whole-archive        \
       $(filter-out $(zbarebox-lds) $(zbarebox-common) FORCE ,$^)
 
 $(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

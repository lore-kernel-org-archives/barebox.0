Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TeGjt-0007sS-0P
 for barebox@lists.infradead.org; Fri, 30 Nov 2012 02:54:05 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so106353lbo.36
 for <barebox@lists.infradead.org>; Thu, 29 Nov 2012 18:54:02 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 30 Nov 2012 06:53:53 +0400
Message-Id: <1354244033-9664-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: fix out-of-tree build
To: barebox@lists.infradead.org

The commit

  commit d25d94bea67308e29db895d418f3f1f8153ae2ea
  Author: Antony Pavlov <antonynpavlov@gmail.com>
  Date:   Fri Jun 1 13:23:20 2012 +0400

      MIPS: make possible board-specific header files

      This patch makes possible to put a board-specific
      header file (e. g. foobar.h) to arch/mips/boards/*/include/board/.

breaks the out-of-tree build for the boards that use it (rzx50).

Reported-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/mips/Makefile |    8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 5e40de7..f32089d 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -88,14 +88,18 @@ else
 BOARD :=
 endif
 
+ifeq ($(KBUILD_SRC),)
+CPPFLAGS += -I$(BOARD)/include
+else
+CPPFLAGS += -I$(srctree)/$(BOARD)/include
+endif
+
 ifneq ($(machine-y),)
 MACH  := arch/mips/mach-$(machine-y)/
 else
 MACH  :=
 endif
 
-CPPFLAGS += -I$(BOARD)/include
-
 common-y += $(BOARD) $(MACH)
 common-y += arch/mips/lib/
 common-y += arch/mips/boot/
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

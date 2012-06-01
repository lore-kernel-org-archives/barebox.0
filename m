Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaO4y-0004s7-0I
 for barebox@lists.infradead.org; Fri, 01 Jun 2012 09:23:33 +0000
Received: by lbbgg6 with SMTP id gg6so1832357lbb.36
 for <barebox@lists.infradead.org>; Fri, 01 Jun 2012 02:23:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Jun 2012 13:23:20 +0400
Message-Id: <1338542601-28151-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] MIPS: make possible board-specific header files
To: barebox@lists.infradead.org

This patch makes possible to put a board-specific
header file (e. g. foobar.h) to arch/mips/boards/*/include/board/.

Header file usage:
 #include <board/foobar.h>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index f28c21d..6b7dae9 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -96,6 +96,8 @@ else
 MACH  :=
 endif
 
+CPPFLAGS += -I$(BOARD)/include
+
 common-y += $(BOARD) $(MACH)
 common-y += arch/mips/lib/
 common-y += arch/mips/boot/
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

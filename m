Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYb3z-0002Az-2B
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 10:18:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 Dec 2011 11:18:41 +0100
Message-Id: <1323339521-9544-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: pass -msoft-float
To: barebox@lists.infradead.org

This is necessary to prevent NEON instructions from leaking into
the binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index e5e951c..a3e12e6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -39,8 +39,8 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
-CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
-AFLAGS   += -include asm/unified.h
+CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float
+AFLAGS   += -include asm/unified.h -msoft-float
 
 # Machine directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

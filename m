Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UvK6P-0000Qs-Ka
 for barebox@lists.infradead.org; Sat, 06 Jul 2013 04:28:06 +0000
Received: by mail-la0-f46.google.com with SMTP id eg20so2558691lab.33
 for <barebox@lists.infradead.org>; Fri, 05 Jul 2013 21:27:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  6 Jul 2013 08:25:55 +0400
Message-Id: <1373084755-16398-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: rzx50: add nmon support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                                      | 1 +
 arch/mips/boards/rzx50/include/board/board_pbl_start.h | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index b2452c7..ca240d2 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -72,6 +72,7 @@ config MACH_MIPS_XBURST
 	select HAS_DEBUG_LL
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
 endchoice
 
 source arch/mips/mach-malta/Kconfig
diff --git a/arch/mips/boards/rzx50/include/board/board_pbl_start.h b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
index f71641a..fb914d9 100644
--- a/arch/mips/boards/rzx50/include/board/board_pbl_start.h
+++ b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
@@ -19,6 +19,7 @@
 
 #include <asm/pbl_macros.h>
 #include <mach/debug_ll.h>
+#include <asm/pbl_nmon.h>
 
 	.macro	board_pbl_start
 	.set	push
@@ -34,6 +35,8 @@
 	debug_ll_ns16550_outc '.'
 	debug_ll_ns16550_outnl
 
+	mips_nmon
+
 	copy_to_link_location	pbl_start
 
 	.set	pop
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

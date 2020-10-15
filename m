Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSz8A-0002OW-BK
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 09:01:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Oct 2020 11:00:54 +0200
Message-Id: <20201015090055.31130-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] sandbox: fix link error when UBSAN is selected without
 ASAN
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

dc7f1fce6747 ("sandbox: fix SANDBOX_UNWIND dependency to be KASAN
only") already restricted ARCH_HAS_STACK_DUMP to be dependent
only on AddressSanitizer being available.

This change got lost by an erroneous merge conflict resolution in
39bdcdfb814a ("Merge branch 'for-next/misc' into master"). Fix it up.

Fixes: 39bdcdfb814a ("Merge branch 'for-next/misc' into master")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index bced81f25e9b..113b619fc35b 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -10,6 +10,7 @@ config SANDBOX
 	select BLOCK
 	select BLOCK_WRITE
 	select PARTITION_DISK
+	select ARCH_HAS_STACK_DUMP if ASAN
 	default y
 
 config ARCH_TEXT_BASE
@@ -21,12 +22,6 @@ config LINUX
 	default y
 	select GENERIC_FIND_NEXT_BIT
 
-config SANDBOX_UNWIND
-	bool
-	default y
-	select ARCH_HAS_STACK_DUMP
-	depends on UBSAN || ASAN
-
 config SANDBOX_REEXEC
 	prompt "exec(2) reset handler"
 	def_bool y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

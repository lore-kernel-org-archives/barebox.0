Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Xap-0006J7-1F
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:51 +0000
Received: by mail-lb0-f172.google.com with SMTP id c11so3822495lbj.3
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:28 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:13:01 +0400
Message-Id: <1390057983-17921-12-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 11/13] MIPS: loongson-ls1b: add NMON support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h | 3 +++
 arch/mips/mach-loongson/Kconfig                                | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h b/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
index aa30e8d..1a92794 100644
--- a/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
+++ b/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
@@ -18,6 +18,7 @@
 #include <asm/pbl_macros.h>
 #include <mach/loongson1.h>
 #include <mach/debug_ll.h>
+#include <asm/pbl_nmon.h>
 
 	.macro	board_pbl_start
 	.set	push
@@ -32,6 +33,8 @@
 	debug_ll_ns16550_outc '.'
 	debug_ll_ns16550_outnl
 
+	mips_nmon
+
 	copy_to_link_location	pbl_start
 
 	.set	pop
diff --git a/arch/mips/mach-loongson/Kconfig b/arch/mips/mach-loongson/Kconfig
index fe48ed6..c9f1902 100644
--- a/arch/mips/mach-loongson/Kconfig
+++ b/arch/mips/mach-loongson/Kconfig
@@ -17,6 +17,7 @@ config BOARD_LOONGSON_TECH_LS1B
 	select DRIVER_SERIAL_NS16550
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
 
 endchoice
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

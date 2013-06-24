Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrCBK-0002KN-BX
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 19:12:06 +0000
Received: by mail-la0-f50.google.com with SMTP id dy20so10818525lab.37
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 12:11:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Jun 2013 23:10:12 +0400
Message-Id: <1372101012-11666-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
References: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] MIPS: qemu-malta: add nmon
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/qemu-malta/include/board/board_pbl_start.h |    3 +++
 arch/mips/mach-malta/Kconfig                                |    1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
index 5b06770..bcd9789 100644
--- a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
+++ b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
@@ -18,6 +18,7 @@
  */
 
 #include <asm/pbl_macros.h>
+#include <asm/pbl_nmon.h>
 
 	.macro	board_pbl_start
 	.set	push
@@ -28,6 +29,8 @@
 	/* cpu specific setup ... */
 	/* ... absent */
 
+	mips_nmon
+
 	copy_to_link_location	pbl_start
 
 	.set	pop
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index 1d291dc..67763f8 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -11,6 +11,7 @@ config BOARD_QEMU_MALTA
 	bool "qemu malta"
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
 
 endchoice
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

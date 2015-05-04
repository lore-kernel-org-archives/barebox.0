Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpFUJ-0005Fo-WB
 for barebox@lists.infradead.org; Mon, 04 May 2015 12:28:45 +0000
Received: by layy10 with SMTP id y10so102824420lay.0
 for <barebox@lists.infradead.org>; Mon, 04 May 2015 05:28:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 May 2015 15:29:24 +0300
Message-Id: <1430742565-18714-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
References: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/5] MIPS: tplink-mr3020: enable nmon
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h | 3 +++
 arch/mips/mach-ath79/Kconfig                                   | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
index f85c5ad..944a510 100644
--- a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
+++ b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
@@ -17,6 +17,7 @@
  */
 
 #include <asm/pbl_macros.h>
+#include <asm/pbl_nmon.h>
 
 	.macro	board_pbl_start
 	.set	push
@@ -26,6 +27,8 @@
 
 	mips_disable_interrupts
 
+	mips_nmon
+
 	copy_to_link_location	pbl_start
 
 	.set	pop
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 3fd9cdd..f730b37 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -11,6 +11,7 @@ config BOARD_TPLINK_MR3020
 	bool "TP-LINK MR3020"
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
+	select HAS_NMON
 
 endchoice
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f182.google.com ([209.85.217.182])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjSPo-0004MS-LO
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 10:55:05 +0000
Received: by mail-lb0-f182.google.com with SMTP id q15so1384335lbi.27
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 03:54:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Jun 2013 14:53:26 +0400
Message-Id: <1370256807-26755-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
References: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 4/5] MIPS: rzx50: pbl: use debug_ll
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/rzx50/include/board/board_pbl_start.h |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/boards/rzx50/include/board/board_pbl_start.h b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
index cba3e7f..f71641a 100644
--- a/arch/mips/boards/rzx50/include/board/board_pbl_start.h
+++ b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
@@ -18,6 +18,7 @@
  */
 
 #include <asm/pbl_macros.h>
+#include <mach/debug_ll.h>
 
 	.macro	board_pbl_start
 	.set	push
@@ -28,6 +29,11 @@
 	/* CPU/SoC specific setup ... */
 	/* ... absent */
 
+	debug_ll_ns16550_init
+
+	debug_ll_ns16550_outc '.'
+	debug_ll_ns16550_outnl
+
 	copy_to_link_location	pbl_start
 
 	.set	pop
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

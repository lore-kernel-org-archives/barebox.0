Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9If-0003GL-2I
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:11 +0000
Received: by mail-wr0-x244.google.com with SMTP id w18-v6so17223905wrn.6
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:34:03 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:38 +0300
Message-Id: <20180522153342.24933-9-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 08/12] MIPS: fix copy_to_link_location for 64 bit mode
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

MIPS `lw` instruction loads a 32 bit word from memory on both 32 bit and 64 bit
systems. On the other hand LONGSIZE is either 4 or 8 depending on selected code
model. This discrepancy causes copy_to_link_location failure on 64 bit systems.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 37b150ac2..18115c848 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -134,21 +134,22 @@
 	subu	t2, t1, t0	/* t2 <- size of pbl */
 	addu	a2, a0, t2	/* a2 <- source end address */
 
+#define WSIZE	4
 copy_loop:
 	/* copy from source address [a0] */
-	lw	t4, LONGSIZE * 0(a0)
-	lw	t5, LONGSIZE * 1(a0)
-	lw	t6, LONGSIZE * 2(a0)
-	lw	t7, LONGSIZE * 3(a0)
+	lw	t4, WSIZE * 0(a0)
+	lw	t5, WSIZE * 1(a0)
+	lw	t6, WSIZE * 2(a0)
+	lw	t7, WSIZE * 3(a0)
 	/* copy to target address [a1] */
-	sw	t4, LONGSIZE * 0(a1)
-	sw	t5, LONGSIZE * 1(a1)
-	sw	t6, LONGSIZE * 2(a1)
-	sw	t7, LONGSIZE * 3(a1)
-	addi	a0, LONGSIZE * 4
+	sw	t4, WSIZE * 0(a1)
+	sw	t5, WSIZE * 1(a1)
+	sw	t6, WSIZE * 2(a1)
+	sw	t7, WSIZE * 3(a1)
+	addi	a0, WSIZE * 4
 	subu	t3, a0, a2
 	blez	t3, copy_loop
-	 addi	a1, LONGSIZE * 4
+	 addi	a1, WSIZE * 4
 
 copy_loop_exit:
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

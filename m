Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRa-0002j0-7I
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:49 +0000
Received: by mail-wr0-x244.google.com with SMTP id p5-v6so5799501wre.12
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:35 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:46 +0300
Message-Id: <20180517135858.16202-4-pmamonov@gmail.com>
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 03/15] FIXME: mips: fix copy_to_link_location for 64 bit
 mode
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

A better solution: use 4 instead of LONGSIZE

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 37b150ac2..8950b400d 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -134,17 +134,25 @@
 	subu	t2, t1, t0	/* t2 <- size of pbl */
 	addu	a2, a0, t2	/* a2 <- source end address */
 
+#if (LONGSIZE == 4)
+#define LW	lw
+#define SW	sw
+#endif
+#if (LONGSIZE == 8)
+#define LW	ld
+#define SW	sd
+#endif
 copy_loop:
 	/* copy from source address [a0] */
-	lw	t4, LONGSIZE * 0(a0)
-	lw	t5, LONGSIZE * 1(a0)
-	lw	t6, LONGSIZE * 2(a0)
-	lw	t7, LONGSIZE * 3(a0)
+	LW	t4, LONGSIZE * 0(a0)
+	LW	t5, LONGSIZE * 1(a0)
+	LW	t6, LONGSIZE * 2(a0)
+	LW	t7, LONGSIZE * 3(a0)
 	/* copy to target address [a1] */
-	sw	t4, LONGSIZE * 0(a1)
-	sw	t5, LONGSIZE * 1(a1)
-	sw	t6, LONGSIZE * 2(a1)
-	sw	t7, LONGSIZE * 3(a1)
+	SW	t4, LONGSIZE * 0(a1)
+	SW	t5, LONGSIZE * 1(a1)
+	SW	t6, LONGSIZE * 2(a1)
+	SW	t7, LONGSIZE * 3(a1)
 	addi	a0, LONGSIZE * 4
 	subu	t3, a0, a2
 	blez	t3, copy_loop
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qf5aE-0005YZ-5x
	for barebox@lists.infradead.org; Fri, 08 Jul 2011 07:34:43 +0000
Received: by bwf12 with SMTP id 12so1815701bwf.36
	for <barebox@lists.infradead.org>; Fri, 08 Jul 2011 00:34:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  8 Jul 2011 11:29:27 +0400
Message-Id: <1310110167-14431-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: starts.S fixup
To: barebox@lists.infradead.org

---
 arch/mips/boot/start.S |   14 ++++++++++----
 1 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 53077e9..6996b33 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -70,10 +70,14 @@ _start:
 	mtc0	zero, CP0_COUNT
 	mtc0	zero, CP0_COMPARE
 
-	ADR	a0, _start, t1	/* a0 <- current position of _start */
+	/* copy barebox to link location */
+	ADR	a0, _start, t1	/* a0 <- pc-relative position of _start */
 
 	la	a1, _start	/* link (RAM) _start address */
 
+	beq	a0, a1, clear_bss
+	 nop
+
 	la	t0, _start
 	la	t1, __bss_start
 	subu	t2, t1, t0	/* t2 <- size of barebox */
@@ -82,11 +86,13 @@ _start:
 #define LONGSIZE	4
 
 copy_loop:
-	lw		t4, LONGSIZE * 0(a0)	# copy from source address [t0]
+	/* copy from source address [a0] */
+	lw		t4, LONGSIZE * 0(a0)
 	lw		t5, LONGSIZE * 1(a0)
 	lw		t6, LONGSIZE * 2(a0)
 	lw		t7, LONGSIZE * 3(a0)
-	sw		t4, LONGSIZE * 0(a1)	# copy fo target address [t1]
+	/* copy fo target address [a1] */
+	sw		t4, LONGSIZE * 0(a1)
 	sw		t5, LONGSIZE * 1(a1)
 	sw		t6, LONGSIZE * 2(a1)
 	sw		t7, LONGSIZE * 3(a1)
@@ -100,7 +106,7 @@ clear_bss:
 	sw	zero, (t0)
 	la	t1, _end - 4
 1:
-	addiu	t0, 4
+	addiu	t0, LONGSIZE
 	sw	zero, (t0)
 	bne	t0, t1, 1b
 	 nop
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

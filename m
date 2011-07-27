Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f170.google.com ([209.85.215.170])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qm0mX-0003wV-So
	for barebox@lists.infradead.org; Wed, 27 Jul 2011 09:52:02 +0000
Received: by eyd10 with SMTP id 10so2597354eyd.29
	for <barebox@lists.infradead.org>; Wed, 27 Jul 2011 02:52:00 -0700 (PDT)
Message-ID: <4E2FDFBD.2020804@googlemail.com>
Date: Wed, 27 Jul 2011 11:51:57 +0200
From: Andre Naujoks <nautsch2@googlemail.com>
MIME-Version: 1.0
References: <4E2EC796.7070408@googlemail.com> <4E2ECD3A.1060509@pengutronix.de>
	<4E2FB2D8.4000306@googlemail.com> <4E2FDF54.6000804@googlemail.com>
In-Reply-To: <4E2FDF54.6000804@googlemail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] Re: barebox compilation with gcc 4.5.2 and ptxdist
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

From 9b3985045da1161a934cba48749fe1759e62dae6 Mon Sep 17 00:00:00 2001
From: Andre Naujoks <nautsch2@googlemail.com>
Date: Wed, 27 Jul 2011 11:29:43 +0200
Subject: [PATCH 2/2] Ported ppc ashrdi3 from linux kernel

---
 arch/ppc/lib/misc.S |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/lib/misc.S b/arch/ppc/lib/misc.S
index 24f901f..bd06ff2 100644
--- a/arch/ppc/lib/misc.S
+++ b/arch/ppc/lib/misc.S
@@ -2,6 +2,20 @@
 #include <asm/ppc_asm.tmpl>
 #include <asm-generic/errno.h>
 
+	.globl	__ashrdi3
+__ashrdi3:
+	subfic	r6,r5,32
+	srw	r4,r4,r5	# LSW = count > 31 ? 0 : LSW >> count
+	addi	r7,r5,32	# could be xori, or addi with -32
+	slw	r6,r3,r6	# t1 = count > 31 ? 0 : MSW << (32-count)
+	rlwinm	r8,r7,0,32	# t3 = (count < 32) ? 32 : 0
+	sraw	r7,r3,r7	# t2 = MSW >> (count-32)
+	or	r4,r4,r6	# LSW |= t1
+	slw	r7,r7,r8	# t2 = (count < 32) ? 0 : t2
+	sraw	r3,r3,r5	# MSW = MSW >> count
+	or	r4,r4,r7	# LSW |= t2
+	blr
+
 	.globl	__ashldi3
 __ashldi3:
 	subfic	r6,r5,32
-- 
1.7.5.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

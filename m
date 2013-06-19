Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEQs-0005Eh-C8
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:12:05 +0000
Received: from mailout-de.gmx.net ([10.1.76.30]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0M6hJq-1U3ytk1IEm-00wYUU for
 <barebox@lists.infradead.org>; Wed, 19 Jun 2013 11:11:40 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 19 Jun 2013 11:11:28 +0200
Message-Id: <1371633093-23179-4-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 3/8] MIPS: pbl: add pbl_probe_mem macro
To: barebox@lists.infradead.org

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/include/asm/pbl_macros.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index cfca117..22d41b8 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -38,6 +38,18 @@
 	.set	pop
 	.endm
 
+	.macro	pbl_probe_mem ret1 ret2 addr
+	.set	push
+	.set	noreorder
+	la	\ret1, \addr
+	sw	zero, 0(\ret1)
+	li	\ret2, 0x12345678
+	sw	\ret2, 0(\ret1)
+	lw	\ret2, 0(\ret1)
+	li	\ret1, 0x12345678
+	.set	pop
+	.endm
+
 	/*
 	 * ADR macro instruction (inspired by ARM)
 	 *
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

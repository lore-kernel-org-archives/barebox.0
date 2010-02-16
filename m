Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOhT-0005Ut-QR
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:47:07 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 16 Feb 2010 15:46:23 +0100
Message-Id: <1266331586-11253-9-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-8-git-send-email-mkl@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-3-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-4-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-5-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-6-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-7-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-8-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 08/11] ioreadsb: put the whole ioreadsb function into the
	.text.readsb section
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/lib/io-readsb.S |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/io-readsb.S b/arch/arm/lib/io-readsb.S
index 9ee07b8..963c455 100644
--- a/arch/arm/lib/io-readsb.S
+++ b/arch/arm/lib/io-readsb.S
@@ -10,6 +10,8 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+.section .text.readsb
+
 .Linsb_align:	rsb	ip, ip, #4
 		cmp	ip, r2
 		movgt	ip, r2
@@ -23,8 +25,6 @@
 		subs	r2, r2, ip
 		bne	.Linsb_aligned
 
-.section .text.readsb
-
 ENTRY(readsb)
 		teq	r2, #0		@ do we have to check for the zero len?
 		moveq	pc, lr
-- 
1.6.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

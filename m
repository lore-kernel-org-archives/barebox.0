Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEQr-0005Ed-5S
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:12:03 +0000
Received: from mailout-de.gmx.net ([10.1.76.30]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0LcEEV-1UPkuk3NMD-00jYGm for
 <barebox@lists.infradead.org>; Wed, 19 Jun 2013 11:11:39 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 19 Jun 2013 11:11:26 +0200
Message-Id: <1371633093-23179-2-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 1/8] MIPS: pbl: add mips_barebox_10h asm macro
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

The mips_barebox_10h macro inserts at offset 0x10
of the barebox image the string 'barebox ' followed
by compile time version mark.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 3971b61..a3f970c 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -97,6 +97,22 @@ copy_loop_exit:
 	.set	pop
 	.endm
 
+	.macro	mips_barebox_10h
+	.set	push
+	.set	noreorder
+
+	b	1f
+	 nop
+
+	.org	0x10
+	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
+	.byte	0
+
+	.align	4
+1:
+	.set	pop
+	.endm
+
 	/*
 	 * Dominic Sweetman, See MIPS Run, Morgan Kaufmann, 2nd edition, 2006
 	 *
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

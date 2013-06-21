Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upv68-0001Qo-3Q
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 06:45:28 +0000
Received: from mailout-de.gmx.net ([10.1.76.17]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0MTdXC-1Uh16k1tEe-00QTeM for
 <barebox@lists.infradead.org>; Fri, 21 Jun 2013 08:45:02 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 21 Jun 2013 08:44:56 +0200
Message-Id: <1371797096-11927-1-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1371633093-23179-3-git-send-email-linux@rempel-privat.de>
References: <1371633093-23179-3-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 2/8 v2] MIPS: pbl: add pbl_sleep macro
To: barebox@lists.infradead.org

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/include/asm/pbl_macros.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index a3f970c..fde9434 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -28,6 +28,16 @@
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
 
+	.macro	pbl_sleep reg count
+	.set push
+	.set noreorder
+	li	\reg, \count
+254:
+	bgtz	\reg, 254b
+	 addi	\reg, -1
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

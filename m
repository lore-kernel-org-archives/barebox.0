Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRZX5-0000ib-Mz
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 09:19:54 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 27 Nov 2018 10:19:29 +0100
Message-Id: <20181127091935.2992-5-o.rempel@pengutronix.de>
In-Reply-To: <20181127091935.2992-1-o.rempel@pengutronix.de>
References: <20181127091935.2992-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 04/10] MIPS: start: preserve DTB pointer for later use
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

We will get DTB pointer in a0 register. Since a0 is used as argument by
other functions, we need to preserve it and then pass as argument to the
main_entry().

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/boot/start.S | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index e937e89af1..39ac9414d8 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -27,6 +27,10 @@ EXPORT(_start)
 
 	mips_barebox_10h
 
+	/* save dtb pointer */
+	move	s0, a0
+	move	s1, a1
+
 	/* disable watchpoints */
 	mtc0	zero, CP0_WATCHLO
 	mtc0	zero, CP0_WATCHHI
@@ -37,6 +41,9 @@ EXPORT(_start)
 
 	stack_setup
 
+	/* restore dtb pointer */
+	move	a0, s0
+	move	a1, s1
 	la	v0, main_entry
 	jal	v0
 	 nop
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

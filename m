Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SO84c-0006Cc-9z
 for barebox@lists.infradead.org; Sat, 28 Apr 2012 13:52:31 +0000
Received: by lboj14 with SMTP id j14so1332056lbo.36
 for <barebox@lists.infradead.org>; Sat, 28 Apr 2012 06:52:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 28 Apr 2012 17:52:09 +0400
Message-Id: <1335621130-935-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/2] MIPS: start.S: add "barebox" label at _start + 8
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index b756d40..d8f4fd5 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -52,6 +52,14 @@ _pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
 	.align 4
 
 EXPORT(_start)
+
+	b	__start
+	 nop
+
+	.ascii  "barebox"
+	.byte   0
+
+__start:
 	/* disable watchpoints */
 	mtc0	zero, CP0_WATCHLO
 	mtc0	zero, CP0_WATCHHI
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

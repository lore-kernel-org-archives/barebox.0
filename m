Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QdTft-0004Sa-Gg
	for barebox@lists.infradead.org; Sun, 03 Jul 2011 20:53:54 +0000
Received: by mail-fx0-f43.google.com with SMTP id 17so4167232fxg.16
	for <barebox@lists.infradead.org>; Sun, 03 Jul 2011 13:53:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 Jul 2011 00:53:03 +0400
Message-Id: <1309726383-17932-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309726383-17932-1-git-send-email-antonynpavlov@gmail.com>
References: <1309726383-17932-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] NiosII: fix typo in cpu/exceptions.S
To: barebox@lists.infradead.org

---
 arch/nios2/cpu/exceptions.S |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/nios2/cpu/exceptions.S b/arch/nios2/cpu/exceptions.S
index a949372..8e024ce 100644
--- a/arch/nios2/cpu/exceptions.S
+++ b/arch/nios2/cpu/exceptions.S
@@ -122,7 +122,7 @@ _exception:
 	mov     r4, sp  /* ptr to regs */
 	callr   r3
 
-	/* Restore regsisters and return from exception*/
+	/* Restore registers and return from exception */
 _exception_return:
 	ldw     r1, 4(sp)
 	ldw     r2, 8(sp)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

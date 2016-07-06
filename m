Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKrpP-0001Rl-Sr
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 18:45:44 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id CFAC126C2001
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 20:44:46 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 20:44:34 +0200
Message-Id: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/7] compiler: avoid redefining symbols when running with
 checker
To: barebox@lists.infradead.org

Avoid redefining __user and __kernel if running with a checker
enabled.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 include/linux/compiler.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 020ad16..91331dd 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -4,8 +4,8 @@
 #ifndef __ASSEMBLY__
 
 #ifdef __CHECKER__
-# define __user		__attribute__((noderef, address_space(1)))
-# define __kernel	__attribute__((address_space(0)))
+# define __user		/* no user address space in barebox */
+# define __kernel	/* default address space */
 # define __safe		__attribute__((safe))
 # define __force	__attribute__((force))
 # define __nocast	__attribute__((nocast))
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

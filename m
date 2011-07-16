Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qi2Zu-0000iC-Nd
	for barebox@lists.infradead.org; Sat, 16 Jul 2011 10:58:35 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id CEE09FF9FFC
	for <barebox@lists.infradead.org>;
	Sat, 16 Jul 2011 12:58:56 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Jul 2011 12:42:01 +0200
Message-Id: <1310812921-3685-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] fix: commands/bootm.c:346:2: warning: statement with no effect
To: barebox@lists.infradead.org

convert enable_interrupts() and disable_interrupts() to static inline
if no IRQ supoprt enable

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/common.h |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/include/common.h b/include/common.h
index 491bc98..f3353c8 100644
--- a/include/common.h
+++ b/include/common.h
@@ -116,8 +116,14 @@ void	irq_free_handler   (int);
 void	enable_interrupts  (void);
 int	disable_interrupts (void);
 #else
-#define enable_interrupts() do {} while (0)
-#define disable_interrupts() 0
+static inline void enable_interrupts(void)
+{
+}
+
+static inline int disable_interrupts(void)
+{
+	return 0;
+}
 #endif
 
 /* lib_$(ARCH)/time.c */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

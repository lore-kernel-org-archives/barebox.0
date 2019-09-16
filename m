Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qME-0006uG-L4
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 12:43:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1i9qM8-0008Pn-Fi
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 14:43:48 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1i9qM8-0004Ec-5X
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 14:43:48 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 16 Sep 2019 14:43:40 +0200
Message-Id: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/6] barebox-wrapper: add IRQ_WAKE_THREAD
To: Barebox List <barebox@lists.infradead.org>

Add a new irqreturn_t IRQ_WAKE_THREAD.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/linux/barebox-wrapper.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index e998932d1201..fee02d052d94 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -45,6 +45,7 @@ static inline void vfree(const void *addr)
 typedef int irqreturn_t;
 #define IRQ_NONE 0
 #define IRQ_HANDLED 0
+#define IRQ_WAKE_THREAD 2
 
 /* To ease clk drivers porting from Linux kernel */
 #define __clk_get_name(clk)		(clk->name)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

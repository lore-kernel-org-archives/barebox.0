Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward2h.mail.yandex.net ([84.201.187.147])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWrS-0005xx-6o
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 20:22:45 +0000
Received: from smtp1h.mail.yandex.net (smtp1h.mail.yandex.net [84.201.187.144])
 by forward2h.mail.yandex.net (Yandex) with ESMTP id 22542701BE3
 for <barebox@lists.infradead.org>; Mon,  2 Mar 2015 23:22:17 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Mon,  2 Mar 2015 23:21:53 +0300
Message-Id: <1425327722-28232-10-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH 09/18] CLK: Add helper defines to barebox-wrapper.h for easier
 porting of drivers from Linux kernel.
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 include/linux/barebox-wrapper.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index d34d1d1..cbc8934 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -73,4 +73,10 @@ typedef int irqreturn_t;
 #define IRQ_NONE 0
 #define IRQ_HANDLED 0
 
+/* To ease clk drivers porting from Linux kernel */
+#define __clk_get_name(clk)		clk->name
+#define __clk_lookup			clk_lookup
+#define __clk_get_rate			clk_get_rate
+#define __clk_get_parent		clk_get_parent
+
 #endif /* __INCLUDE_LINUX_BAREBOX_WRAPPER_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

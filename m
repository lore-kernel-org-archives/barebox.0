Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo1.mail-out.ovh.net ([178.33.253.128]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUkpc-0005qR-Kc
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 21:00:41 +0000
Received: from mail635.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 88672FFA5B7
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 22:11:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 21:58:29 +0100
Message-Id: <1351976310-9312-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351976310-9312-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121103205655.GA29599@game.jcrosoft.org>
 <1351976310-9312-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] add roundup and rounddown support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/kernel.h |   15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index e9e2f07..92c3391 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -90,5 +90,20 @@
 	__val = __val < __min ? __min: __val;	\
 	__val > __max ? __max: __val; })
 
+
+/* The `const' in roundup() prevents gcc-3.3 from calling __divdi3 */
+#define roundup(x, y) (					\
+{							\
+	const typeof(y) __y = y;			\
+	(((x) + (__y - 1)) / __y) * __y;		\
+}							\
+)
+#define rounddown(x, y) (				\
+{							\
+	typeof(x) __x = (x);				\
+	__x - (__x % (y));				\
+}							\
+)
+
 #endif /* _LINUX_KERNEL_H */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

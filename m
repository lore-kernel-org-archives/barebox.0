Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6DVV-0003mK-EH
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 13:43:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Aug 2020 15:42:55 +0200
Message-Id: <20200813134257.24627-19-s.hauer@pengutronix.de>
In-Reply-To: <20200813134257.24627-1-s.hauer@pengutronix.de>
References: <20200813134257.24627-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/20] Add WARN_ONCE() macro
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

This adds WARN_ONCE from the Linux Kernel. It is useful to warn only
once when we would otherwise spam the log.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/bug.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index 8583d2425f..82b78261fc 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -34,4 +34,17 @@
 	unlikely(__ret_warn_on);					\
 })
 #endif
+
+#define WARN_ONCE(condition, format...) ({	\
+	static int __warned;			\
+	int __ret_warn_once = !!(condition);	\
+						\
+	if (unlikely(__ret_warn_once)) {	\
+		if (WARN(!__warned, format)) {	\
+			__warned = 1;		\
+			dump_stack();		\
+		}				\
+	}					\
+	unlikely(__ret_warn_once);		\
+})
 #endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

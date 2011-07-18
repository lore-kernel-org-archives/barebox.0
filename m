Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f170.google.com ([209.85.215.170])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QinWf-0005v7-Bp
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 13:06:22 +0000
Received: by eyd10 with SMTP id 10so1453297eyd.29
	for <barebox@lists.infradead.org>; Mon, 18 Jul 2011 06:06:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 18 Jul 2011 17:06:09 +0400
Message-Id: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/2] debug_ll.h: add PUTS_LL() function
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/debug_ll.h |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index e99ae7d..6b1b174 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -35,9 +35,22 @@
 			     ch = ((v >> (i*4)) & 0xf);\
 			     ch += (ch >= 10) ? 'a' - 10 : '0';\
 			     PUTC_LL (ch); }})
+
+static __inline__ void PUTS_LL(char * str)
+{
+	while (*str) {
+		if (*str == '\n') {
+			PUTC_LL('\r');
+		}
+		PUTC_LL(*str);
+		str++;
+	}
+}
+
 #else
 # define PUTC_LL(c) do {} while (0)
 # define PUTHEX_LL(v) do {} while (0)
+# define PUTS_LL(c) do {} while (0)
 
 #endif
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QiWW7-0008Gf-2G
	for barebox@lists.infradead.org; Sun, 17 Jul 2011 18:56:39 +0000
Received: by fxg17 with SMTP id 17so4414648fxg.16
	for <barebox@lists.infradead.org>; Sun, 17 Jul 2011 11:56:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 17 Jul 2011 22:56:24 +0400
Message-Id: <1310928985-30940-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] debug_ll.h: add PUTS_LL() function
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/debug_ll.h |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index e99ae7d..87aa083 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -35,9 +35,19 @@
 			     ch = ((v >> (i*4)) & 0xf);\
 			     ch += (ch >= 10) ? 'a' - 10 : '0';\
 			     PUTC_LL (ch); }})
+
+static __inline__ void PUTS_LL(char * str)
+{
+	while (*str) {
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

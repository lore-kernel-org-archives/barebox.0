Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSOzm-0006NK-1j
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 09:17:27 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 8ADA3FFA281
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 10:27:37 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 28 Oct 2012 10:15:09 +0100
Message-Id: <1351415710-19380-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] debug_ll: use const char* for PUTS_LL
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/debug_ll.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index a8bac27..c744573 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -30,7 +30,7 @@
 			     ch += (ch >= 10) ? 'a' - 10 : '0';\
 			     PUTC_LL (ch); }})
 
-static __inline__ void PUTS_LL(char * str)
+static __inline__ void PUTS_LL(const char * str)
 {
 	while (*str) {
 		if (*str == '\n') {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

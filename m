Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDn1s-0000UW-GJ
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 04:36:33 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0L4aBsL018422
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 13:36:11 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili16) with ESMTP id t0L4aBM13845
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 13:36:11 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 21 Jan 2015 13:36:08 +0900
Message-Id: <1421814968-14674-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] debug_ll: change the argument type of putc_ll()
To: barebox@lists.infradead.org

Most of the implementations of PUTC_LL() takes "char"
(some take "int"), not "unsigned char".
Moreover, puts_ll() takes an argument with "const char *" type.

Let's drop "unsigned" from the prototype of putc_ll().

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 include/debug_ll.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index 288aa25..b0eb7cd 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -33,7 +33,7 @@
 
 #if defined (CONFIG_DEBUG_LL)
 
-static inline void putc_ll(unsigned char value)
+static inline void putc_ll(char value)
 {
 	PUTC_LL(value);
 }
@@ -67,7 +67,7 @@ static inline void puts_ll(const char * str)
 
 #else
 
-static inline void putc_ll(unsigned char value)
+static inline void putc_ll(char value)
 {
 }
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

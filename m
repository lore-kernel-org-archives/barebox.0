Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosD-0008BK-0f
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:57 +0100
Message-Id: <20180316125354.23462-22-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/78] debug_ll: support 64bit longs
To: Barebox List <barebox@lists.infradead.org>

puthex_ll outputs an unsigned long, so print all digits in case unsigned
long is 64bit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/debug_ll.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/debug_ll.h b/include/debug_ll.h
index b0eb7cd7d9..5047516399 100644
--- a/include/debug_ll.h
+++ b/include/debug_ll.h
@@ -42,7 +42,7 @@ static inline void puthex_ll(unsigned long value)
 {
 	int i; unsigned char ch;
 
-	for (i = 8; i--; ) {
+	for (i = sizeof(unsigned long) * 2; i--; ) {
 		ch = ((value >> (i * 4)) & 0xf);
 		ch += (ch >= 10) ? 'a' - 10 : '0';
 		putc_ll(ch);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

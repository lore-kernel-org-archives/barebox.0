Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward11m.cmail.yandex.net ([5.255.216.137])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baLW0-0004um-Eo
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 11:29:41 +0000
Received: from smtp2p.mail.yandex.net (smtp2p.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b6:7])
 by forward11m.cmail.yandex.net (Yandex) with ESMTP id 6883620E5F
 for <barebox@lists.infradead.org>; Thu, 18 Aug 2016 14:29:17 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Thu, 18 Aug 2016 14:29:03 +0300
Message-Id: <1471519743-22664-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH] clarify strim function description
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 lib/string.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/string.c b/lib/string.c
index a3e9fd8..1d491c9 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -641,7 +641,7 @@ char *skip_spaces(const char *str)
 }
 
 /**
- * strim - Removes leading and trailing whitespace from @s.
+ * strim - Removes trailing whitespace from @s.
  * @s: The string to be stripped.
  *
  * Note that the first trailing whitespace is replaced with a %NUL-terminator
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kXp-0003FY-8N
 for barebox@lists.infradead.org; Sat, 07 Sep 2019 23:55:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id n4so5597995pgv.2
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 16:55:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 16:54:54 -0700
Message-Id: <20190907235456.21535-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190907235456.21535-1-andrew.smirnov@gmail.com>
References: <20190907235456.21535-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] net: Adjust net_copy_uint32's signature
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Net_copy_uint32() uses memcpy() under the hood, so there's no need to
specify "to" and "from" parameters as uint32_t * and place stricter
alignment requirements than necessary.

GCC9 generates a couple of -Waddress-of-packed-member warnings here
otherwise.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/net.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/net.h b/include/net.h
index 6912a557b5..3491425e09 100644
--- a/include/net.h
+++ b/include/net.h
@@ -315,7 +315,7 @@ static inline void net_copy_ip(void *to, void *from)
 }
 
 /* copy ulong */
-static inline void net_copy_uint32(uint32_t *to, uint32_t *from)
+static inline void net_copy_uint32(void *to, void *from)
 {
 	memcpy(to, from, sizeof(uint32_t));
 }
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

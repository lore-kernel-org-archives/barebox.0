Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh5BV-0003OY-Fw
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 04:09:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id y4so2692335pgc.12
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 20:09:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 20:09:33 -0800
Message-Id: <20190109040933.19554-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] printk: Pass groupsize to memory_display() in print_hex_dump()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't hardcode grouping data into 4-byte words in print_hex_dump()
implementation and instead pass 'groupsize' to memory_display(), since
that's what that parameter is for.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/printk.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/printk.h b/include/printk.h
index aaad07552..ab2c64cf3 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -119,7 +119,7 @@ static inline void print_hex_dump(const char *level, const char *prefix_str,
 		int prefix_type, int rowsize, int groupsize,
 		const void *buf, size_t len, bool ascii)
 {
-	memory_display(buf, 0, len, 4, 0);
+	memory_display(buf, 0, len, groupsize, 0);
 }
 
 struct log_entry {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

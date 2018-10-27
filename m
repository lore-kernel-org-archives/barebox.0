Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSZ-0000o9-Uh
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id f26-v6so1336511pfn.9
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:49 -0700
Message-Id: <20181027013157.23135-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/11] linux/ctype.h: Port _tolower()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/ctype.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/ctype.h b/include/linux/ctype.h
index 74fb73577..633c3862d 100644
--- a/include/linux/ctype.h
+++ b/include/linux/ctype.h
@@ -53,4 +53,13 @@ static inline unsigned char __toupper(unsigned char c)
 #define tolower(c) __tolower(c)
 #define toupper(c) __toupper(c)
 
+/*
+ * Fast implementation of tolower() for internal usage. Do not use in your
+ * code.
+ */
+static inline char _tolower(const char c)
+{
+	return c | 0x20;
+}
+
 #endif
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

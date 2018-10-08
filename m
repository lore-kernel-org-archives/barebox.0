Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P9D-0006hG-HH
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:37:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id t70-v6so7339302pgd.12
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:36:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:33 -0700
Message-Id: <20181008063542.18709-8-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063542.18709-1-andrew.smirnov@gmail.com>
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/16] linux: string: Port kbasename()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/string.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index ed4eeb551..8479a3f57 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -111,6 +111,18 @@ extern char *strim(char *);
 
 void *memchr_inv(const void *start, int c, size_t bytes);
 
+/**
+ * kbasename - return the last part of a pathname.
+ *
+ * @path: path to extract the filename from.
+ */
+static inline const char *kbasename(const char *path)
+{
+	const char *tail = strrchr(path, '/');
+	return tail ? tail + 1 : path;
+}
+
+
 #ifdef __cplusplus
 }
 #endif
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

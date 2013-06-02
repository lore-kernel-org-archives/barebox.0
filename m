Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x236.google.com ([2607:f8b0:400e:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uj87O-0003cW-Lp
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 13:14:43 +0000
Received: by mail-pb0-f54.google.com with SMTP id ro12so4476900pbb.13
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2013 06:14:20 -0700 (PDT)
From: Masaki Muranaka <monaka@monami-ya.jp>
Date: Sun,  2 Jun 2013 22:14:09 +0900
Message-Id: <1370178849-37125-1-git-send-email-monaka@monami-ya.com>
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
Subject: [PATCH] Remove ftstc(). It is declared but not implemented.
To: barebox@lists.infradead.org

---
 include/stdio.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/stdio.h b/include/stdio.h
index 5c091a8..ff2572e 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -101,7 +101,6 @@ static inline void putchar(char c)
 int	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
 int	fputs(int file, const char *s);
 int	fputc(int file, const char c);
-int	ftstc(int file);
 int	fgetc(int file);
 
 #endif /* __STDIO_H */
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

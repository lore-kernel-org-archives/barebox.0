Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcMm-0001lK-1r
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 10:44:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id g62so759753wme.1
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2020 03:44:03 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Tue, 10 Mar 2020 11:43:48 +0100
Message-Id: <20200310104348.29155-1-franck.jullien@gmail.com>
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
Subject: [PATCH] scripts/bareboximd: add mode argument to open call
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Newer gcc complain about missing mode argument when a new file is
created. This is an extract of man-pages:

 "The mode argument specifies the file mode bits be applied when
 a new file is created.  This argument must be supplied when
 O_CREAT or O_TMPFILE is specified in flags"

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 scripts/bareboximd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index e5000e0ae..b332d435a 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -59,7 +59,7 @@ static int write_file(const char *filename, const void *buf, size_t size)
 	int fd, ret;
 	int now;
 
-	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT);
+	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
 	if (fd < 0)
 		return fd;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from dedi548.your-server.de ([85.10.215.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYARa-0007CH-Da
 for barebox@lists.infradead.org; Mon, 11 May 2020 15:34:15 +0000
Received: from sslproxy02.your-server.de ([78.47.166.47])
 by dedi548.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <christian.mauderer@embedded-brains.de>)
 id 1jYARU-0006JV-Vy
 for barebox@lists.infradead.org; Mon, 11 May 2020 17:34:08 +0200
Received: from [82.100.198.138] (helo=mail.embedded-brains.de)
 by sslproxy02.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <christian.mauderer@embedded-brains.de>)
 id 1jYARU-000AGx-T9
 for barebox@lists.infradead.org; Mon, 11 May 2020 17:34:08 +0200
Received: from localhost (localhost.localhost [127.0.0.1])
 by mail.embedded-brains.de (Postfix) with ESMTP id 014A12A1682
 for <barebox@lists.infradead.org>; Mon, 11 May 2020 17:34:13 +0200 (CEST)
From: Christian Mauderer <christian.mauderer@embedded-brains.de>
Date: Mon, 11 May 2020 17:33:52 +0200
Message-Id: <20200511153352.7121-1-christian.mauderer@embedded-brains.de>
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
Subject: [PATCH] scripts: imd: Fix missing argument for open
To: barebox@lists.infradead.org

According to POSIX open needs a third argument if O_CREAT is specified:

>  O_CREAT  If  the  file exists, this flag has no effect.
>           Otherwise, the file shall be created; [...] and the access
>           permission bits (see <sys/stat.h>) of the file  mode shall
>           be set to the value of the argument following the oflag
>           argument taken as type mode_t modified as follows [...]

Signed-off-by: Christian Mauderer <christian.mauderer@embedded-brains.de>
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
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

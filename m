Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWZu-000473-FQ
 for barebox@lists.infradead.org; Mon, 04 May 2020 08:35:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1jVWZq-0002zj-WE
 for barebox@lists.infradead.org; Mon, 04 May 2020 10:35:51 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1jVWZq-0001FQ-Mk
 for barebox@lists.infradead.org; Mon, 04 May 2020 10:35:50 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  4 May 2020 10:35:41 +0200
Message-Id: <20200504083542.4095-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] scripts: bareboximd: fix write_file error handling
To: Barebox List <barebox@lists.infradead.org>

write will never return 0 on POSIX conformant systems. Remove this error
path.
Also, close the file on error.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/bareboximd.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index b332d435a66f..6ba6dabf3a2c 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -56,7 +56,7 @@ int imd_command_setenv(const char *variable_name, const char *value)
 
 static int write_file(const char *filename, const void *buf, size_t size)
 {
-	int fd, ret;
+	int fd, ret = 0;
 	int now;
 
 	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
@@ -65,22 +65,17 @@ static int write_file(const char *filename, const void *buf, size_t size)
 
 	while (size) {
 		now = write(fd, buf, size);
-		if (now == 0) {
-			errno = ENOSPC;
-			return -1;
+		if (now < 0) {
+			ret = now;
+			goto out;
 		}
-		if (now < 0)
-			return now;
 		size -= now;
 		buf += now;
 	}
 
+out:
 	close(fd);
-
-	if (ret < 0)
-		return ret;
-
-	return 0;
+	return ret;
 }
 
 static int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size)
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

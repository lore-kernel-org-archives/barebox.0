Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9Wqp-0001xS-PM
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 09:59:16 +0000
Received: by mail-wi0-f175.google.com with SMTP id ho1so5642762wib.8
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 02:58:53 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 11:58:42 +0200
Message-Id: <1406023122-498-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH] commands: fix memset command
To: barebox@lists.infradead.org

Before:

  barebox:/ memset -d /dev/fb0 -l 0 10 0xdeadbeef
  write: No space left on device
  barebox:/ md -s /dev/fb0
  00000000: 0a0a0a0a 0a0a0a0a 0a0a0a0a 0a0a0a0a                ................
  ...

After:

  barebox:/ memset -d /dev/fb0 -l 0 10 0xdeadbeef
  barebox:/ md -s /dev/fb0
  00000000: deadbeef deadbeef deadbeef deadbeef                ................
  00000010: deadbeef deadbeef deadbeef deadbeef                ................
  00000020: deadbeef deadbeef 00ffffff 00ffffff                ................
  00000030: 00ffffff 00ffffff 00ffffff 00ffffff                ...............

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/memset.c |   14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/commands/memset.c b/commands/memset.c
index f869306..4afe404 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -39,7 +39,6 @@ static int do_memset(int argc, char *argv[])
 {
 	loff_t	s, c, n;
 	int     fd;
-	char   *buf;
 	int	mode  = O_RWSIZE_1;
 	int     ret = 1;
 	char	*file = "/dev/mem";
@@ -59,28 +58,19 @@ static int do_memset(int argc, char *argv[])
 	if (fd < 0)
 		return 1;
 
-	buf = xmalloc(RW_BUF_SIZE);
-	memset(buf, c, RW_BUF_SIZE);
 
-	while (n > 0) {
-		int now;
-
-		now = min((loff_t)RW_BUF_SIZE, n);
-
-		ret = write(fd, buf, now);
+	while (c--) {
+		ret = write(fd, &n, mode >> O_RWSIZE_SHIFT);
 		if (ret < 0) {
 			perror("write");
 			ret = 1;
 			goto out;
 		}
-
-		n -= now;
 	}
 
 	ret = 0;
 out:
 	close(fd);
-	free(buf);
 
 	return ret;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-00043G-Fp
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:09 +0200
Message-Id: <1277372356-32370-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/11] memcpy cmd: Do not expect to read/write the whole chunk
	at once
To: barebox@lists.infradead.org

read() does not necessarily return the number of bytes
we want to read, so deal with less bytes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c |   30 +++++++++++++++++++-----------
 1 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 6192466..bd1d349 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -455,27 +455,35 @@ static int do_mem_cp(struct command *cmdtp, int argc, char *argv[])
 	}
 
 	while (count > 0) {
-		int now, r, w;
+		int now, r, w, tmp;
 
 		now = min(RW_BUF_SIZE, count);
 
-		if ((r = read(sourcefd, rw_buf, now)) < 0) {
+		r = read(sourcefd, rw_buf, now);
+		if (r < 0) {
 			perror("read");
 			goto out;
 		}
 
-		if ((w = write(destfd, rw_buf, r)) < 0) {
-			perror("write");
-			goto out;
-		}
-
-		if (r < now)
+		if (!r)
 			break;
 
-		if (w < r)
-			break;
+		tmp = 0;
+		now = r;
+		while (now) {
+			w = write(destfd, rw_buf + tmp, now);
+			if (w < 0) {
+				perror("write");
+				goto out;
+			}
+	                if (!w)
+			        break;
 
-		count -= now;
+			now -= w;
+			tmp += w;
+		}
+
+		count -= r;
 	}
 
 	if (count) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

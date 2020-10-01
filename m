Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNtFb-00024F-Eh
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 07:43:40 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Oct 2020 09:43:34 +0200
Message-Id: <20201001074337.23430-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201001074337.23430-1-a.fatoum@pengutronix.de>
References: <20201001074337.23430-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] scripts: kwboot: allow piping full buffer size at once
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While buf == _buf, their type and sizeof differ. The read syscall should
have the buffer size as argument, but instead got the pointer's size.

This likely doesn't change high-level behavior, because read was called
in a loop, so fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/kwboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/kwboot.c b/scripts/kwboot.c
index 43b8b8cbcdc6..60e8a69d187d 100644
--- a/scripts/kwboot.c
+++ b/scripts/kwboot.c
@@ -504,7 +504,7 @@ kwboot_term_pipe(int in, int out, char *quit, int *s)
 	ssize_t nin, nout;
 	char _buf[128], *buf = _buf;
 
-	nin = read(in, buf, sizeof(buf));
+	nin = read(in, _buf, sizeof(_buf));
 	if (nin < 0)
 		return -1;
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

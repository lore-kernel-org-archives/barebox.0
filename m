Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYZy-0008J7-Fe
 for barebox@lists.infradead.org; Tue, 26 Nov 2019 11:00:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2019 11:56:59 +0100
Message-Id: <20191126105659.9555-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] pstore: fix build by re-resolving botched merge conflict
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

297ac7288 ("pstore: Only capture log messages") removed the pstore console.
v3 of the eventually merged 75a74b5c ("console: fix out-of-bounds read
in dputc(/dev/*, ...)") reinstated part of this code, which broke the
pstore build because the now removed bufsize member had a user
reintroduced in the patch.

Fix this by reverting the offending patch's changes to the pstore code.
It wasn't applicable to begin with.

Fixes: 75a74b5c ("console: fix out-of-bounds read in dputc(/dev/*, ...)")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Hello Sascha,

I broke pstore in v2019.10.0 because of the botched merge conflict
resolve described above. Can this patch be applied to master?

Thanks,
Ahmad
---
 fs/pstore/platform.c | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 15c0174b1f37..0a6fa38edca9 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -46,35 +46,6 @@ void pstore_set_kmsg_bytes(int bytes)
 
 static int pstore_ready;
 
-static void pstore_console_write(const char *s, unsigned c)
-{
-	const char *e = s + c;
-
-	while (s < e) {
-		struct pstore_record record = {
-			.type = PSTORE_TYPE_CONSOLE,
-			.psi = psinfo,
-		};
-
-		if (c > psinfo->bufsize)
-			c = psinfo->bufsize;
-
-		record.buf = (char *)s;
-		record.size = c;
-		psinfo->write_buf(PSTORE_TYPE_CONSOLE, 0, &record.id, 0,
-				  record.buf, 0, record.size, psinfo);
-		s += c;
-		c = e - s;
-	}
-}
-
-static int pstore_console_puts(struct console_device *cdev, const char *s,
-			       size_t nbytes)
-{
-	pstore_console_write(s, nbytes);
-	return nbytes;
-}
-
 void pstore_log(const char *str)
 {
 	uint64_t id;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

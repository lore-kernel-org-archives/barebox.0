Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYJbF-0000jP-02
 for barebox@lists.infradead.org; Mon, 21 Oct 2013 17:49:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 21 Oct 2013 21:48:25 +0400
Message-Id: <1382377705-15040-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1382377705-15040-1-git-send-email-shc_work@mail.ru>
References: <1382377705-15040-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] ubifs: Remove redundant assignment
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 fs/ubifs/recovery.c | 1 -
 fs/ubifs/scan.c     | 1 -
 2 files changed, 2 deletions(-)

diff --git a/fs/ubifs/recovery.c b/fs/ubifs/recovery.c
index df7262f..634ecb3 100644
--- a/fs/ubifs/recovery.c
+++ b/fs/ubifs/recovery.c
@@ -392,7 +392,6 @@ static void clean_buf(const struct ubifs_info *c, void **buf, int lnum,
 {
 	int empty_offs, pad_len;
 
-	lnum = lnum;
 	dbg_rcvry("cleaning corruption at %d:%d", lnum, *offs);
 
 	if (c->min_io_size == 1) {
diff --git a/fs/ubifs/scan.c b/fs/ubifs/scan.c
index 0ed8247..633a56f 100644
--- a/fs/ubifs/scan.c
+++ b/fs/ubifs/scan.c
@@ -175,7 +175,6 @@ struct ubifs_scan_leb *ubifs_start_scan(const struct ubifs_info *c, int lnum,
 void ubifs_end_scan(const struct ubifs_info *c, struct ubifs_scan_leb *sleb,
 		    int lnum, int offs)
 {
-	lnum = lnum;
 	dbg_scan("stop scanning LEB %d at offset %d", lnum, offs);
 	ubifs_assert(offs % c->min_io_size == 0);
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

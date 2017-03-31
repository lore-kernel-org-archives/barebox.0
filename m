Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fq-Ce
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:15 +0200
Message-Id: <20170331070346.26878-12-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/42] state: backend_circular: Read whole PEB
To: Barebox List <barebox@lists.infradead.org>

When the circular backend searches for the last page written in the
eraseblock, it iterates backwards pagewise from the end of the block.
This is ok for NAND flash, but on NOR flash, which does not have pages,
the code ends up iterating bytewise backwards, calling into mtd each
time. This is very time consuming, so optimize this by reading the whole
eraseblock once and just iterate over the buffer in memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 0bce900d0d..53c2aae803 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -379,26 +379,24 @@ static int state_backend_bucket_circular_init(
 	int sub_offset;
 	uint32_t written_length = 0;
 	uint8_t *buf;
+	int ret;
 
-	buf = xmalloc(circ->writesize);
+	buf = xmalloc(circ->max_size);
 	if (!buf)
 		return -ENOMEM;
 
+	ret = state_mtd_peb_read(circ, buf, 0, circ->max_size);
+	if (ret && ret != -EUCLEAN)
+		return ret;
+
 	for (sub_offset = circ->max_size - circ->writesize; sub_offset >= 0;
 	     sub_offset -= circ->writesize) {
-		int ret;
-
-		ret = state_mtd_peb_read(circ, buf, sub_offset,
-					 circ->writesize);
-		if (ret && ret != -EUCLEAN)
-			return ret;
-
-		ret = mtd_buf_all_ff(buf, circ->writesize);
+		ret = mtd_buf_all_ff(buf + sub_offset, circ->writesize);
 		if (!ret) {
 			struct state_backend_storage_bucket_circular_meta *meta;
 
 			meta = (struct state_backend_storage_bucket_circular_meta *)
-					(buf + circ->writesize - sizeof(*meta));
+					(buf + sub_offset + circ->writesize - sizeof(*meta));
 
 			if (meta->magic != circular_magic)
 				written_length = 0;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

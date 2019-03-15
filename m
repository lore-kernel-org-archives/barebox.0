Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sO-4V
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:03 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:49 +0100
Message-Id: <20190315091453.22393-11-jbe@pengutronix.de>
In-Reply-To: <20190315091453.22393-1-jbe@pengutronix.de>
References: <20190315091453.22393-1-jbe@pengutronix.de>
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
Subject: [PATCH 11/15] pstore: Replace arguments for read() API
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>

From: Kees Cook <keescook@chromium.org>

The argument list for the pstore_read() interface is unwieldy. This changes
passes the new struct pstore_record instead. The erst backend was already
doing something similar internally.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/platform.c   |  5 +----
 fs/pstore/ram.c        | 29 +++++++++++++++++------------
 include/linux/pstore.h |  4 +---
 3 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index bad735e574..54fe60bf88 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -181,10 +181,7 @@ void pstore_get_records(int quiet)
 	if (psi->open && psi->open(psi))
 		goto out;
 
-	while ((record.size = psi->read(&record.id, &record.type,
-					&record.count,
-					&record.buf, &record.compressed,
-					record.psi)) > 0) {
+	while ((record.size = psi->read(&record)) > 0) {
 		if (record.compressed &&
 		    record.type == PSTORE_TYPE_DMESG) {
 			pr_err("barebox does not have ramoops compression support\n");
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 714755bd66..fcf6b3087c 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -128,27 +128,32 @@ static bool prz_ok(struct persistent_ram_zone *prz)
 			   persistent_ram_ecc_string(prz, NULL, 0));
 }
 
-static ssize_t ramoops_pstore_read(u64 *id, enum pstore_type_id *type,
-				   int *count, char **buf, bool *compressed,
-				   struct pstore_info *psi)
+static ssize_t ramoops_pstore_read(struct pstore_record *record)
 {
 	ssize_t size;
 	ssize_t ecc_notice_size;
-	struct ramoops_context *cxt = psi->data;
+	struct ramoops_context *cxt = record->psi->data;
 	struct persistent_ram_zone *prz;
 
+	record->compressed = false;
+
 	prz = ramoops_get_next_prz(cxt->przs, &cxt->dump_read_cnt,
-				   cxt->max_dump_cnt, id, type,
+				   cxt->max_dump_cnt, &record->id,
+				   &record->type,
 				   PSTORE_TYPE_DMESG, 0);
 	if (!prz_ok(prz))
 		prz = ramoops_get_next_prz(&cxt->cprz, &cxt->console_read_cnt,
-					   1, id, type, PSTORE_TYPE_CONSOLE, 0);
+					   1, &record->id, &record->type,
+					   PSTORE_TYPE_CONSOLE, 0);
+
 	if (!prz_ok(prz))
 		prz = ramoops_get_next_prz(&cxt->fprz, &cxt->ftrace_read_cnt,
-					   1, id, type, PSTORE_TYPE_FTRACE, 0);
+					   1, &record->id, &record->type,
+					   PSTORE_TYPE_FTRACE, 0);
 	if (!prz_ok(prz))
 		prz = ramoops_get_next_prz(&cxt->mprz, &cxt->pmsg_read_cnt,
-					   1, id, type, PSTORE_TYPE_PMSG, 0);
+					   1, &record->id, &record->type,
+					   PSTORE_TYPE_PMSG, 0);
 	if (!prz_ok(prz))
 		return 0;
 
@@ -160,12 +165,12 @@ static ssize_t ramoops_pstore_read(u64 *id, enum pstore_type_id *type,
 	/* ECC correction notice */
 	ecc_notice_size = persistent_ram_ecc_string(prz, NULL, 0);
 
-	*buf = kmalloc(size + ecc_notice_size + 1, GFP_KERNEL);
-	if (*buf == NULL)
+	record->buf = kmalloc(size + ecc_notice_size + 1, GFP_KERNEL);
+	if (record->buf == NULL)
 		return -ENOMEM;
 
-	memcpy(*buf, (char *)persistent_ram_old(prz), size);
-	persistent_ram_ecc_string(prz, *buf + size, ecc_notice_size + 1);
+	memcpy(record->buf, (char *)persistent_ram_old(prz), size);
+	persistent_ram_ecc_string(prz, record->buf + size, ecc_notice_size + 1);
 
 	return size + ecc_notice_size;
 }
diff --git a/include/linux/pstore.h b/include/linux/pstore.h
index 23f35570aa..b136c354b9 100644
--- a/include/linux/pstore.h
+++ b/include/linux/pstore.h
@@ -66,9 +66,7 @@ struct pstore_info {
 	int		flags;
 	int		(*open)(struct pstore_info *psi);
 	int		(*close)(struct pstore_info *psi);
-	ssize_t		(*read)(u64 *id, enum pstore_type_id *type,
-			int *count, char **buf, bool *compressed,
-			struct pstore_info *psi);
+	ssize_t		(*read)(struct pstore_record *record);
 	int		(*write)(enum pstore_type_id type,
 			enum kmsg_dump_reason reason, u64 *id,
 			unsigned int part, int count, bool compressed,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

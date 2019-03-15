Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sG-0c
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:14:59 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:48 +0100
Message-Id: <20190315091453.22393-10-jbe@pengutronix.de>
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
Subject: [PATCH 10/15] pstore: Switch pstore_mkfile to pass record
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>

From: Kees Cook <keescook@chromium.org>

Instead of the long list of arguments, just pass the new record struct.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/fs.c       | 45 ++++++++++++++++++++++++---------------------
 fs/pstore/internal.h |  4 +---
 fs/pstore/platform.c |  6 +-----
 3 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 9a7e0b5526..e9c7ae7adb 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -52,68 +52,71 @@ struct pstore_private {
  * Load it up with "size" bytes of data from "buf".
  * Set the mtime & ctime to the date that this record was originally stored.
  */
-int pstore_mkfile(enum pstore_type_id type, char *psname, u64 id, int count,
-		  char *data, bool compressed, size_t size,
-		  struct pstore_info *psi)
+int pstore_mkfile(struct pstore_record *record)
 {
 	struct pstore_private	*private, *pos;
+	size_t			size = record->size;
 
 	list_for_each_entry(pos, &allpstore, list) {
-		if (pos->type == type && pos->id == id && pos->psi == psi)
+		if (pos->type == record->type &&
+		    pos->id == record->id &&
+		    pos->psi == record->psi)
 			return -EEXIST;
 	}
 
 	private = xzalloc(sizeof(*private) + size);
-	private->type = type;
-	private->id = id;
-	private->count = count;
-	private->psi = psi;
+	private->type = record->type;
+	private->id = record->id;
+	private->count = record->count;
+	private->psi = record->psi;
 
-	switch (type) {
+	switch (record->type) {
 	case PSTORE_TYPE_DMESG:
 		scnprintf(private->name, sizeof(private->name),
-			  "dmesg-%s-%lld%s", psname, id,
-			  compressed ? ".enc.z" : "");
+			  "dmesg-%s-%lld%s", record->psi->name, record->id,
+			  record->compressed ? ".enc.z" : "");
 		break;
 	case PSTORE_TYPE_CONSOLE:
 		scnprintf(private->name, sizeof(private->name),
-			  "console-%s-%lld", psname, id);
+			  "console-%s-%lld", record->psi->name, record->id);
 		break;
 	case PSTORE_TYPE_FTRACE:
 		scnprintf(private->name, sizeof(private->name),
-			  "ftrace-%s-%lld", psname, id);
+			  "ftrace-%s-%lld", record->psi->name, record->id);
 		break;
 	case PSTORE_TYPE_MCE:
 		scnprintf(private->name, sizeof(private->name),
-			  "mce-%s-%lld", psname, id);
+			  "mce-%s-%lld", record->psi->name, record->id);
 		break;
 	case PSTORE_TYPE_PPC_RTAS:
 		scnprintf(private->name, sizeof(private->name),
-			  "rtas-%s-%lld", psname, id);
+			  "rtas-%s-%lld", record->psi->name, record->id);
 		break;
 	case PSTORE_TYPE_PPC_OF:
 		scnprintf(private->name, sizeof(private->name),
-			  "powerpc-ofw-%s-%lld", psname, id);
+			  "powerpc-ofw-%s-%lld", record->psi->name, record->id);
 		break;
 	case PSTORE_TYPE_PPC_COMMON:
 		scnprintf(private->name, sizeof(private->name),
-			  "powerpc-common-%s-%lld", psname, id);
+			  "powerpc-common-%s-%lld", record->psi->name,
+			  record->id);
 		break;
 	case PSTORE_TYPE_PMSG:
 		scnprintf(private->name, sizeof(private->name),
-			  "pmsg-%s-%lld", psname, id);
+			  "pmsg-%s-%lld", record->psi->name, record->id);
 		break;
 	case PSTORE_TYPE_UNKNOWN:
 		scnprintf(private->name, sizeof(private->name),
-			  "unknown-%s-%lld", psname, id);
+			  "unknown-%s-%lld", record->psi->name, record->id);
 		break;
 	default:
 		scnprintf(private->name, sizeof(private->name),
-			  "type%d-%s-%lld", type, psname, id);
+			  "type%d-%s-%lld", record->type, record->psi->name,
+			  record->id);
 		break;
 	}
 
-	memcpy(private->data, data, size);
+	memcpy(private->data, record->buf, size);
 	private->size = size;
 
 	list_add(&private->list, &allpstore);
diff --git a/fs/pstore/internal.h b/fs/pstore/internal.h
index 0a8df1f4e2..6b507e4bd3 100644
--- a/fs/pstore/internal.h
+++ b/fs/pstore/internal.h
@@ -11,9 +11,7 @@ extern struct pstore_info *psinfo;
 
 extern void	pstore_set_kmsg_bytes(int);
 extern void	pstore_get_records(int);
-extern int	pstore_mkfile(enum pstore_type_id, char *psname, u64 id,
-			      int count, char *data, bool compressed,
-			      size_t size, struct pstore_info *psi);
+extern int	pstore_mkfile(struct pstore_record *record);
 extern int	pstore_is_mounted(void);
 
 #endif
diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 5d0018693b..bad735e574 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -190,11 +190,7 @@ void pstore_get_records(int quiet)
 			pr_err("barebox does not have ramoops compression support\n");
 			continue;
 		}
-		rc = pstore_mkfile(record.type, psi->name, record.id,
-				   record.count, record.buf,
-				   record.compressed,
-				   record.size,
-				   record.psi);
+		rc = pstore_mkfile(&record);
 		if (unzipped_len < 0) {
 			/* Free buffer other than big oops */
 			kfree(record.buf);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

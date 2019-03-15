Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4ivg-00050J-H2
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:05 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:46 +0100
Message-Id: <20190315091453.22393-8-jbe@pengutronix.de>
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
Subject: [PATCH 08/15] pstore: Extract common arguments into structure
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>

From: Kees Cook <keescook@chromium.org>

The read/mkfile pair pass the same arguments and should be cleared
between calls. Move to a structure and wipe it after every loop.

Signed-off-by: Kees Cook <keescook@chromium.org>
[p.zabel@pengutronix.de: ported to Barebox from Linux commit 9abdcccc3d5f]
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/pstore/platform.c   | 30 +++++++++++++++++-------------
 include/linux/pstore.h | 15 ++++++++++++++-
 2 files changed, 31 insertions(+), 14 deletions(-)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 963ecafef8..6eebad63de 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -96,13 +96,8 @@ EXPORT_SYMBOL_GPL(pstore_register);
 void pstore_get_records(int quiet)
 {
 	struct pstore_info *psi = psinfo;
-	char			*buf = NULL;
-	ssize_t			size;
-	u64			id;
-	int			count;
-	enum pstore_type_id	type;
+	struct pstore_record	record = { .psi = psi, };
 	int			failed = 0, rc;
-	bool			compressed;
 	int			unzipped_len = -1;
 
 	if (!psi)
@@ -112,22 +107,31 @@ void pstore_get_records(int quiet)
 	if (psi->open && psi->open(psi))
 		goto out;
 
-	while ((size = psi->read(&id, &type, &count, &buf, &compressed,
-				psi)) > 0) {
-		if (compressed && (type == PSTORE_TYPE_DMESG)) {
+	while ((record.size = psi->read(&record.id, &record.type,
+					&record.count,
+					&record.buf, &record.compressed,
+					record.psi)) > 0) {
+		if (record.compressed &&
+		    record.type == PSTORE_TYPE_DMESG) {
 			pr_err("barebox does not have ramoops compression support\n");
 			continue;
 		}
-		rc = pstore_mkfile(type, psi->name, id, count, buf,
-				  compressed, (size_t)size, psi);
+		rc = pstore_mkfile(record.type, psi->name, record.id,
+				   record.count, record.buf,
+				   record.compressed,
+				   record.size,
+				   record.psi);
 		if (unzipped_len < 0) {
 			/* Free buffer other than big oops */
-			kfree(buf);
-			buf = NULL;
+			kfree(record.buf);
+			record.buf = NULL;
 		} else
 			unzipped_len = -1;
 		if (rc && (rc != -EEXIST || !quiet))
 			failed++;
+
+		memset(&record, 0, sizeof(record));
+		record.psi = psi;
 	}
 	if (psi->close)
 		psi->close(psi);
diff --git a/include/linux/pstore.h b/include/linux/pstore.h
index a925e14397..23f35570aa 100644
--- a/include/linux/pstore.h
+++ b/include/linux/pstore.h
@@ -25,6 +25,8 @@
 #include <linux/types.h>
 #include <asm-generic/errno.h>
 
+struct module;
+
 /* types */
 enum pstore_type_id {
 	PSTORE_TYPE_DMESG	= 0,
@@ -43,7 +45,18 @@ enum kmsg_dump_reason {
 	KMSG_DUMP_UNDEF,
 };
 
-struct module;
+struct pstore_info;
+
+struct pstore_record {
+	struct pstore_info	*psi;
+	enum pstore_type_id	type;
+	u64			id;
+	char			*buf;
+	int			count;
+	bool			compressed;
+	ssize_t			size;
+	ssize_t			ecc_notice_size;
+};
 
 struct pstore_info {
 	struct module	*owner;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

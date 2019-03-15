Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sJ-4d
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:00 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:50 +0100
Message-Id: <20190315091453.22393-12-jbe@pengutronix.de>
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
Subject: [PATCH 12/15] pstore: Replace arguments for write() API
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>

From: Kees Cook <keescook@chromium.org>

Similar to the pstore_info read() callback, there were too many arguments.
This switches to the new struct pstore_record pointer instead. This adds
"reason" and "part" to the record structure as well.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/pstore/platform.c   | 12 +++++-------
 include/linux/pstore.h | 12 ++++++------
 2 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 54fe60bf88..755363c309 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -115,14 +115,12 @@ static void pstore_register_console(void)
 static void pstore_register_console(void) {}
 #endif
 
-static int pstore_write_compat(enum pstore_type_id type,
-			       enum kmsg_dump_reason reason,
-			       u64 *id, unsigned int part, int count,
-			       bool compressed, size_t size,
-			       struct pstore_info *psi)
+static int pstore_write_compat(struct pstore_record *record)
 {
-	return psi->write_buf(type, reason, id, part, psinfo->buf, compressed,
-			     size, psi);
+	return record->psi->write_buf(record->type, record->reason,
+				      &record->id, record->part,
+				      psinfo->buf, record->compressed,
+				      record->size, record->psi);
 }
 
 /*
diff --git a/include/linux/pstore.h b/include/linux/pstore.h
index b136c354b9..15e1e3d6fa 100644
--- a/include/linux/pstore.h
+++ b/include/linux/pstore.h
@@ -52,10 +52,13 @@ struct pstore_record {
 	enum pstore_type_id	type;
 	u64			id;
 	char			*buf;
-	int			count;
-	bool			compressed;
 	ssize_t			size;
 	ssize_t			ecc_notice_size;
+
+	int			count;
+	enum kmsg_dump_reason	reason;
+	unsigned int		part;
+	bool			compressed;
 };
 
 struct pstore_info {
@@ -67,10 +70,7 @@ struct pstore_info {
 	int		(*open)(struct pstore_info *psi);
 	int		(*close)(struct pstore_info *psi);
 	ssize_t		(*read)(struct pstore_record *record);
-	int		(*write)(enum pstore_type_id type,
-			enum kmsg_dump_reason reason, u64 *id,
-			unsigned int part, int count, bool compressed,
-			size_t size, struct pstore_info *psi);
+	int		(*write)(struct pstore_record *record);
 	int		(*write_buf)(enum pstore_type_id type,
 			enum kmsg_dump_reason reason, u64 *id,
 			unsigned int part, const char *buf, bool compressed,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

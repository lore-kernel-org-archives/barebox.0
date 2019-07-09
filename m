Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmA5-0006ax-In
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 09:11:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2019 11:11:31 +0200
Message-Id: <20190709091131.12298-2-s.hauer@pengutronix.de>
In-Reply-To: <20190709091131.12298-1-s.hauer@pengutronix.de>
References: <20190709091131.12298-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] pstore: remove unused code
To: Barebox List <barebox@lists.infradead.org>

pstore_info->write() is unused, remove the code implementing it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/pstore/platform.c   | 10 ----------
 fs/pstore/ram.c        | 17 -----------------
 include/linux/pstore.h |  2 --
 3 files changed, 29 deletions(-)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index aafa5559dc..0a6fa38edc 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -79,14 +79,6 @@ static void pstore_console_capture_log(void)
 	}
 }
 
-static int pstore_write_compat(struct pstore_record *record)
-{
-	return record->psi->write_buf(record->type, record->reason,
-				      &record->id, record->part,
-				      psinfo->buf, record->compressed,
-				      record->size, record->psi);
-}
-
 /*
  * platform specific persistent storage driver registers with
  * us here. If pstore is already mounted, call the platform
@@ -107,8 +99,6 @@ int pstore_register(struct pstore_info *psi)
 		return -EBUSY;
 	}
 
-	if (!psi->write)
-		psi->write = pstore_write_compat;
 	psinfo = psi;
 	mutex_init(&psinfo->read_mutex);
 	spin_unlock(&pstore_lock);
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 734d0c3c1d..86049f989e 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -609,22 +609,7 @@ static int ramoops_probe(struct device_d *dev)
 		goto fail_init_mprz;
 
 	cxt->pstore.data = cxt;
-	/*
-	 * Console can handle any buffer size, so prefer LOG_LINE_MAX. If we
-	 * have to handle dumps, we must have at least record_size buffer. And
-	 * for ftrace, bufsize is irrelevant (if bufsize is 0, buf will be
-	 * ZERO_SIZE_PTR).
-	 */
-	if (cxt->console_size)
-		cxt->pstore.bufsize = 1024; /* LOG_LINE_MAX */
-	cxt->pstore.bufsize = max(cxt->record_size, cxt->pstore.bufsize);
-	cxt->pstore.buf = kmalloc(cxt->pstore.bufsize, GFP_KERNEL);
 	spin_lock_init(&cxt->pstore.buf_lock);
-	if (!cxt->pstore.buf) {
-		pr_err("cannot allocate pstore buffer\n");
-		err = -ENOMEM;
-		goto fail_clear;
-	}
 
 	err = pstore_register(&cxt->pstore);
 	if (err) {
@@ -661,9 +646,7 @@ static int ramoops_probe(struct device_d *dev)
 	return 0;
 
 fail_buf:
-	kfree(cxt->pstore.buf);
 fail_clear:
-	cxt->pstore.bufsize = 0;
 	kfree(cxt->mprz);
 fail_init_mprz:
 	kfree(cxt->fprz);
diff --git a/include/linux/pstore.h b/include/linux/pstore.h
index dabb639111..f598f31a54 100644
--- a/include/linux/pstore.h
+++ b/include/linux/pstore.h
@@ -64,8 +64,6 @@ struct pstore_record {
 struct pstore_info {
 	struct module	*owner;
 	char		*name;
-	char		*buf;
-	size_t		bufsize;
 	int		flags;
 	int		(*open)(struct pstore_info *psi);
 	int		(*close)(struct pstore_info *psi);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEF-0002Sj-2w
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:31 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:47 +0200
Message-Id: <1437160969-31517-15-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 14/16] fs: efivars: add more error checking
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 fs/efivarfs.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 925e8e8be113..87fc771739e2 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -269,6 +269,7 @@ static int efivarfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insiz
 static int efivarfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
 {
 	struct efivars_file *efile = f->priv;
+	efi_status_t efiret;
 
 	if (efile->size < f->pos + insize) {
 		efile->buf = realloc(efile->buf, f->pos + insize);
@@ -277,8 +278,11 @@ static int efivarfs_write(struct device_d *_dev, FILE *f, const void *buf, size_
 
 	memcpy(efile->buf + f->pos, buf, insize);
 
-	RT->set_variable(efile->name, &efile->vendor, efile->attributes,
-			 efile->size ? efile->size : 1, efile->buf);
+	efiret = RT->set_variable(efile->name, &efile->vendor,
+				  efile->attributes,
+				  efile->size ? efile->size : 1, efile->buf);
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
 
 	return insize;
 }
@@ -286,12 +290,16 @@ static int efivarfs_write(struct device_d *_dev, FILE *f, const void *buf, size_
 static int efivarfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
 	struct efivars_file *efile = f->priv;
+	efi_status_t efiret;
 
 	efile->size = size;
 	efile->buf = realloc(efile->buf, efile->size + sizeof(uint32_t));
 
-	RT->set_variable(efile->name, &efile->vendor, efile->attributes,
-			 efile->size ? efile->size : 1, efile->buf);
+	efiret = RT->set_variable(efile->name, &efile->vendor,
+				  efile->attributes,
+				  efile->size ? efile->size : 1, efile->buf);
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
 
 	f->size = efile->size;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

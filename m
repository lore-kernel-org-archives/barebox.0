Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xladz-0003uW-5J
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 09:43:22 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xladd-0002Wv-7r
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 10:42:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  4 Nov 2014 10:42:54 +0100
Message-Id: <1415094176-26435-8-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
References: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 08/10] fs: efivar: don't store attributes in file
To: barebox@lists.infradead.org

We don't have a use-case yet where we need to manipulate
the attributes of a variable and it confuses "normal"
users of the variables.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/efivarfs.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index a36020d2d08e..f54925133848 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -131,6 +131,7 @@ struct efivars_file {
 	unsigned long size;
 	efi_guid_t vendor;
 	s16 *name;
+	u32 attributes;
 };
 
 static int efivarfs_open(struct device_d *dev, FILE *f, const char *filename)
@@ -138,7 +139,6 @@ static int efivarfs_open(struct device_d *dev, FILE *f, const char *filename)
 	struct efivars_file *efile;
 	efi_status_t efiret;
 	int ret;
-	uint32_t attributes;
 
 	efile = xzalloc(sizeof(*efile));
 
@@ -146,28 +146,27 @@ static int efivarfs_open(struct device_d *dev, FILE *f, const char *filename)
 	if (ret)
 		return -ENOENT;
 
-	efiret = RT->get_variable(efile->name, &efile->vendor, &attributes, &efile->size, NULL);
+	efiret = RT->get_variable(efile->name, &efile->vendor,
+				  &efile->attributes, &efile->size, NULL);
 	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL) {
 		ret = -efi_errno(efiret);
 		goto out;
 	}
 
-	efile->buf = malloc(efile->size + sizeof(uint32_t));
+	efile->buf = malloc(efile->size);
 	if (!efile->buf) {
 		ret = -ENOMEM;
 		goto out;
 	}
 
 	efiret = RT->get_variable(efile->name, &efile->vendor, NULL, &efile->size,
-			efile->buf + sizeof(uint32_t));
+			efile->buf);
 	if (EFI_ERROR(efiret)) {
 		ret = -efi_errno(efiret);
 		goto out;
 	}
 
-	*(uint32_t *)efile->buf = attributes;
-
-	f->size = efile->size + sizeof(uint32_t);
+	f->size = efile->size;
 	f->inode = efile;
 
 	return 0;
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

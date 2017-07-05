Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dShzT-0005x0-96
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 10:57:07 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  5 Jul 2017 12:56:32 +0200
Message-Id: <20170705105637.4484-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20170705105637.4484-1-s.trumtrar@pengutronix.de>
References: <20170705105637.4484-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/8] fs: efi: return with correct error code in efifs_stat
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Instead of erroring out when a file is not present, just return ENOENT if the
file does not exist and let the fs-layer handle the situation correctly.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 fs/efi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/efi.c b/fs/efi.c
index 0c0f52e87c47..85ff914291ed 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -407,9 +407,7 @@ static int efifs_stat(struct device_d *dev, const char *filename, struct stat *s
 
 	efiret = priv->root_dir->open(priv->root_dir, &entry, efi_path, EFI_FILE_MODE_READ, 0ULL);
 	if (EFI_ERROR(efiret)) {
-		pr_err("%s: unable to Open %s: %s\n", __func__, filename,
-				efi_strerror(efiret));
-		ret = -efi_errno(efiret);
+		ret = -ENOENT;
 		goto out_free;
 	}
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

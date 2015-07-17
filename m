Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002KJ-P9
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:29 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:48 +0200
Message-Id: <1437160969-31517-16-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 15/16] fs: efivars: read the attributes on the second
 get_variable()
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Some EFI get_variable() implementations don't set the attributes when
returning EFI_BUFFER_TOO_SMALL.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 fs/efivarfs.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 87fc771739e2..c7a282b05c63 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -216,7 +216,7 @@ static int efivarfs_open(struct device_d *dev, FILE *f, const char *filename)
 		return -ENOENT;
 
 	efiret = RT->get_variable(efile->name, &efile->vendor,
-				  &efile->attributes, &efile->size, NULL);
+				  NULL, &efile->size, NULL);
 	if (EFI_ERROR(efiret) && efiret != EFI_BUFFER_TOO_SMALL) {
 		ret = -efi_errno(efiret);
 		goto out;
@@ -228,8 +228,9 @@ static int efivarfs_open(struct device_d *dev, FILE *f, const char *filename)
 		goto out;
 	}
 
-	efiret = RT->get_variable(efile->name, &efile->vendor, NULL, &efile->size,
-			efile->buf);
+	efiret = RT->get_variable(efile->name, &efile->vendor,
+				  &efile->attributes, &efile->size,
+				  efile->buf);
 	if (EFI_ERROR(efiret)) {
 		ret = -efi_errno(efiret);
 		goto out;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

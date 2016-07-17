Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOoPv-0004Ty-H3
 for barebox@lists.infradead.org; Sun, 17 Jul 2016 15:55:45 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 17 Jul 2016 17:53:16 +0200
Message-Id: <1468770798-22102-3-git-send-email-akurz@blala.de>
In-Reply-To: <1468770798-22102-1-git-send-email-akurz@blala.de>
References: <1468770798-22102-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 3/5] scripts: imx-usb-loader: remove useless variable
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Remove a variable raising complexity for no reason.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 17551e3..9607ce6 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1029,7 +1029,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	unsigned char *buf = NULL;
 	unsigned char *image;
 	unsigned char *verify_buffer = NULL;
-	unsigned char *p;
 	unsigned char tmp[64];
 	unsigned dladdr = 0;
 	unsigned max_length;
@@ -1102,7 +1101,6 @@ static int do_irom_download(struct usb_work *curr, int verify)
 
 	image = buf + skip;
 
-	p = image;
 	cnt -= skip;
 	fsize -= skip;
 
@@ -1120,7 +1118,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 			goto cleanup;
 		}
 
-		memcpy(verify_buffer, p, 64);
+		memcpy(verify_buffer, image, 64);
 
 		if ((type == FT_APP) && (usb_id->mach_id->mode != MODE_HID)) {
 			type = FT_LOAD_ONLY;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

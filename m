Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbZFc-0007Mc-BV
 for barebox@lists.infradead.org; Sun, 21 Aug 2016 20:21:49 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 21 Aug 2016 22:18:36 +0200
Message-Id: <1471810717-1371-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/2] scripts: imx-usb-loader: enable DCD 16-bit write for hdr
 v1
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Do some cleanup which enables DCDv1 16 bit write access as side effect.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-usb-loader.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 1732497..9f25ca6 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -889,16 +889,11 @@ static int write_dcd_table_old(const struct imx_flash_header *hdr,
 
 		switch (type) {
 		case 1:
-			if (verbose > 1)
-				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
-			err = write_memory(addr, val, 1);
-			if (err < 0)
-				return err;
-			break;
+		case 2:
 		case 4:
 			if (verbose > 1)
 				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
-			err = write_memory(addr, val, 4);
+			err = write_memory(addr, val, type);
 			if (err < 0)
 				return err;
 			break;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

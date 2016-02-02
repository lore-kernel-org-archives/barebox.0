Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcGJ-0002RI-Pv
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:49:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:11 +0100
Message-Id: <1454424497-7157-29-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 28/34] scripts: imx-usb-loader: Use dcd len to invalidate dcd
 data
To: Barebox List <barebox@lists.infradead.org>

We invalidate the dcd data in the uploaded image since we already
processed it manually. To do so we have set the dcd pointer to 0.
Doing it this way prevents the ROM from executing the HAB code in
debug mode. Use the dcd length instead to invalidate the dcd data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 2f1db28..24cfe05 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -871,7 +871,7 @@ static int perform_dcd(unsigned char *p, unsigned char *file_start, unsigned cnt
 	switch (usb_id->mach_id->header_type) {
 	case HDR_MX51:
 		ret = write_dcd_table_old(ohdr, file_start, cnt);
-		ohdr->dcd = 0;
+		ohdr->dcd_block_len = 0;
 
 		break;
 	case HDR_MX53:
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

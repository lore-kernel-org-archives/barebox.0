Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Pl-VB
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:54 +0100
Message-Id: <1454424497-7157-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/34] scripts: imx-image: Allow dcd offset 0x0
To: Barebox List <barebox@lists.infradead.org>

0 is a valid offset for the dcd, so do not use this value to detect
an unset dcd offset. Use 0xffffffff instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 5c9faee..788fa81 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -34,7 +34,7 @@
 #define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
 static uint32_t image_load_addr;
-static uint32_t image_dcd_offset;
+static uint32_t image_dcd_offset = 0xffffffff;
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
 static int header_version;
@@ -729,7 +729,7 @@ int main(int argc, char *argv[])
 	if (!buf)
 		exit(1);
 
-	if (!image_dcd_offset) {
+	if (image_dcd_offset == 0xffffffff) {
 		fprintf(stderr, "no dcd offset given ('dcdofs'). Defaulting to 0x%08x\n",
 			FLASH_HEADER_OFFSET);
 		image_dcd_offset = FLASH_HEADER_OFFSET;
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

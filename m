Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aP6XT-0006kA-K4
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 10:44:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jan 2016 11:43:46 +0100
Message-Id: <1454064243-26558-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/23] scripts: imx-image: Allow dcd offset 0x0
To: Barebox List <barebox@lists.infradead.org>

0 is a valid offset for the dcd, so do not use this value to detect
an unset dcd offset. Use 0xffffffff instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index e8d9dbf..a85833b 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -38,7 +38,7 @@
 #define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
 static uint32_t image_load_addr;
-static uint32_t image_dcd_offset;
+static uint32_t image_dcd_offset = 0xffffffff;
 static uint32_t dcdtable[MAX_DCD];
 static int curdcd;
 static int header_version;
@@ -733,7 +733,7 @@ int main(int argc, char *argv[])
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

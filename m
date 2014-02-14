Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEKmE-0004OA-7U
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 15:34:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2014 16:33:43 +0100
Message-Id: <1392392023-9902-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] USB: dfu: Use barebox product id
To: barebox@lists.infradead.org

We obtained a USB Product ID from Openmoko for barebox running
in DFU mode. Use it as default for the dfu command. Now we can
make the USB VID/PID arguments optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dfu.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index ec1197a..998c868 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -125,9 +125,14 @@ static int do_dfu(int argc, char *argv[])
 
 	argstr = argv[optind];
 
-	if (!idProduct || !idVendor) {
-		printf("productid or vendorid not given\n");
-		return 1;
+	if (!idProduct && !idVendor) {
+		idVendor = 0x1d50; /* Openmoko, Inc */
+		idProduct = 0x60a2; /* barebox bootloader USB DFU Mode */
+	}
+
+	if ((idProduct && !idVendor) || (!idProduct && idVendor)) {
+		printf("Only one of vendor id or product id given\n");
+		return -EINVAL;
 	}
 
 	for (n = 0; *argstr; n++) {
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

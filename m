Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDspB-0008St-Ie
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 09:43:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 10:42:51 +0100
Message-Id: <1392284573-22410-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392284573-22410-1-git-send-email-s.hauer@pengutronix.de>
References: <1392284573-22410-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] dfu command: check return values
To: barebox@lists.infradead.org

Check the return value of usb_dfu_register and bail out
with an error if it fails. Also return successfully if it succeeds
instead of returning 1 unconditionally.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dfu.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index ec1197a..6bd43e4 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -101,7 +101,7 @@ static int do_dfu(int argc, char *argv[])
 	char *manufacturer = "barebox";
 	const char *productname = barebox_get_model();
 	u16 idVendor = 0, idProduct = 0;
-
+	int ret;
 
 	while((opt = getopt(argc, argv, "m:p:V:P:")) > 0) {
 		switch(opt) {
@@ -134,6 +134,7 @@ static int do_dfu(int argc, char *argv[])
 		dfu_alts = xrealloc(dfu_alts, sizeof(*dfu_alts) * (n + 1));
 		if (dfu_do_parse_one(argstr, &endptr, &dfu_alts[n])) {
 			printf("parse error\n");
+			ret = -EINVAL;
 			goto out;
 		}
 		argstr = endptr;
@@ -147,7 +148,7 @@ static int do_dfu(int argc, char *argv[])
 	pdata.idVendor = idVendor;
 	pdata.idProduct = idProduct;
 
-	usb_dfu_register(&pdata);
+	ret = usb_dfu_register(&pdata);
 
 out:
 	while (n) {
@@ -155,8 +156,10 @@ out:
 		free(dfu_alts[n].name);
 		free(dfu_alts[n].dev);
 	};
+
 	free(dfu_alts);
-	return 1;
+
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(dfu)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

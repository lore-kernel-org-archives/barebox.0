Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUCQy-0001ct-Va
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:26:02 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 17 Sep 2014 12:25:10 +0200
Message-Id: <1410949512-16562-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1410949512-16562-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1410949512-16562-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 2/4] imx-image: Handle check commands correctly
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

The length of two subsequent check commands was incorrectly calculated.
The check commands have a fixed length anyway, so program a fixed length
in the check command and skip the code from check_last_dcd.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 36 +++++++++++++++---------------------
 1 file changed, 15 insertions(+), 21 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 3a25c0929883..d1db51780f64 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -259,34 +259,29 @@ struct command {
 	int (*parse)(int argc, char *argv[]);
 };
 
-static uint32_t last_cmd;
+static uint32_t last_write_cmd;
 static int last_cmd_len;
 static uint32_t *last_dcd;
 
 static void check_last_dcd(uint32_t cmd)
 {
-	if (last_dcd) {
-		if (last_cmd == cmd) {
-			return;
-		} else {
-			uint32_t l = be32toh(*last_dcd);
+	cmd &= 0xff0000ff;
 
-			l |= last_cmd_len << 8;
-
-			*last_dcd = htobe32(l);
-
-			last_dcd = NULL;
-		}
+	if (cmd == last_write_cmd) {
+		last_cmd_len += sizeof(uint32_t) * 2;
+		return;
 	}
 
-	if (!cmd)
-		return;
+	/* write length ... */
+	if (last_write_cmd)
+		*last_dcd = htobe32(last_write_cmd | (last_cmd_len << 8));
 
-	if (!last_dcd) {
+	if ((cmd >> 24) == TAG_WRITE) {
+		last_write_cmd = cmd;
 		last_dcd = &dcdtable[curdcd++];
-		*last_dcd = htobe32(cmd);
-		last_cmd_len = sizeof(uint32_t);
-		last_cmd = cmd;
+		last_cmd_len = sizeof(uint32_t) * 3;
+	} else {
+		last_write_cmd = 0;
 	}
 }
 
@@ -303,7 +298,6 @@ static int write_mem_v2(uint32_t addr, uint32_t val, int width)
 
 	check_last_dcd(cmd);
 
-	last_cmd_len += sizeof(uint32_t) * 2;
 	dcdtable[curdcd++] = htobe32(addr);
 	dcdtable[curdcd++] = htobe32(val);
 
@@ -370,11 +364,11 @@ static int do_cmd_check(int argc, char *argv[])
 		return -EINVAL;
 	}
 
-	cmd = (TAG_CHECK << 24) | (i << 3) | width;
+	cmd = (TAG_CHECK << 24) | (i << 3) | width | ((sizeof(uint32_t) * 3) << 8);
 
 	check_last_dcd(cmd);
 
-	last_cmd_len += sizeof(uint32_t) * 2;
+	dcdtable[curdcd++] = htobe32(cmd);
 	dcdtable[curdcd++] = htobe32(addr);
 	dcdtable[curdcd++] = htobe32(mask);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

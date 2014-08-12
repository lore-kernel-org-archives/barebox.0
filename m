Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XHEaV-0007Iz-0d
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 16:06:15 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XHEa8-00024L-9a
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 18:05:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 12 Aug 2014 18:05:50 +0200
Message-Id: <1407859552-20180-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1407859552-20180-1-git-send-email-l.stach@pengutronix.de>
References: <1407859552-20180-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] scripts: imx-image: add input validation to mw
To: barebox@lists.infradead.org

Stop and print a helpful message if we encounter an
illegal token while parsing the DCD config, instead
of silently swallowing the error and pushing random
stuff into the DCD.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 scripts/imx/imx-image.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index f4890c44d7fa..3a25c0929883 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -384,15 +384,30 @@ static int do_cmd_check(int argc, char *argv[])
 static int do_cmd_write_mem(int argc, char *argv[])
 {
 	uint32_t addr, val, width;
+	char *end;
 
 	if (argc != 4) {
 		fprintf(stderr, "usage: wm [8|16|32] <addr> <val>\n");
 		return -EINVAL;
 	}
 
-	width = strtoul(argv[1], NULL, 0);
-	addr = strtoul(argv[2], NULL, 0);
-	val = strtoul(argv[3], NULL, 0);
+	width = strtoul(argv[1], &end, 0);
+	if (*end != '\0') {
+		fprintf(stderr, "illegal width token \"%s\"\n", argv[1]);
+		return -EINVAL;
+	}
+
+	addr = strtoul(argv[2], &end, 0);
+	if (*end != '\0') {
+		fprintf(stderr, "illegal address token \"%s\"\n", argv[2]);
+		return -EINVAL;
+	}
+
+	val = strtoul(argv[3], &end, 0);
+	if (*end != '\0') {
+		fprintf(stderr, "illegal value token \"%s\"\n", argv[3]);
+		return -EINVAL;
+	}
 
 	width >>= 3;
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

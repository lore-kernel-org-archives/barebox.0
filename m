Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLnOq-0005Eo-BD
 for barebox@lists.infradead.org; Thu, 24 May 2018 10:23:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 May 2018 12:22:57 +0200
Message-Id: <20180524102257.14171-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] imx-usb-loader: Align uploaded file length
To: Barebox List <barebox@lists.infradead.org>

At least i.MX25 does not properly upload a non word aligned file length.
Align the uploaded length to word length to make sure the end of the
file is also transferred properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 43dde8b7f2..cbb17cbab9 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -40,6 +40,8 @@
 
 #define get_min(a, b) (((a) < (b)) ? (a) : (b))
 
+#define ALIGN(x, a)        (((x) + (a) - 1) & ~((a) - 1))
+
 #define FT_APP	0xaa
 #define FT_CSF	0xcc
 #define FT_DCD	0xee
@@ -412,7 +414,7 @@ static int read_file(const char *name, unsigned char **buffer, unsigned *size)
 		return -2;
 	}
 
-	buf = malloc(fsize);
+	buf = malloc(ALIGN(fsize, 4));
 	if (!buf) {
 		printf("error, out of memory\n");
 		fclose(xfile);
@@ -762,6 +764,8 @@ static int load_file(void *buf, unsigned len, unsigned dladdr, unsigned char typ
 	void *p;
 	int cnt;
 
+	len = ALIGN(len, 4);
+
 	dl_command.addr = htonl(dladdr);
 	dl_command.cnt = htonl(len);
 	dl_command.rsvd = type;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

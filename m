Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLivT-00058I-HJ
 for barebox@lists.infradead.org; Thu, 24 May 2018 05:36:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 May 2018 07:36:20 +0200
Message-Id: <20180524053621.995-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] imx-usb-loader: Fix verify for non word aligned lengths
To: Barebox List <barebox@lists.infradead.org>

Verifying the uploaded image fails when the length is not word aligned.
This is because read_memory reads full words, so the input length must
be word aligned. Align the length up to 4 bytes so that we do not pass
unaligned lengths to read_memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 43dde8b7f2..684e3f8a06 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -586,6 +586,8 @@ int do_status(void)
 	return err;
 }
 
+#define ALIGN(x, a)        (((x) + (a) - 1) & ~((a) - 1))
+
 static int read_memory(unsigned addr, void *dest, unsigned cnt)
 {
 	static struct sdp_command read_reg_command = {
@@ -1160,12 +1162,13 @@ static int verify_memory(const void *buf, unsigned len, unsigned addr)
 	int ret, mismatch = 0;
 	void *readbuf;
 	unsigned offset = 0, now;
+	unsigned alen = ALIGN(len, 4);
 
-	readbuf = malloc(len);
+	readbuf = malloc(alen);
 	if (!readbuf)
 		return -ENOMEM;
 
-	ret = read_memory(addr, readbuf, len);
+	ret = read_memory(addr, readbuf, alen);
 	if (ret < 0)
 		goto err;
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

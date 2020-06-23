Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimf-0003Eg-QI
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:49 +0200
Message-Id: <20200623131606.16316-4-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/20] scripts: imx-image: Add extra code path for i.MX35
To: Barebox List <barebox@lists.infradead.org>

The i.MX35 writes two copies of the header at the beginning of the
image. This is written in a loop right now. Make the i.MX35 an extra
code path so that it is out of the way for the changes in the next
patches.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 04c707cb7f..edff3580dd 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -781,7 +781,6 @@ int main(int argc, char *argv[])
 	int outfd;
 	int dcd_only = 0;
 	int now = 0;
-	int i, header_copies;
 	int add_barebox_header;
 	uint32_t barebox_image_size = 0;
 	struct config_data data = {
@@ -978,9 +977,13 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	header_copies = (data.cpu_type == IMX_CPU_IMX35) ? 2 : 1;
-
-	for (i = 0; i < header_copies; i++) {
+	if (data.cpu_type == IMX_CPU_IMX35) {
+		xwrite(outfd, add_barebox_header ? bb_header : buf,
+		       sizeof_bb_header);
+		xwrite(outfd, buf + sizeof_bb_header,
+		       header_len - sizeof_bb_header);
+		xwrite(outfd, buf, header_len);
+	} else {
 		xwrite(outfd, add_barebox_header ? bb_header : buf,
 		       sizeof_bb_header);
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

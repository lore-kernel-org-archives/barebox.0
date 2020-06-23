Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimY-0001UJ-5l
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:50 +0200
Message-Id: <20200623131606.16316-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/20] scripts: imx-image: exit with error when barebox header
 conflicts with IVT
To: Barebox List <barebox@lists.infradead.org>

When the IVT is right at the beginning of the image it conflicts with
the barebox header. Bail out with an error when this happens.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index edff3580dd..bbd7e95bc2 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -984,6 +984,12 @@ int main(int argc, char *argv[])
 		       header_len - sizeof_bb_header);
 		xwrite(outfd, buf, header_len);
 	} else {
+		if (add_barebox_header &&
+		    data.image_dcd_offset + data.header_gap < sizeof_bb_header) {
+			fprintf(stderr, "barebox header conflicts with IVT\n");
+			exit(1);
+		}
+
 		xwrite(outfd, add_barebox_header ? bb_header : buf,
 		       sizeof_bb_header);
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimY-0001UO-C4
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:15:51 +0200
Message-Id: <20200623131606.16316-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/20] scripts: imx-image: Fix writing image with IVT offset =
 0
To: Barebox List <barebox@lists.infradead.org>

When we have written the barebox header the next thing we do is to lseek
forward by the size of the header gap. This means our position is
already inside of the rest of the image and we have to skip this offset
from the rest of the image. This only works when the rest of the image
doesn't have anything needed in the first few bytes. Some newer SoCs
have the IVT at offset 0 though, so with the current approach we skip
writing the IVT.
Instead of doing this we should lseek to the end of the header gap.
With this we are at the right position to just write the full image
containing the IVT.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index bbd7e95bc2..9c40cf7340 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -993,13 +993,12 @@ int main(int argc, char *argv[])
 		xwrite(outfd, add_barebox_header ? bb_header : buf,
 		       sizeof_bb_header);
 
-		if (lseek(outfd, data.header_gap, SEEK_CUR) < 0) {
+		if (lseek(outfd, data.header_gap, SEEK_SET) < 0) {
 			perror("lseek");
 			exit(1);
 		}
 
-		xwrite(outfd, buf + sizeof_bb_header,
-		       header_len - sizeof_bb_header);
+		xwrite(outfd, buf, header_len);
 	}
 
 	xwrite(outfd, infile, insize);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

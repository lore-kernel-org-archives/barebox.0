Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jul5F-0005gZ-3y
 for barebox@lists.infradead.org; Sun, 12 Jul 2020 23:08:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Jul 2020 01:08:12 +0200
Message-Id: <20200712230814.7207-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] fixup! scripts: imx-image: Fix writing image with IVT
 offset = 0
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

When data.header_gap == 0, like on i.MX6, we seek to the start of the
file after writing the barebox header there and proceed to overwrite
it again.

Therefore we can no longer detect the filetype and affected images
can't be booted/flashed directly on < i.MX8 anymore. Fix this up:

- on i.MX8, there is nothing at the start, so it's ok to write there
- on i.MX6, we overwrite buf[0..sizeof_bb_header-1], but that's the way
  it was before

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/imx/imx-image.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 64be682417e0..de04962b09d1 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -978,10 +978,7 @@ int main(int argc, char *argv[])
 	}
 
 	if (data.cpu_type == IMX_CPU_IMX35) {
-		xwrite(outfd, add_barebox_header ? bb_header : buf,
-		       sizeof_bb_header);
-		xwrite(outfd, buf + sizeof_bb_header,
-		       header_len - sizeof_bb_header);
+		xwrite(outfd, buf, header_len);
 		xwrite(outfd, buf, header_len);
 	} else {
 		if (add_barebox_header &&
@@ -990,9 +987,6 @@ int main(int argc, char *argv[])
 			exit(1);
 		}
 
-		xwrite(outfd, add_barebox_header ? bb_header : buf,
-		       sizeof_bb_header);
-
 		if (lseek(outfd, data.header_gap, SEEK_SET) < 0) {
 			perror("lseek");
 			exit(1);
@@ -1001,6 +995,9 @@ int main(int argc, char *argv[])
 		xwrite(outfd, buf, header_len);
 	}
 
+	if (add_barebox_header)
+		pwrite(outfd, bb_header, sizeof_bb_header, 0);
+
 	xwrite(outfd, infile, insize);
 
 	/* pad until next 4k boundary */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

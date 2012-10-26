Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003z5-HJ
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:59:07 +0200
Message-Id: <1351234748-24994-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
References: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/15] ARM omap spi image: relax size constrains
To: barebox@lists.infradead.org

The omap spi utility requires the image size to be a multiple of four
bytes. This seems unnecessary, we can just pad with a few bytes to
get the required alignment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/mk-am35xx-spi-image.c |    8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/scripts/mk-am35xx-spi-image.c b/scripts/mk-am35xx-spi-image.c
index ec311fd..1372fbd 100644
--- a/scripts/mk-am35xx-spi-image.c
+++ b/scripts/mk-am35xx-spi-image.c
@@ -95,10 +95,6 @@ int main(int argc, char *argv[])
 		perror("ftello");
 		exit(EXIT_FAILURE);
 	}
-	if (pos % 4) {
-		printf("error: image size must be a multiple of 4 bytes\n");
-		exit(EXIT_FAILURE);
-	}
 	if (pos > 0x100000) {
 		printf("error: image should be smaller than 1 MiB\n");
 		exit(EXIT_FAILURE);
@@ -109,6 +105,8 @@ int main(int argc, char *argv[])
 		exit(EXIT_FAILURE);
 	}
 
+	pos = (pos + 3) & ~3;
+
 	/* image size */
 	temp = htobe32((uint32_t)pos);
 	fwrite(&temp, sizeof(uint32_t), 1, stdout);
@@ -121,7 +119,7 @@ int main(int argc, char *argv[])
 		size = fread(&temp, 1, sizeof(uint32_t), input);
 		if (!size)
 			break;
-		if (size != 4) {
+		if (size < 4 && !feof(input)) {
 			perror("fread");
 			exit(EXIT_FAILURE);
 		}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

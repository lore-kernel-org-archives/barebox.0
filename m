Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003z6-HH
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:59:08 +0200
Message-Id: <1351234748-24994-16-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/15] ARM omap spi image: print error to stderr
To: barebox@lists.infradead.org

Since the utility outputs the image on stdout we have to print the
error messages to stderr in order to see them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/mk-am35xx-spi-image.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mk-am35xx-spi-image.c b/scripts/mk-am35xx-spi-image.c
index 1372fbd..74e79db 100644
--- a/scripts/mk-am35xx-spi-image.c
+++ b/scripts/mk-am35xx-spi-image.c
@@ -96,7 +96,7 @@ int main(int argc, char *argv[])
 		exit(EXIT_FAILURE);
 	}
 	if (pos > 0x100000) {
-		printf("error: image should be smaller than 1 MiB\n");
+		fprintf(stderr, "error: image should be smaller than 1 MiB\n");
 		exit(EXIT_FAILURE);
 	}
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

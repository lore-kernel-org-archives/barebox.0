Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdLHq-0007q8-Iw
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:43 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:11 +0200
Message-Id: <1427904855-32548-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 06/10] imx-image: main: make use of round_up instead of open
 coding it
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index fd78a86198d6..ec2e8deb015b 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -30,6 +30,7 @@
 
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
 #define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
+#define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
 
 #define MAX_DCD 1024
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
@@ -740,7 +741,7 @@ int main(int argc, char *argv[])
 	 * - i.MX6 SPI NOR boot corrupts the last few bytes of an image loaded
 	 *   in ver funy ways when the image size is not 4 byte aligned
 	 */
-	load_size = ((image_size + HEADER_LEN) + 0xfff) & ~0xfff;
+	load_size = roundup(image_size + HEADER_LEN, 0x1000);
 
 	if (cpu_type == 35)
 		load_size += HEADER_LEN;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

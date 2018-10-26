Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG0J1-0001Rn-2H
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 11:29:32 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 26 Oct 2018 13:29:14 +0200
Message-Id: <20181026112914.28609-1-mkl@pengutronix.de>
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
Subject: [PATCH] scripts: imx-usb-loader: list_imx_device_types(): move
 variable declaration out of for() loop
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

On older compilers this causes the following error:
| scripts/imx/imx-usb-loader.c: In function 'list_imx_device_types':
| scripts/imx/imx-usb-loader.c:252:2: error: 'for' loop initial declarations are only allowed in C99 mode
|   for (int i = 0; i < ARRAY_SIZE(imx_ids); i++) {
|   ^
| scripts/imx/imx-usb-loader.c:252:2: note: use option -std=c99 or -std=gnu99 to compile your code

Fixes: bcc2df673cdb ("scripts: imx-usb-loader: allow use of unknown USB IDs")
Reported-by: Niklas Reisser <Niklas.Reisser@de.bosch.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 4336bc8d532d..d4fba0ce54e8 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -249,7 +249,9 @@ static const struct mach_id *imx_device_by_type(const char *name)
 
 static void list_imx_device_types(void)
 {
-	for (int i = 0; i < ARRAY_SIZE(imx_ids); i++) {
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(imx_ids); i++) {
 		printf("%s\n", imx_ids[i].name);
 	}
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

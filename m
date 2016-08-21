Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbZDF-00061l-Mq
 for barebox@lists.infradead.org; Sun, 21 Aug 2016 20:19:22 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 21 Aug 2016 22:16:13 +0200
Message-Id: <1471810573-1306-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] scripts: imx-image: DCD check command for v2 only
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

DCD check command is currently implemented for imximg v2 only.
This command may also be available for v1 as mentioned in IMX35RM as
DCD-address-type "wait/read", but due to the lack of further details
it will be not supported.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx-image.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index c0bf9c0..d0c4152 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -450,6 +450,11 @@ static int write_dcd(const char *outfile)
 static int check(const struct config_data *data, uint32_t cmd, uint32_t addr,
 		 uint32_t mask)
 {
+	if (data->header_version != 2) {
+		fprintf(stderr, "DCD check command is not available or "
+				"not yet implemented for this SOC\n");
+		return -EINVAL;
+	}
 	if (curdcd > MAX_DCD - 3) {
 		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
 		return -ENOMEM;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

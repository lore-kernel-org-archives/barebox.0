Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIY1U-00083H-42
 for barebox@lists.infradead.org; Thu, 30 Jun 2016 09:12:37 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu, 30 Jun 2016 11:10:19 +0200
Message-Id: <1467277820-5558-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/2] scripts: imx-image: super_root_key command depends on
 header_version 1
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The Super Root Key pointer exclusively exists in flash header version 1
which is used for i.MX25, i.MX35 and i.MX51 SOC as described in freescales
AN4547 document. Simplify the code a little bit.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 scripts/imx/imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 70936ba..f1accc4 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -327,7 +327,7 @@ static int do_super_root_key(struct config_data *data, int argc, char *argv[])
 		return -EINVAL;
 	}
 
-	if (data->cpu_type != 35 && data->cpu_type != 25) {
+	if (data->header_version != 1) {
 		fprintf(stderr, "Warning: The super_root_key command is meaningless "
 			"on non HABv3 based SoCs\n");
 		return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

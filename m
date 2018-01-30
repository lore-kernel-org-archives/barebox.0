Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egRZQ-00076W-I5
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 08:47:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jan 2018 09:46:53 +0100
Message-Id: <20180130084657.31943-3-s.hauer@pengutronix.de>
In-Reply-To: <20180130084657.31943-1-s.hauer@pengutronix.de>
References: <20180130084657.31943-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] bbu: imx-bbu-internal: make pointers to image const
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index d40bde5339..d03be72487 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -51,7 +51,7 @@ struct imx_internal_bbu_handler {
  */
 static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		const char *devicefile, struct bbu_data *data,
-		void *buf, int image_len)
+		const void *buf, int image_len)
 {
 	int fd, ret;
 	int written = 0;
@@ -358,7 +358,7 @@ static int imx_bbu_internal_v2_update(struct bbu_handler *handler, struct bbu_da
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
-	uint32_t *barker;
+	const uint32_t *barker;
 
 	ret = imx_bbu_check_prereq(data->devicefile, data);
 	if (ret)
@@ -386,7 +386,7 @@ static int imx_bbu_internal_v2_mmcboot_update(struct bbu_handler *handler,
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
 	int ret;
-	uint32_t *barker;
+	const uint32_t *barker;
 	char *bootpartvar;
 	const char *bootpart;
 	char *devicefile;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

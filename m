Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdRLU-0002Qi-06
 for barebox@lists.infradead.org; Tue, 27 Nov 2012 20:01:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2012 21:01:14 +0100
Message-Id: <1354046477-17530-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM i.MX bbu: Fix compiling with DEBUG enabled
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 85d10cf..c34f86f 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -63,7 +63,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 	if (imx_handler->flags & IMX_INTERNAL_FLAG_KEEP_DOSPART) {
 		void *mbr = xzalloc(512);
 
-		debug("%s: reading DOS partition table in order to keep it\n");
+		debug("%s: reading DOS partition table in order to keep it\n", __func__);
 
 		ret = read(fd, mbr, 512);
 		if (ret < 0) {
@@ -484,7 +484,7 @@ static int imx53_bbu_internal_init_dcd(struct imx_internal_bbu_handler *imx_hand
 	if ((*dcd32 & 0xff0000ff) != DCD_WR_CMD(0)) {
 		__be32 *buf;
 
-		debug("%s: dcd does not have a DCD_WR_CMD. Prepending one\n");
+		debug("%s: dcd does not have a DCD_WR_CMD. Prepending one\n", __func__);
 
 		buf = xmalloc(dcdsize + sizeof(__be32));
 
@@ -494,7 +494,7 @@ static int imx53_bbu_internal_init_dcd(struct imx_internal_bbu_handler *imx_hand
 		imx_handler->dcd = buf;
 		imx_handler->dcdsize = dcdsize + sizeof(__be32);
 	} else {
-		debug("%s: dcd already has a DCD_WR_CMD. Using original dcd data\n");
+		debug("%s: dcd already has a DCD_WR_CMD. Using original dcd data\n", __func__);
 
 		imx_handler->dcd = dcd;
 		imx_handler->dcdsize = dcdsize;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

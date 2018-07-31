Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-00084V-Bi
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:04 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:27 +0200
Message-Id: <20180731104442.2451-5-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 04/19] bootm: allow booting SoCFPGA prebootloader image
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Jorns <ejo@pengutronix.de>

From: Enrico Jorns <ejo@pengutronix.de>

A prebootloader image might also contain a fully working barebox and
allows to be booted second stage. Thus we add a handler here to give it
a try.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index c8bf72f0e0c7..ec1875e38d8f 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -414,6 +414,12 @@ static struct image_handler barebox_handler = {
 	.filetype = filetype_arm_barebox,
 };
 
+static struct image_handler socfpga_xload_handler = {
+	.name = "SoCFPGA prebootloader image",
+	.bootm = do_bootm_linux,
+	.filetype = filetype_socfpga_xload,
+};
+
 #include <aimage.h>
 
 static int aimage_load_resource(int fd, struct resource *r, void* buf, int ps)
@@ -603,6 +609,7 @@ static struct binfmt_hook binfmt_barebox_hook = {
 static int armlinux_register_image_handler(void)
 {
 	register_image_handler(&barebox_handler);
+	register_image_handler(&socfpga_xload_handler);
 	register_image_handler(&uimage_handler);
 	register_image_handler(&rawimage_handler);
 	register_image_handler(&zimage_handler);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQcG0-0002Pk-VH
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:52 +0100
Message-Id: <1454424497-7157-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/34] scripts: imx-usb-loader: Make readonly arguments const
To: Barebox List <barebox@lists.infradead.org>

The buffers passed to dump_long and dump_bytes are not (and shouldn't
be) modified. Make the arguments const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 11ca914..f42ab67 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -190,9 +190,10 @@ static libusb_device *find_imx_dev(libusb_device **devs, struct mach_id **pp_id)
 	return NULL;
 }
 
-static void dump_long(unsigned char *src, unsigned cnt, unsigned addr)
+static void dump_long(const void *src, unsigned cnt, unsigned addr)
 {
-	unsigned *p = (unsigned *)src;
+	const unsigned *p = (unsigned *)src;
+
 	while (cnt >= 32) {
 		printf("%08x: %08x %08x %08x %08x  %08x %08x %08x %08x\n",
 				addr, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);
@@ -211,9 +212,9 @@ static void dump_long(unsigned char *src, unsigned cnt, unsigned addr)
 	}
 }
 
-static void dump_bytes(unsigned char *src, unsigned cnt, unsigned addr)
+static void dump_bytes(const void *src, unsigned cnt, unsigned addr)
 {
-	unsigned char *p = src;
+	const unsigned char *p = src;
 	int i;
 
 	while (cnt >= 16) {
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

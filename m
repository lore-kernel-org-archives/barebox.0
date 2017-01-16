Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002k1-0W
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:50:46 +0100
Message-Id: <20170116105108.13617-2-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/23] imx-usb-loader: let constant data be const
To: Barebox List <barebox@lists.infradead.org>
Cc: Juergen Borleis <jbe@pengutronix.de>

From: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index be0894fa6..dfeef9e2c 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -72,11 +72,11 @@ struct usb_work {
 };
 
 struct usb_id {
-	struct mach_id *mach_id;
+	const struct mach_id *mach_id;
 	struct usb_work *work;
 };
 
-struct mach_id imx_ids[] = {
+const struct mach_id imx_ids[] = {
 	{
 		.vid = 0x066f,
 		.pid = 0x3780,
@@ -174,12 +174,12 @@ struct sdp_command  {
 	uint8_t rsvd;
 } __attribute__((packed));
 
-static struct mach_id *imx_device(unsigned short vid, unsigned short pid)
+static const struct mach_id *imx_device(unsigned short vid, unsigned short pid)
 {
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(imx_ids); i++) {
-		struct mach_id *id = &imx_ids[i];
+		const struct mach_id *id = &imx_ids[i];
 		if (id->vid == vid && id->pid == pid) {
 			fprintf(stderr, "found %s USB device [%04x:%04x]\n",
 					id->name, vid, pid);
@@ -190,10 +190,10 @@ static struct mach_id *imx_device(unsigned short vid, unsigned short pid)
 	return NULL;
 }
 
-static libusb_device *find_imx_dev(libusb_device **devs, struct mach_id **pp_id)
+static libusb_device *find_imx_dev(libusb_device **devs, const struct mach_id **pp_id)
 {
 	int i = 0;
-	struct mach_id *p;
+	const struct mach_id *p;
 
 	for (;;) {
 		struct libusb_device_descriptor desc;
@@ -1288,7 +1288,7 @@ static void usage(const char *prgname)
 
 int main(int argc, char *argv[])
 {
-	struct mach_id *mach;
+	const struct mach_id *mach;
 	libusb_device **devs;
 	libusb_device *dev;
 	int r;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

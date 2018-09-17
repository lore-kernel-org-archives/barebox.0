Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1u1j-0002TL-C2
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 13:57:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Sep 2018 15:57:10 +0200
Message-Id: <20180917135710.6088-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fastboot: detect device if not present
To: Barebox List <barebox@lists.infradead.org>

When a device file is not present when the fastboot gadget is created
then try to detect it before we fail. It may be that we want to write
to a device that we haven't used before.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 40a78987e4..74fb524c1c 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -246,6 +246,11 @@ static int fastboot_add_partition_variables(struct f_fastboot *f_fb,
 	struct fb_variable *var;
 
 	ret = stat(fentry->filename, &s);
+	if (ret) {
+		device_detect_by_name(devpath_to_name(fentry->filename));
+		ret = stat(fentry->filename, &s);
+	}
+
 	if (ret) {
 		if (fentry->flags & FILE_LIST_FLAG_CREATE) {
 			ret = 0;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUCQy-0001cq-Vc
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:26:01 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 17 Sep 2014 12:25:09 +0200
Message-Id: <1410949512-16562-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1410949512-16562-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1410949512-16562-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 1/4] imx-usb-loader: Skip unknown tags
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Instead of bailing out skip unknown tags. These tags are usually
doing operations to poll for a certain register state. The correct
solution is to implement this register polling, but for now delay
execution for a while and assume the register has the correct
state afterwards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 475917bc6c31..c86260cdea3f 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -615,8 +615,10 @@ static int write_dcd_table_ivt(struct libusb_device_handle *h, struct usb_id *p_
 		printf("sub dcd length %x\n", s_length);
 
 		if ((dcd[0] != 0xcc) || (dcd[3] != 0x04)) {
-			printf("Unknown sub tag\n");
-			return -1;
+			printf("Skipping unknown sub tag 0x%02x with len %04x\n", dcd[0], s_length);
+			usleep(50000);
+			dcd += s_length;
+			continue;
 		}
 		dcd += 4;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

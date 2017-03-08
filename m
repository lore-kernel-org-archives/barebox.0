Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clXpc-0000VS-Iz
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 09:24:32 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  8 Mar 2017 10:24:02 +0100
Message-Id: <20170308092402.21245-2-o.rempel@pengutronix.de>
In-Reply-To: <20170308092402.21245-1-o.rempel@pengutronix.de>
References: <20170308092402.21245-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 2/2] usb: fastboot: umount device before writing to it
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

When a fastboot target refers to a device and we are going to write
to it, umount it beforehand, so that we do not end up with corrupt
data after writing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index a6192b9eb..8d69aea8b 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -754,6 +754,7 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 		goto out;
 	}
 
+	umount(filename);
 copy:
 	ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
 	if (ret) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

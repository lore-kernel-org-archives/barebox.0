Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfbOO-0003KB-GQ
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 19:09:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2012 20:09:22 +0100
Message-Id: <1354561762-4355-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] USB ulpi: pass return value
To: barebox@lists.infradead.org

Pass the return value from ulpi_probe in ulpi_setup instead
of returning -1 (which is -EPERM and does not make sense in
this context)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/otg/ulpi.c |    7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index d749280..61cbada 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -181,8 +181,11 @@ int ulpi_set_vbus(void __iomem *view, int on)
 
 int ulpi_setup(void __iomem *view, int on)
 {
-	if (ulpi_probe(view))
-		return -1;
+	int ret;
+
+	ret = ulpi_probe(view);
+	if (ret)
+		return ret;
 
 	return ulpi_set_vbus(view, on);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

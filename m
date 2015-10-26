Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqmEc-0004pJ-5o
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 18:11:07 +0000
Received: by wicfx6 with SMTP id fx6so126398358wic.1
 for <barebox@lists.infradead.org>; Mon, 26 Oct 2015 11:10:44 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Mon, 26 Oct 2015 19:10:29 +0100
Message-Id: <1445883029-23173-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1445883029-23173-1-git-send-email-alex.aring@gmail.com>
References: <1445883029-23173-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/3] amba: check if on remove callback
To: barebox@lists.infradead.org

Currently we get a null pointer dereference when booting linux on RPi
which use "uart-pl011" driver. This driver doesn't implement a remove
driver callback. This patch adds a check before calling the remove
callback if the driver which use the amba bus implement such
functionality.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/amba/bus.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index b934e11..ddd9661 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -70,7 +70,8 @@ static void amba_remove(struct device_d *dev)
 	struct amba_device *pcdev = to_amba_device(dev);
 	struct amba_driver *drv = to_amba_driver(dev->driver);
 
-	drv->remove(pcdev);
+	if (drv->remove)
+		drv->remove(pcdev);
 }
 
 struct bus_type amba_bustype = {
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

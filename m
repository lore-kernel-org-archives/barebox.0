Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IO-0005Js-Hj
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:18 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:05:58 +0100
Message-Id: <20210222070605.589180-3-ahmad@a3f.at>
In-Reply-To: <20210222070605.589180-1-ahmad@a3f.at>
References: <20210222070605.589180-1-ahmad@a3f.at>
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
Subject: [PATCH 2/8] driver: Don't throw an error on probes that didn't find
 the device
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

As the name suggests, determining that a device doesn't match is a valid
thing for probe to do. Unlike Linux, we throw an error in that case.
This will becomes annoying if we start probing virtio-mmio devices,
because Qemu registers a bunch and only assigns functions on demand.
Thus don't print an error message for ENXIO and ENODEV like Linux does.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/base/driver.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 6763bbc6f512..f60533c59eb1 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -102,7 +102,10 @@ int device_probe(struct device_d *dev)
 	list_del(&dev->active);
 	INIT_LIST_HEAD(&dev->active);
 
-	dev_err(dev, "probe failed: %s\n", strerror(-ret));
+	if (ret == -ENODEV || ret == -ENXIO)
+		dev_dbg(dev, "probe failed: %s\n", strerror(-ret));
+	else
+		dev_err(dev, "probe failed: %s\n", strerror(-ret));
 
 	return ret;
 }
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

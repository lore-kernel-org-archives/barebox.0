Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtUa-0001J2-KI
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:26:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:25:29 +0100
Message-Id: <1392287135-445-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] device: init bus list
To: barebox@lists.infradead.org

bus_list is only initialized when the device has a bus, but it
needs to be initialized in unregister_device, so initialize the
list unconditionally.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4250fb0..b5fe346 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -154,6 +154,7 @@ int register_device(struct device_d *new_device)
 	INIT_LIST_HEAD(&new_device->cdevs);
 	INIT_LIST_HEAD(&new_device->parameters);
 	INIT_LIST_HEAD(&new_device->active);
+	INIT_LIST_HEAD(&new_device->bus_list);
 
 	if (new_device->bus) {
 		if (!new_device->parent)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMqy3-0001Rw-7Z
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 08:56:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Nov 2018 09:55:58 +0100
Message-Id: <20181114085558.13025-2-s.hauer@pengutronix.de>
In-Reply-To: <20181114085558.13025-1-s.hauer@pengutronix.de>
References: <20181114085558.13025-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] driver: Print message with pr_err
To: Barebox List <barebox@lists.infradead.org>

print "already registered" message with pr_err() rather than printf() to
make sure it also appears in the logs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4acc4cfa1e..1fd890542e 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -177,7 +177,7 @@ int register_device(struct device_d *new_device)
 		new_device->id = get_free_deviceid(new_device->name);
 	} else {
 		if (get_device_by_name_id(new_device->name, new_device->id)) {
-			eprintf("register_device: already registered %s\n",
+			pr_err("register_device: already registered %s\n",
 				dev_name(new_device));
 			return -EINVAL;
 		}
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

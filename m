Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bx7pJ-0008WQ-GY
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 07:31:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Oct 2016 09:31:22 +0200
Message-Id: <20161020073122.19295-3-s.hauer@pengutronix.de>
In-Reply-To: <20161020073122.19295-1-s.hauer@pengutronix.de>
References: <20161020073122.19295-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] of_path: handle no driver for device
To: Barebox List <barebox@lists.infradead.org>

in __of_find_path it can happen that there is a device, but there
is no driver for this device because it hasn't been probed yet.
Return -ENODEV in this case to let the caller know that it has to
try later again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_path.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 8e1931f..12a7c02 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -61,6 +61,9 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 			return -ENODEV;
 	}
 
+	if (!dev->driver)
+		return -ENODEV;
+
 	device_detect(dev);
 
 	if (part)
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

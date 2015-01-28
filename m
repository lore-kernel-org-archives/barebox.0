Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FD-3R
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:13 +0100
Message-Id: <1422430339-11969-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/15] of: Create platform_device when creating AMBA device
 failed
To: Barebox List <barebox@lists.infradead.org>

If creating an AMBA device failed, maybe because AMBA support is
not compiled in, register the device as regular platform device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 92ef534..ab3ccab 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -312,8 +312,8 @@ static int of_platform_bus_create(struct device_node *bus,
 	}
 
 	if (of_device_is_compatible(bus, "arm,primecell")) {
-		of_amba_device_create(bus);
-		return 0;
+		if (of_amba_device_create(bus))
+			return 0;
 	}
 
 	dev = of_platform_device_create(bus, parent);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

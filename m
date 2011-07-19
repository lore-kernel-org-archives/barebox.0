Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qb-0006kx-TW
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:39:45 +0200
Message-Id: <1311064803-6305-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/19] register_device: Add IORESOURCE_MEM flag
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/driver.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/lib/driver.c b/lib/driver.c
index 7b381ab..95e42d5 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -116,6 +116,7 @@ int register_device(struct device_d *new_device)
 		new_device->resource = xzalloc(sizeof(struct resource));
 		new_device->resource[0].start = new_device->map_base;
 		new_device->resource[0].size = new_device->size;
+		new_device->resource[0].flags = IORESOURCE_MEM;
 		new_device->num_resources = 1;
 	} else if (new_device->resource) {
 		new_device->map_base = new_device->resource[0].start;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

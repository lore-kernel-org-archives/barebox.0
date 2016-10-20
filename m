Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bx7pO-00005o-Dy
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 07:31:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Oct 2016 09:31:21 +0200
Message-Id: <20161020073122.19295-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] state: driver: handle EPROBE_DEFER
To: Barebox List <barebox@lists.infradead.org>

When state_new_from_node() returns -ENODEV that means that there
is no device available for the node, so return -EPROBE_DEFER in this
case and hope a device is there later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/state.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index b9eb1b7..b43aee6 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -28,8 +28,12 @@ static int state_probe(struct device_d *dev)
 	bool readonly = false;
 
 	state = state_new_from_node(np, NULL, 0, 0, readonly);
-	if (IS_ERR(state))
-		return PTR_ERR(state);
+	if (IS_ERR(state)) {
+		int ret = PTR_ERR(state);
+		if (ret == -ENODEV)
+			ret = -EPROBE_DEFER;
+		return ret;
+	}
 
 	return 0;
 }
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

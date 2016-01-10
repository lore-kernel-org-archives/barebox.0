Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aINon-0003RZ-6x
 for barebox@lists.infradead.org; Sun, 10 Jan 2016 21:46:34 +0000
Received: from tellur.intern.lynxeye.de (p57B5F3A9.dip0.t-ipconnect.de
 [87.181.243.169]) by lynxeye.de (Postfix) with ESMTPA id CB13D26C2001
 for <barebox@lists.infradead.org>; Sun, 10 Jan 2016 22:36:03 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 10 Jan 2016 22:36:00 +0100
Message-Id: <1452461760-10390-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] reset: fix non GPIO reset
To: barebox@lists.infradead.org

The reset controller structure is zero initialized in the OF
reset case, but as 0 is also a valid GPIO number the current
code tries to assert/deassert the GPIO instead of calling into
the reset controller device.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Sascha, please apply this to master, as without this change
Tegra is broken there.
---
 drivers/reset/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 0f900a9..59f75ca 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -190,6 +190,7 @@ struct reset_control *of_reset_control_get(struct device_node *node,
 
 	rstc->rcdev = rcdev;
 	rstc->id = rstc_id;
+	rstc->gpio = -ENODEV;
 
 	return rstc;
 }
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

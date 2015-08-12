Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPRgg-00041W-SM
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 08:47:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZPRgL-0000x6-E3
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 10:46:45 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Aug 2015 10:46:44 +0200
Message-Id: <1439369205-26787-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
References: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] video: simple-panel: mode support depends on I2C and EDID
To: barebox@lists.infradead.org

Reading modes from EDID EEPROMs requires both I2C and EDID support to
be available. As the simple panel driver is also useful without mode
reading support, only built it in if the requirements are met.

Fixes:
In function `simple_panel_get_modes':
simple-panel.c:88: undefined reference to `of_find_i2c_adapter_by_node'
simple-panel.c:91: undefined reference to `edid_read_i2c'
simple-panel.c:95: undefined reference to `edid_to_display_timings'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/simple-panel.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index dceedc60c31d..3dd760b38538 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -82,7 +82,8 @@ static int simple_panel_get_modes(struct simple_panel *panel, struct display_tim
 {
 	int ret = -ENOENT;
 
-	if (panel->ddc_node) {
+	if (panel->ddc_node && IS_ENABLED(CONFIG_DRIVER_VIDEO_EDID) &&
+	    IS_ENABLED(CONFIG_I2C)) {
 		struct i2c_adapter *i2c;
 
                 i2c = of_find_i2c_adapter_by_node(panel->ddc_node);
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

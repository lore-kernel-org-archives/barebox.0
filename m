Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC3lS-0002Wf-HB
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 10:36:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Jul 2015 12:36:11 +0200
Message-Id: <1436178974-20064-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
References: <1436178974-20064-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] video: stm: read bits-per-pixel from device tree
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/stm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index dd80a98..3d64238 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -559,6 +559,9 @@ static int stmfb_probe(struct device_d *hw_dev)
 			dev_err(hw_dev, "failed to get bus-width property\n");
 			return -EINVAL;
 		}
+
+		of_property_read_u32(display, "bits-per-pixel",
+				&fbi.info.bits_per_pixel);
 	}
 
 	ret = register_framebuffer(&fbi.info);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

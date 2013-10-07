Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTAhv-0003or-Gs
 for barebox@lists.infradead.org; Mon, 07 Oct 2013 13:18:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 15EFFBF0EC
 for <barebox@lists.infradead.org>; Mon,  7 Oct 2013 14:17:37 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 7 Oct 2013 15:18:07 +0200
Message-Id: <1381151887-26837-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1380743134.7042.4.camel@polaris.local>
References: <1380743134.7042.4.camel@polaris.local>
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
Subject: [PATCH] i2c-omap: fix reported revison
To: barebox@lists.infradead.org

Report correct major and minor revision
Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/i2c/busses/i2c-omap.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index bec3b29..8e31ef4 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1079,7 +1079,7 @@ i2c_omap_probe(struct device_d *pdev)
 	omap_i2c_init(i2c_omap);
 
 	dev_info(pdev, "bus %d rev%d.%d at %d kHz\n",
-		 pdev->id, i2c_omap->rev >> 4, i2c_omap->rev & 0xf, i2c_omap->speed);
+		 pdev->id, major, minor, i2c_omap->speed);
 
 	omap_i2c_idle(i2c_omap);
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

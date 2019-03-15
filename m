Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4nW3-00037N-L8
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 14:08:57 +0000
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 15 Mar 2019 15:08:52 +0100
Message-Id: <1552658932-30110-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] mci: imx-esdhc-pbl: initialize is_be
To: barebox@lists.infradead.org

Initialize is_be, otherwise the value of is_be is undefined.
So it is possible that the i.MX8 will not boot because the bigendian
functions are used.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mci/imx-esdhc-pbl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index f77530d..8a03c5f 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -366,6 +366,7 @@ int imx6_esdhc_start_image(int instance)
 		return -EINVAL;
 	}
 
+	esdhc.is_be = 0;
 	esdhc.is_mx6 = 1;
 
 	return esdhc_start_image(&esdhc, 0x10000000, 0x10000000, 0);
@@ -398,6 +399,7 @@ int imx8_esdhc_start_image(int instance)
 		return -EINVAL;
 	}
 
+	esdhc.is_be = 0;
 	esdhc.is_mx6 = 1;
 
 	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR,
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

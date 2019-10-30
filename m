Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlpc-0001j6-QC
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 11:08:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iPlpb-0003cA-5x
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 12:08:03 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Oct 2019 12:08:03 +0100
Message-Id: <20191030110803.11648-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: zii-common: setup Linux cmdline network config on RDU3
To: barebox@lists.infradead.org

Works the same way as with the older units.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-common/board.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-common/board.c b/arch/arm/boards/zii-common/board.c
index 9a9564e6d138..eafb5a3aa8ed 100644
--- a/arch/arm/boards/zii-common/board.c
+++ b/arch/arm/boards/zii-common/board.c
@@ -80,7 +80,8 @@ static int rdu_networkconfig(void)
 	static char *rdu_netconfig;
 	struct device_d *sp_dev;
 
-	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	if (!of_machine_is_compatible("zii,imx8mq-ultra") &&
+	    !of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
 	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2") &&
 	    !of_machine_is_compatible("zii,imx51-rdu1"))
 		return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

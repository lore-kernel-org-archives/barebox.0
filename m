Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihtd3-000275-VS
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 11:06:03 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihtd2-0005Ep-Ce
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 12:06:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 19 Dec 2019 12:06:00 +0100
Message-Id: <20191219110600.18409-1-l.stach@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: zii-imx8mq-dev: add DT fixups
To: barebox@lists.infradead.org

---
 arch/arm/boards/zii-imx8mq-dev/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index 76d499a37094..ac455990b0dc 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -95,7 +95,7 @@ static int zii_imx8mq_dev_fixup_deb_internal(void)
 
 	of_property_write_string(aliases, "ethernet1", np->full_name);
 
-	dev = get_device_by_device_node(np);
+	dev = of_find_device_by_node(np);
 	if (!dev)
 		return -ENODEV;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

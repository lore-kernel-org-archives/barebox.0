Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6M8w-0007Dw-1d
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 17:33:38 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1a6M8a-0007Sm-9D
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 18:33:16 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  8 Dec 2015 18:33:28 +0100
Message-Id: <1449596009-26508-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: ccxmx53: properly guard initcall for multiimage
To: barebox@lists.infradead.org

Make sure to not run this board specific initcall on any
other board.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/ccxmx53/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/ccxmx53/board.c b/arch/arm/boards/ccxmx53/board.c
index 0031aed772e4..9d81cd80a373 100644
--- a/arch/arm/boards/ccxmx53/board.c
+++ b/arch/arm/boards/ccxmx53/board.c
@@ -85,6 +85,9 @@ static int ccwmx53_devices_init(void)
 	u8 hwid[6] = {0};
 	char manloc = 0;
 
+	if (!of_machine_is_compatible("digi,imx53-ccxmx53"))
+		return 0;
+
 	if ((imx_iim_read(1, 9, hwid, sizeof(hwid)) != sizeof(hwid)) ||
 	    (hwid[0] < 0x02) ||
 	    (hwid[0] >= ARRAY_SIZE(ccwmx53_ids))) {
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

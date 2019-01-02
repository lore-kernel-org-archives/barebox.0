Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1geggs-0008P8-Gx
 for barebox@lists.infradead.org; Wed, 02 Jan 2019 13:36:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1geggp-0000hk-8f
 for barebox@lists.infradead.org; Wed, 02 Jan 2019 14:36:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1geggp-0004Co-0d
 for barebox@lists.infradead.org; Wed, 02 Jan 2019 14:36:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jan 2019 14:35:48 +0100
Message-Id: <20190102133547.16106-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] mci: skip of_partitions_register_fixup for boot partitions
To: barebox@lists.infradead.org

The bootN-partitions binding is barebox-specific, so it shouldn't
be fixed up into the kernel device tree.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c8d1d5e16474..62378913c2e5 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1628,7 +1628,12 @@ static int mci_register_partition(struct mci_part *part)
 
 	if (np) {
 		of_parse_partitions(&part->blk.cdev, np);
-		of_partitions_register_fixup(&part->blk.cdev);
+
+		/* bootN-partitions binding barebox-specific, so don't register
+		 * for fixup into kernel device tree
+		 */
+		if (part->area_type != MMC_BLK_DATA_AREA_BOOT)
+			of_partitions_register_fixup(&part->blk.cdev);
 	}
 
 	return 0;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

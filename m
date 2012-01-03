Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ri09w-0001WN-Ki
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 08:55:53 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ri09r-0006g8-GI
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 09:55:47 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1Ri09r-0006zO-Ec
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 09:55:47 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue,  3 Jan 2012 09:55:34 +0100
Message-Id: <1325580934-26295-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325580934-26295-1-git-send-email-jbe@pengutronix.de>
References: <1325580934-26295-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] MTD/NAND/S3C: re-add change due to API change
To: barebox@lists.infradead.org

Commit 88ce7ef769de0306dd3c3eac98d437a92bed2ce9 has changed the API and commit
b29b8f43d56b62e406349a5cf1ed56f17454c1f7 has moved the S3C24xx NAND driver
file. With the move the API change in the S3C24xx NAND driver was lost.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mtd/nand/nand_s3c24xx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index c4fd13e..e55aef0 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -485,7 +485,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	return add_mtd_device(mtd);
+	return add_mtd_device(mtd, "nand");
 
 on_error:
 	free(host);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gArU5-0005dm-I1
 for barebox@lists.infradead.org; Fri, 12 Oct 2018 07:03:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Oct 2018 09:03:27 +0200
Message-Id: <20181012070327.12143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] environment: bypass overlap check for mtd devices
To: Barebox List <barebox@lists.infradead.org>
Cc: Ladislav Michl <ladis@linux-mips.org>

For mtd devices the overlap check does not work as expected for two
reasons. First is that cdev->offset is 0 for mtd partitions, instead
cdev->mtd->master_offset has to be used. That could be fixed easily.
Second on NAND devices the environment is on the bb devices and not
on the raw nand devices which means we would need something to get
the mtd device from the bb device before doing the check.

Both issues are fixable, but the check was mainly done to catch cases
when an environment partition is created in the free space before the
first MBR/GPT partition on SD/MMC devices, so leave out the mtd case
for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index 5793ea28ac..28edee4fce 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -91,6 +91,9 @@ static int check_overlap(const char *path)
 	if (!cenv)
 		return -EINVAL;
 
+	if (cenv->mtd)
+		return 0;
+
 	cdisk = cenv->master;
 
 	if (!cdisk)
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

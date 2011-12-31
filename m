Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RgyZT-0006tU-Nr
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 13:02:01 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D5C75DC35FA
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 14:02:50 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 13:56:04 +0100
Message-Id: <1325336164-25760-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] mtd/core.c: fix MTDPGALG
To: barebox@lists.infradead.org

introduced in commit f76ad819e4971094
drivers/mtd: cosmetic changes

it's supposed to the invert of the writesize - 1

Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	Robert please test more carefully next time

	I spend time to debug this while working on at91 nand boot :(

Best Regards,
J.
 drivers/mtd/core.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 55d845d..f25863d 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -49,7 +49,7 @@ static 	ssize_t mtd_read(struct cdev *cdev, void* buf, size_t count,
 }
 
 #define NOTALIGNED(x) (x & (mtd->writesize - 1)) != 0
-#define MTDPGALG(x) ((x) & (mtd->writesize - 1))
+#define MTDPGALG(x) ((x) & ~(mtd->writesize - 1))
 
 #ifdef CONFIG_MTD_WRITE
 static int all_ff(const void *buf, int len)
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

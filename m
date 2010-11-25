Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f67.google.com ([209.85.161.67])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PLb6r-0003KF-41
	for barebox@lists.infradead.org; Thu, 25 Nov 2010 12:39:34 +0000
Received: by fxm10 with SMTP id 10so25238fxm.6
	for <barebox@lists.infradead.org>; Thu, 25 Nov 2010 04:39:31 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 25 Nov 2010 13:41:43 +0100
Message-Id: <1290688903-24955-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH] drivers: mci: Fix compilation warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Fix compilation warning:
drivers/mci/mci-core.c:1002:
warning: comparison of distinct pointer types lacks a cast

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/mci/mci-core.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a8aa486..bc82201 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -999,7 +999,7 @@ static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
 	}
 
 	while (sector_count) {
-		int now = min(sector_count, 32);
+		int now = min(sector_count, (unsigned) 32);
 		if (sector_start > MAX_BUFFER_NUMBER) {
 			pr_err("Cannot handle block number %lu. Too large!\n",
 				(unsigned)sector_start);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

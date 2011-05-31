Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QRQOK-0005St-OS
	for barebox@lists.infradead.org; Tue, 31 May 2011 14:58:00 +0000
Received: by wwb39 with SMTP id 39so3899340wwb.18
	for <barebox@lists.infradead.org>; Tue, 31 May 2011 07:57:53 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 31 May 2011 16:57:37 +0200
Message-Id: <1306853857-23946-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] mci-core: add missing newline in debug message
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/mci/mci-core.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a06c997..1c16cf1 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -957,7 +957,7 @@ static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start,
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	int rc;
 
-	pr_debug("%s: Write %u block(s), starting at %u",
+	pr_debug("%s: Write %u block(s), starting at %u\n",
 		__func__, sector_count, (unsigned)sector_start);
 
 	if (mci->write_bl_len != 512) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

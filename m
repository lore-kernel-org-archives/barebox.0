Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RERoQ-0002Gn-HY
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 20:23:31 +0000
Received: by mail-ey0-f177.google.com with SMTP id 3so572175eye.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 13:23:30 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 13 Oct 2011 22:23:10 +0200
Message-Id: <1318537394-8555-4-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
References: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 4/8] mci:s3c: Fix shadow name sparse warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

warnings:
drivers/mci/s3c.c:215:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:242:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:258:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:312:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:342:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:368:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:391:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:453:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:498:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:554:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:629:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:688:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here
drivers/mci/s3c.c:719:22: warning: symbol 'host_data' shadows an earlier one
drivers/mci/s3c.c:166:28: originally declared here

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/mci/s3c.c |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 15defe7..b03d7d7 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -163,7 +163,7 @@ struct s3c_mci_host {
  * There is only one host MCI hardware instance available.
  * It makes no sense to dynamically allocate this data
  */
-static struct s3c_mci_host host_data;
+static struct s3c_mci_host host_pdata;
 
 /**
  * Finish a request
@@ -794,8 +794,8 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 		return -EINVAL;
 	}
 
-	hw_dev->priv = &host_data;
-	host_data.base = dev_request_mem_region(hw_dev, 0);
+	hw_dev->priv = &host_pdata;
+	host_pdata.base = dev_request_mem_region(hw_dev, 0);
 	mci_pdata.hw_dev = hw_dev;
 
 	/* feed forward the platform specific values */
@@ -807,8 +807,8 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 	/*
 	 * Start the clock to let the engine and the card finishes its startup
 	 */
-	host_data.clock = s3c_setup_clock_speed(hw_dev, mci_pdata.f_min);
-	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, host_data.base + SDICON);
+	host_pdata.clock = s3c_setup_clock_speed(hw_dev, mci_pdata.f_min);
+	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, host_pdata.base + SDICON);
 
 	return mci_register(&mci_pdata);
 }
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

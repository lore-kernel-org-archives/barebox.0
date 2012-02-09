Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvU7G-0006Y4-Qj
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:32:53 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RvU7A-0000XD-5u
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 14:32:44 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RvU7A-0001cF-4o
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 14:32:44 +0100
Date: Thu, 9 Feb 2012 14:32:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120209133244.GY3852@pengutronix.de>
References: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
 <1328788438-19717-16-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1328788438-19717-16-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 15/15] mci: Be more verbose on what device is associated
 to which disk
To: barebox@lists.infradead.org

On Thu, Feb 09, 2012 at 12:53:58PM +0100, Sascha Hauer wrote:
> This is quite useful when multiple SD cards are present so spare
> some bytes to print this information.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/mci-core.c |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index c39faf3..17a6656 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1300,6 +1300,8 @@ static int mci_card_probe(struct mci *mci)
>  		goto on_error;
>  	}
>  
> +	dev_info(mci->mci_dev, "registered disk%d\n", rc);


This doesn't work. With this we will print the return value of
blockdevice_register().

Here is an updated patch.

Sascha

8<------------------------------------

mci: Be more verbose on what device is associated to which  disk

This is quite useful when multiple SD cards are present so spare
some bytes to print this information.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |   10 +++++++---
 1 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c39faf3..c6e8669 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1241,7 +1241,7 @@ static struct block_device_ops mci_ops = {
 static int mci_card_probe(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	int rc;
+	int rc, disknum;
 
 	/* start with a host interface reset */
 	rc = (host->init)(host, mci->mci_dev);
@@ -1288,9 +1288,9 @@ static int mci_card_probe(struct mci *mci)
 	mci->blk.dev = mci->mci_dev;
 	mci->blk.ops = &mci_ops;
 
-	rc = cdev_find_free_index("disk");
+	disknum = cdev_find_free_index("disk");
 
-	mci->blk.cdev.name = asprintf("disk%d", rc);
+	mci->blk.cdev.name = asprintf("disk%d", disknum);
 	mci->blk.blockbits = SECTOR_SHIFT;
 	mci->blk.num_blocks = mci_calc_blk_cnt(mci->capacity, mci->blk.blockbits);
 
@@ -1300,6 +1300,8 @@ static int mci_card_probe(struct mci *mci)
 		goto on_error;
 	}
 
+	dev_info(mci->mci_dev, "registered disk%d\n", disknum);
+
 	/* create partitions on demand */
 	rc = parse_partition_table(&mci->blk);
 	if (rc != 0) {
@@ -1382,6 +1384,8 @@ static int mci_probe(struct device_d *mci_dev)
 	mci->mci_dev = mci_dev;
 	mci->host = mci_dev->platform_data;
 
+	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(mci_dev));
+
 #ifdef CONFIG_MCI_STARTUP
 	/* if enabled, probe the attached card immediately */
 	rc = mci_card_probe(mci);
-- 
1.7.9

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

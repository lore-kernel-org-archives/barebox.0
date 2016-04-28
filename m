Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avkYY-0003C3-AS
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 11:56:30 +0000
Received: by mail-wm0-x243.google.com with SMTP id e201so22639285wme.2
 for <barebox@lists.infradead.org>; Thu, 28 Apr 2016 04:56:09 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <20160428083449.GB7860@pengutronix.de> (Sascha Hauer's message of
 "Thu, 28 Apr 2016 10:34:49 +0200")
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
 <1461751489-13302-9-git-send-email-s.christ@phytec.de>
 <20160428083449.GB7860@pengutronix.de>
Date: Thu, 28 Apr 2016 13:56:05 +0200
Message-ID: <87a8ke9cbu.fsf@gmail.com>
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
Subject: Re: [PATCH for next 08/15] ARM: phytec-som-imx6: add boot device emmc
 and automount
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> Does this work reliably? Is there finally a patch upstream that creates
> fixed numbers for MMC/SD block devices?

I have a *hack* that in my kernel that names the SD-Card to "sdblk0" and
my eMMC to "mmcblk0". That that is completely unacceptable for upstream,
I never even tried it. :-)


Index: linux-4.3/drivers/mmc/card/block.c
===================================================================
--- linux-4.3.orig/drivers/mmc/card/block.c	2015-12-09 17:17:57.264650273 +0100
+++ linux-4.3/drivers/mmc/card/block.c	2015-12-10 08:46:41.874985403 +0100
@@ -2259,14 +2259,16 @@ static struct mmc_blk_data *mmc_blk_allo
 	 * messages to tell when the card is present.
 	 */
 
-	snprintf(md->disk->disk_name, sizeof(md->disk->disk_name),
-		 "mmcblk%u%s", md->name_idx, subname ? subname : "");
-
-	if (mmc_card_mmc(card))
+	if (mmc_card_mmc(card)) {
+		snprintf(md->disk->disk_name, sizeof(md->disk->disk_name),
+			 "mmcblk0%s", subname ? subname : "");
 		blk_queue_logical_block_size(md->queue.queue,
 					     card->ext_csd.data_sector_size);
-	else
+	} else {
+		snprintf(md->disk->disk_name, sizeof(md->disk->disk_name),
+			 "sdblk0%s", subname ? subname : "");
 		blk_queue_logical_block_size(md->queue.queue, 512);
+	}
 
 	set_capacity(md->disk, size);
 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

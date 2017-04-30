Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d4pB9-0008VK-Cg
 for barebox@lists.infradead.org; Sun, 30 Apr 2017 13:46:25 +0000
Received: by mail-wr0-x241.google.com with SMTP id w50so11657781wrc.0
 for <barebox@lists.infradead.org>; Sun, 30 Apr 2017 06:46:00 -0700 (PDT)
Received: from mars.fritz.box
 (HSI-KBW-109-193-021-110.hsi7.kabel-badenwuerttemberg.de. [109.193.21.110])
 by smtp.gmail.com with ESMTPSA id y63sm10707384wme.31.2017.04.30.06.45.58
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 30 Apr 2017 06:45:58 -0700 (PDT)
Message-ID: <1493559958.1977.38.camel@googlemail.com>
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Sun, 30 Apr 2017 15:45:58 +0200
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mci: be more verbose about wrong bus-width
To: barebox@lists.infradead.org

If configured or default bus-width is wrong for the current hardware,
registration of card/emmc is likely to fail.  This patch adds more verbosity
in the case of a failed detection:

    | omap-hsmmc 48060000.mmc: registered as 48060000.mmc
    | mmc0: detected MMC card version 4.41
    | mmc0: Changing MMC bus width failed: -110
    | mmc0: Card's startup fails with -110

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/mci/mci-core.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b173a17..3da1c26 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -984,7 +984,7 @@ static int mci_startup_sd(struct mci *mci)
 		mci_setup_cmd(&cmd, SD_CMD_APP_SET_BUS_WIDTH, 2, MMC_RSP_R1);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
-			dev_dbg(&mci->dev, "Changing SD bus width failed: %d\n", err);
+			dev_warn(&mci->dev, "Changing SD bus width failed: %d\n", err);
 			/* TODO continue with 1 bit? */
 			return err;
 		}
@@ -1041,8 +1041,11 @@ static int mci_startup_mmc(struct mci *mci)
 		err = mci_switch(mci, EXT_CSD_CMD_SET_NORMAL,
 				 EXT_CSD_BUS_WIDTH,
 				 ext_csd_bits[idx]);
-		if (err)
+		if (err) {
+			if (idx == 0)
+				dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", err);
 			continue;
+		}
 
 		mci_set_bus_width(mci, bus_widths[idx]);
 
@@ -1051,7 +1054,7 @@ static int mci_startup_mmc(struct mci *mci)
 			break;
 	}
 
-	return 0;
+	return err;
 }
 
 /**
@@ -1693,7 +1696,7 @@ static int mci_card_probe(struct mci *mci)
 
 	rc = mci_startup(mci);
 	if (rc) {
-		dev_dbg(&mci->dev, "Card's startup fails with %d\n", rc);
+		dev_warn(&mci->dev, "Card's startup fails with %d\n", rc);
 		goto on_error;
 	}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

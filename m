Delivery-date: Tue, 04 Oct 2022 18:02:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkNY-005iTE-2f
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 18:02:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkNW-0007pC-VP
	for lore@pengutronix.de; Tue, 04 Oct 2022 18:02:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oeOu2EgpjaXVheHOMhNzLkJRwHlIC4rwQUJYUfjlNvQ=; b=xxeIRV6m2ZXWzB42uDQa7VXYcW
	puuAJYZDgxGUEcLz97Sn10UerqXyYRftx9WXjTz6EM+fAtuBMZRiB+aZZ6nR4XIMBdTzMBA5hT6dY
	GaZk333FEkdbPVbbZcaWzJYv2qmLh1yncD8ez6iwJT1q7s46TsRLGjG0afQ+TT08PkzocbBOUMcd0
	LS4XjJFwv0qAPk3qjZ0JZ2WcsCwan8tzJ83qGEMtJD2aMp64tf9+8Lo4ecFXg5tntCKjf5ZDRX17+
	CnprxIU3ItMb/kk94n8yy9Fm2CUF0PuyvI33xYFgZ6k+PcB1fmjwqgNoUbBnG2kF+V1crrdT9xXSG
	rKVGv6ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkME-00A9tE-SF; Tue, 04 Oct 2022 16:01:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkMA-00A9si-C3
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 16:01:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkM8-0007Oi-Gy; Tue, 04 Oct 2022 18:01:16 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkM9-004an1-AO; Tue, 04 Oct 2022 18:01:15 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkM6-001lJy-D7; Tue, 04 Oct 2022 18:01:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 18:01:12 +0200
Message-Id: <20221004160112.183814-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_090118_430853_15C16651 
X-CRM114-Status: GOOD (  10.62  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Revert "mci: bcm2835: reset host controller on barebox shutdown"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The patch is wrong and issue is still reproducible with it. We have no
alternate fix yet, but drop the non-functional fix until we do.

This reverts commit c7428c02d72d1c74295226e7c9483e0f62f6a2aa.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Issue is spurious, which suggests to me that it's related to:
https://patchwork.kernel.org/project/linux-arm-kernel/patch/1495126660-25044-1-git-send-email-srinath.mannam@broadcom.com/#20487621

Haven't found a proper solution yet though.
---
 drivers/mci/mci-bcm2835.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index c5b226ba033c..f092156f9a83 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -385,8 +385,6 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	host->sdhci.read32 = bcm2835_sdhci_read32;
 	host->sdhci.write32 = bcm2835_sdhci_write32;
 
-	hw_dev->priv = host;
-
 	mci_of_parse(&host->mci);
 
 	iores = dev_request_mem_resource(hw_dev, 0);
@@ -422,15 +420,6 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	return mci_register(&host->mci);
 }
 
-static void bcm2835_mci_remove(struct device_d *dev)
-{
-	struct bcm2835_mci_host *host = dev->priv;
-
-	sdhci_write32(&host->sdhci,
-		      SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
-		      0x00);
-}
-
 static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
 	{
 		.compatible = "brcm,bcm2835-sdhci",
@@ -444,7 +433,6 @@ static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
 static struct driver_d bcm2835_mci_driver = {
 	.name = "bcm2835_mci",
 	.probe = bcm2835_mci_probe,
-	.remove = bcm2835_mci_remove,
 	.of_compatible = DRV_OF_COMPAT(bcm2835_mci_compatible),
 };
 
-- 
2.30.2




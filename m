Delivery-date: Fri, 30 Sep 2022 13:21:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeE5Y-001Mxf-Ki
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 13:21:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeE5X-00040b-NC
	for lore@pengutronix.de; Fri, 30 Sep 2022 13:21:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T/Z1VP5lxQSVpiLFBotiEpEuNq1gLjBtfMPuqFnrhdk=; b=1GoWtfKlwKgCnpo3dgBe7azlt7
	Ge56DdS92YEA1+OwKNdd3HIwElhFmSiTyNQ+vORHjnfgTdOXja7aHH9mEEDB2BxcSRg3LSh0AnOqI
	krc51/YDPIbxZ6N0IXsIUz/tnuq178otBPs6iAS35ObkxWHtG5BoyfW5C9GSO4LQV1tprmIL2IaMN
	EblKE/TcHFq6FqmUQdZ8ZXLaAndHHBTQV8rr59Kp/TJ4pb8fqRcjlfL4NUxFPEVd+I/feV5R5fnBA
	MDNtkVb/z+e0AwJMouDMbnoX2fcnA/CvTbvd9IZDArZNRHR3RsQjbzK6x98FLLdwN5yS6Y+BqNwzF
	AKqv8ZCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeE3h-008oJ6-F5; Fri, 30 Sep 2022 11:19:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeE3Z-008oDC-Lw
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 11:19:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeE3S-0003Lj-Vl; Fri, 30 Sep 2022 13:19:43 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeE3T-003n1W-Ow; Fri, 30 Sep 2022 13:19:42 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeE3R-005YHF-LN; Fri, 30 Sep 2022 13:19:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 13:19:40 +0200
Message-Id: <20220930111940.1323140-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_041949_740292_B5EF7DA9 
X-CRM114-Status: GOOD (  10.58  )
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
Subject: [PATCH master] mci: bcm2835: reset host controller on barebox shutdown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't usually disable MMC controllers on barebox shutdown, because
they don't DMA on their own, unlike e.g. network controllers.

Booting Linux v5.17.0 on a Raspberry Pi 4 in 32-bit mode still has the
MMC host controller driver complain:

  [   22.464887] mmc1: Got data interrupt 0x00000002 even though no
  			data operation was in progress.

Fix this by resetting the SDHCI once barebox is done with it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index f092156f9a83..c5b226ba033c 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -385,6 +385,8 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	host->sdhci.read32 = bcm2835_sdhci_read32;
 	host->sdhci.write32 = bcm2835_sdhci_write32;
 
+	hw_dev->priv = host;
+
 	mci_of_parse(&host->mci);
 
 	iores = dev_request_mem_resource(hw_dev, 0);
@@ -420,6 +422,15 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	return mci_register(&host->mci);
 }
 
+static void bcm2835_mci_remove(struct device_d *dev)
+{
+	struct bcm2835_mci_host *host = dev->priv;
+
+	sdhci_write32(&host->sdhci,
+		      SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+		      0x00);
+}
+
 static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
 	{
 		.compatible = "brcm,bcm2835-sdhci",
@@ -433,6 +444,7 @@ static __maybe_unused struct of_device_id bcm2835_mci_compatible[] = {
 static struct driver_d bcm2835_mci_driver = {
 	.name = "bcm2835_mci",
 	.probe = bcm2835_mci_probe,
+	.remove = bcm2835_mci_remove,
 	.of_compatible = DRV_OF_COMPAT(bcm2835_mci_compatible),
 };
 
-- 
2.30.2




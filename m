Delivery-date: Wed, 19 May 2021 09:40:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljGoQ-0003eC-TW
	for lore@lore.pengutronix.de; Wed, 19 May 2021 09:40:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljGoQ-0003hy-1Z
	for lore@pengutronix.de; Wed, 19 May 2021 09:40:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n7lvh8v4BE4ExkOqAQ4W6+8OV3CFpNUImwxCGo4jCdo=; b=X/nmVkiMbA+EAkcG7DxGADLSb
	jbrVy06KYPuvutCAEjlvI+36cfeeuIL8ODsxcOg4CNhkJW3wFpKeTEg69tQoRmE4juu5TCREmC+74
	R+Oxd0xjGkoIiFvj74+SdI3jwrf/iqMfXe5AAzCAtRniXYCvgAigzIFcUV8ibodQL0h/fbtfdzW2y
	U/lmYJ0Dql2PUD8LpQFR5FJ3jxdDL7uOyV1uJ68aci6jTOUkdZ7mQyiC/1tjJnH7JOJ81G+LIsciZ
	eEkVQWcdB78bzCH1wyzd3u7KdOyKyKFEGTRwc0jrHY06G8aUHXUb19N3hLUj6OpnifpRzqlq8pYLb
	qXiV/BrDQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljGnO-003Chm-4C; Wed, 19 May 2021 07:39:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljGnH-003ChB-KP
 for barebox@desiato.infradead.org; Wed, 19 May 2021 07:39:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=f+4AjKzCqonVSvat6x2XtJaFPSZoZkZBfwS7ArmdR84=; b=ItX0XaTDXmQbqzVY/WCFNUYiN0
 cfmFukg0UxTTDf8EfouNJ29/i7MEdAdNn05qSEs1YEZeBozUcBinZZcswF7oH44dHktdwcQax70SN
 rtJzWzGNWSN/6OwbnC1X8MkGxvozjdJIX6URctGCKjNN/bLJuV0CkV4V+tnV29O+GX5jO3Eg2LH5R
 oc1P3VdElWCCxPOVSDT0/rcU7PoMHUDJORcnpZkelopqPsMNi9a8v0VXhLi/VKJBtIGSUNfUsmrLd
 v4l+kiciNqHiplpqANX5ETuJ9xAsraoSVjGZ/oHDfNWebq06m4QJDjWh5do5/IScTF3Jl+gVihX05
 PpSyQl7Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljGnE-00FE46-Bs
 for barebox@lists.infradead.org; Wed, 19 May 2021 07:39:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ljGnA-0003bR-Lo; Wed, 19 May 2021 09:38:56 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ljGn9-000192-Pf; Wed, 19 May 2021 09:38:55 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ljGn9-00BWx9-Mt; Wed, 19 May 2021 09:38:55 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: barebox@lists.infradead.org,
	m.tretter@pengutronix.de
Date: Wed, 19 May 2021 09:38:55 +0200
Message-Id: <20210519073855.2748231-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210519073855.2748231-1-m.tretter@pengutronix.de>
References: <AM9P192MB0870DC1573A4088BB839A208AB2C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <20210519073855.2748231-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_003900_426920_4E6006AB 
X-CRM114-Status: GOOD (  11.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mci: arasan: configure data transfer only if we actually
 have data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If we don't have any data to transfer, we must not set the block size
and block count.

If data is NULL, accessing data to get the block size and block count is
a NULL pointer dereference.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 399966e8cf10..3d738774e825 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -283,10 +283,12 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);
 
 	sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, TIMEOUT_VAL);
-	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
-	sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
-			    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
-	sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
+	if (data) {
+		sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, xfer);
+		sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE,
+			      SDHCI_DMA_BOUNDARY_512K | SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
+		sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
+	}
 	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 	sdhci_write16(&host->sdhci, SDHCI_COMMAND, command);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


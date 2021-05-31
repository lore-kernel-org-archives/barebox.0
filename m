Delivery-date: Mon, 31 May 2021 09:39:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncWl-0003A5-1W
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:39:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncWj-0000Cl-Ol
	for lore@pengutronix.de; Mon, 31 May 2021 09:39:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ei6G4VwBDSe3YvPrcxZlgvJT2EWGs8+F4yG8y41cUzE=; b=ZUAQksixxIv8UE
	d0i6vgRS3iekrKSf6bK1qw/WN7CAawMQ8orSESwV2zHV7LOuuAHft/9/cXLnU4v/WxyXZr18SXuP5
	xrLDPVxH1p14YXjgY9ySjq5+i14Wnip7K8mJvEOP3Uo4FTA1qbXJ9EtyygD9KVOIZgTi4V88RN8Pl
	GEDTCJ/VuHFxnCJoYetk7EjTXBtXcZ9EJI0AIig4gPPctAZnB7WK53KNvp/9RTkTLFwY1mf/K/mOZ
	tSdiQUZ1sE9aqoGCG2aYxew5HQhGH1rg9uR5FDSZ4u7jYaGRLZegVVP1RxPwJ6lSB3akSv2OmGc8c
	Lo7+JV5GQJYpHEgQ876A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncVY-00BClJ-N0; Mon, 31 May 2021 07:38:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVF-00BCcp-SZ
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080O-GC; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-00046B-3q; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:14 +0200
Message-Id: <20210531073821.15257-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003825_964090_7DC8F93C 
X-CRM114-Status: GOOD (  12.64  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/20] mci: allocate sector_buf on demand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The MCI core uses a common bounce buffer for unaligned block
reads/writes as well as sd_change_freq. This buffer is allocated at
device initcall level, same as the MMC drivers themselves.

For CONFIG_MCI_STARTUP=y configurations this seems to imply that
sd_change_freq could attempt writing the NULL page. Avoid this
by just allocating the buffer when the first MMC device is registered.

This doesn't solve all issues; so add a comment noting that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 70a8b971ca6d..196fecdbd090 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1789,6 +1789,11 @@ static int mci_card_probe(struct mci *mci)
 		mci->cdevname = basprintf("disk%d", disknum);
 	}
 
+	if (!sector_buf)
+		sector_buf = dma_alloc(SECTOR_SIZE);
+
+	/* FIXME we don't check sector_buf against the device dma mask here */
+
 	rc = mci_startup(mci);
 	if (rc) {
 		dev_warn(&mci->dev, "Card's startup fails with %d\n", rc);
@@ -1850,15 +1855,6 @@ static int mci_set_probe(struct param_d *param, void *priv)
 	return 0;
 }
 
-static int mci_init(void)
-{
-	sector_buf = dma_alloc(SECTOR_SIZE);
-
-	return 0;
-}
-
-device_initcall(mci_init);
-
 int mci_detect_card(struct mci_host *host)
 {
 	int rc;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


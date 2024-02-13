Delivery-date: Tue, 13 Feb 2024 11:02:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZpck-004etb-0g
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 11:02:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZpce-0000Dy-79
	for lore@pengutronix.de; Tue, 13 Feb 2024 11:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HVNN5HCuMmllm06gkbcQSmlf2VLjeJOXGdi6PKcE7ZI=; b=qs4YyKy7qwY1ng4NZygx3uXL7S
	xJA5GOIrsBR+H6Q5kCZMTx4BRoEut1YVcbzPJslMONQ+1yNFQlAVGvY2RYudNTjaGwYPLPfLCvoNs
	bp5S6BUn4aBi/Zy4bDRtz+gWQPHltUHvevR1nSUyN9s/UWoxBEga/2xuTNFCvj3yfohpbNQeSgw/r
	sGnKVQprfKKK2Q628jTuHcpf4hKKi5D/XH/g3mTluEpVWCq9+QdI0H67dWvSmeCTfgZxBoJYeQmd/
	gFqMNeLGNqQEBMwYNJwC1lVYrL3zl2pMI+VscMni345Rsop++E5J5WXRDbIYfTk8/osxKk1OPLhf0
	k6eeaxMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZpbr-00000008k7X-2DOQ;
	Tue, 13 Feb 2024 10:01:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZpbo-00000008k5q-3tRz
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 10:01:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZpbn-0008Nu-Om; Tue, 13 Feb 2024 11:01:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZpbn-000SJP-CI; Tue, 13 Feb 2024 11:01:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZpbn-00BeyL-0x;
	Tue, 13 Feb 2024 11:01:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Feb 2024 11:01:46 +0100
Message-Id: <20240213100146.2778891-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240213100146.2778891-1-a.fatoum@pengutronix.de>
References: <20240213100146.2778891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_020149_001833_AF312016 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] mci: atmel_mci: mark atmci_setup_data very verbose debug print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

setup_data is called prior to every transfer and will print the number
of blocks and the block size. With CONFIG_DEBUG_PBL it will be enabled,
but doesn't really add much information. Lower it to verbose debug level
instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel_mci_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/atmel_mci_common.c b/drivers/mci/atmel_mci_common.c
index 68110c04b096..098e90503a3a 100644
--- a/drivers/mci/atmel_mci_common.c
+++ b/drivers/mci/atmel_mci_common.c
@@ -220,7 +220,7 @@ static void atmci_setup_data(struct atmel_mci *host, struct mci_data *data)
 
 	host->data = data;
 
-	dev_dbg(host->hw_dev, "atmel_setup_data: nob=%d blksz=%d\n",
+	dev_vdbg(host->hw_dev, "atmel_setup_data: nob=%d blksz=%d\n",
 		nob, blksz);
 
 	atmci_writel(host, ATMCI_BLKR, ATMCI_BCNT(nob)
-- 
2.39.2




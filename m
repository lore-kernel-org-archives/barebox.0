Delivery-date: Wed, 29 Nov 2023 07:19:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Dv0-00CvJ5-0a
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:19:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Dv0-0003CM-79
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:19:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P/ggE9Ln+zcZtK1QMausZM0sLWg/4QvNbaqJ3hgTHCk=; b=Nz0O6EmryPKTzLwWHnrsqdBtVG
	u2sTkyBEUbCBmNYleNAsuB9DF1YQy6s9SkRoaJMNBYyeDkEgdSsNA12QiEgBIhbXa9Ok9SDOl9oKe
	rB950K0EOcLkjDThIZ8MWJP+ZfukPeFhjwRkVxQZWawRdkhvlL2EWZch+NG4x5u3AH5FWnFL4FwzM
	mBrRMZH/T2kblyy+tATArKel72kXH4dCUANgSZmi6Cz141rHErgFWCSrlKMzCfh9PQXm72Kdq2zfD
	/ssF4feQlA+LHBEmdMc+F2OSjFcz15ido/LbDWvIxH5SA1IFftRsQyykmtq0TGU5MyrIug0biRagw
	KNSZRDug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dth-007CNR-0v;
	Wed, 29 Nov 2023 06:18:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dte-007CM6-0M
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:18:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-0002qx-PR; Wed, 29 Nov 2023 07:18:04 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-00CLQY-CX; Wed, 29 Nov 2023 07:18:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-007Tac-0y;
	Wed, 29 Nov 2023 07:18:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	str@pengutronix.de,
	lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Nov 2023 07:17:57 +0100
Message-Id: <20231129061758.1781732-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
References: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_221806_150622_40029239 
X-CRM114-Status: GOOD (  10.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] mci: core: remove broken, unneeded write bounce buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci_block_write uses a 512-byte long bounce buffer if the src argument
is not 4-byte aligned. This can never happen as src is the address of a
block cache chunk, which is always aligned for DMA, which is always a
multiple of 4 bytes. Furthermore, the bounce buffer is just a single
sector and the function may write multiple blocks resulting in
out-of-bounds read if that code hadn't been dead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 07eca96a9d61..280d08eb6253 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -218,7 +218,6 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 {
 	struct mci_cmd cmd;
 	struct mci_data data;
-	const void *buf;
 	unsigned mmccmd;
 	int ret;
 
@@ -238,19 +237,12 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 	else
 		mmccmd = MMC_CMD_WRITE_SINGLE_BLOCK;
 
-	if ((unsigned long)src & 0x3) {
-		memcpy(sector_buf, src, SECTOR_SIZE);
-		buf = sector_buf;
-	} else {
-		buf = src;
-	}
-
 	mci_setup_cmd(&cmd,
 		mmccmd,
 		mci->high_capacity != 0 ? blocknum : blocknum * mci->write_bl_len,
 		MMC_RSP_R1);
 
-	data.src = buf;
+	data.src = src;
 	data.blocks = blocks;
 	data.blocksize = mci->write_bl_len;
 	data.flags = MMC_DATA_WRITE;
-- 
2.39.2




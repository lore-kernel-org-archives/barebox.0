Delivery-date: Thu, 29 Feb 2024 17:24:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfjCU-00GFBr-2v
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 17:24:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfjCU-0000IH-Aq
	for lore@pengutronix.de; Thu, 29 Feb 2024 17:24:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tUyM5Kr27Q3kxKg61sy5pUL4OeSUvR+W+TlHQAY1sXY=; b=M+yg2wTGskBTGPrM+e/2DCDdSa
	VA1ziVhu0Z/8hkgS21o1lDt9q4AZWJaPCTqQN+gfBWfiP9JQ57eGCmo1GQiMdRzKQ5AkTm+eb9dvi
	98ixZPauwEOwADMSKCaIy8q9LH8EzVLDhLRyICCnJ9lAuWpMqXX/U9c0VooRWTzwjfR+lF2NMldvq
	pnYeysrkvzbbppSuuP+5E+fzssyw1ZdJ9io/h1CUbcOcg21RpaVgAJWbPJiULmTTEpM66htcf53QZ
	xFZGH1BWyy08msnRscfaNok5Tn7FiHhcOMea/Ac1/G/3XoOBf/yNJYq3jzX9OWDuowy8H/v/eldnA
	05L0NPqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfjC1-0000000EHBQ-3Aen;
	Thu, 29 Feb 2024 16:23:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfjBy-0000000EHAp-24LT
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 16:23:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfjBx-00006W-Aa; Thu, 29 Feb 2024 17:23:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfjBw-003cfI-UW; Thu, 29 Feb 2024 17:23:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfjBw-006D5J-17;
	Thu, 29 Feb 2024 17:23:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Feb 2024 17:23:23 +0100
Message-Id: <20240229162322.1480141-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_082330_553259_E56B7F94 
X-CRM114-Status: GOOD (  15.69  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] mtd: don't try to detect UBI in too small flash partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The detect callback will try to detect an UBI volume inside a partition.

This can misbehave for partitions without UBI:

  - For partitions smaller than 512 bytes, detect fails with -EINVAL,
    because it wasn't possible to read as much

  - For partitions smaller than 64 PEBs, detect will erroneously do
    64 lookups and attempt reading beyond the partition

  - For partition bigger than 64 PEBs, but without UBI, detect will
    read 512 bytes off each PEB without ever finding the UBI.

Fix this by not attempting to read more PEBs than they are and ensure
that there at least 5 PEBs, because anything lower wouldn't account for
UBI overhead[1].

[1]: http://www.linux-mtd.infradead.org/doc/ubi.html#L_overhead

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - change minimum PEB count to 5 instead of 1 (Sascha)
  - change erroneous max() to min() (Sascha)
  - reword commit message to avoid confusion around 512 byte read
    (Sascha)

---
 drivers/mtd/core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 97a7996cf68e..ec2c3ff7bb41 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -599,7 +599,10 @@ static int mtd_detect(struct device *dev)
 	enum filetype filetype;
 	int npebs = mtd_div_by_eb(mtd->size, mtd);
 
-	npebs = max(npebs, 64);
+	/* No point in looking for UBI on a partition that's too small */
+	npebs = min(npebs, 64);
+	if (npebs < 5)
+		return 0;
 
 	/*
 	 * Do not try to attach an UBI device if this device has partitions
-- 
2.39.2




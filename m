Delivery-date: Thu, 29 Feb 2024 08:18:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfagy-00Exda-0A
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 08:18:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfagx-00071c-Fx
	for lore@pengutronix.de; Thu, 29 Feb 2024 08:18:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LSQJKd5ZPpcszDf3F+wkHmM5uyefbSVOWjVQ+H+CEHw=; b=fR8QOmG38DXQuvan3N85BBagdz
	yB/TApjM1AbbK0IOGF15rbnwSWUNVM/MS+/CNIcsN1LcaOi+enh5HuJjpG7I1ntpr+/R5iyp6L85G
	wKgH/sCu6FtmpzjnmspsY5l5ZzcWn5l/+q/sOZA88f4cRukAA7ZCWln5IdqfIL9O3M8yg1lIZJKPo
	l9ut84hjdQh3r0pwgfdJu6GKXXSS8V6lwrbpJOUarM/H1e7Olqpw/YLztrgXGOAReSni6hnR2cBZq
	0mRK0nYKd8tlGGN99DXhBRtr19/8kybWZaLN/D7V2BBkvAdJ7LiqribqNzysE7PdZcfhgOrp2C5Oi
	KJTJ5iPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfagb-0000000CRE5-1TxN;
	Thu, 29 Feb 2024 07:18:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfagW-0000000CRCT-3pD7
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 07:18:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfagV-0006un-Q9; Thu, 29 Feb 2024 08:18:27 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfagV-003Xlj-Dp; Thu, 29 Feb 2024 08:18:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfagV-006oaN-13;
	Thu, 29 Feb 2024 08:18:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 29 Feb 2024 08:18:25 +0100
Message-Id: <20240229071825.1624411-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240229071825.1624411-1-s.hauer@pengutronix.de>
References: <20240229071825.1624411-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_231828_971763_9B4AD453 
X-CRM114-Status: GOOD (  11.90  )
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
Subject: [PATCH v2 2/2] partitions: dos: change first partition number from 1 to 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Traditionally barebox starts partition numbers at 0. This was changed
in 8f48e6366c to start at 1. This was done to make the parted numbering
consistent to the Linux tool. This breaks boot scripts though which
assume 0 to be the first partition, so change it back.

Fixes: 8f48e6366c ("partitions: dos: implement partition manipulation support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v1:
    
    - fix partuuid number passed to Linux

 common/partitions/dos.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 47b5764124..1b0051f978 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -127,7 +127,7 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
 	uint8_t *buf = malloc(SECTOR_SIZE);
 	uint32_t ebr_sector = partition->first_sec;
 	struct partition_entry *table = (struct partition_entry *)&buf[0x1be];
-	unsigned partno = 5;
+	unsigned partno = 4;
 	struct dos_partition *dpart;
 	struct partition *pentry;
 
@@ -170,7 +170,7 @@ static void dos_extended_partition(struct block_device *blk, struct dos_partitio
 		pentry->size = get_unaligned_le32(&table[0].partition_size);
 		pentry->dos_partition_type = table[0].type;
 		pentry->num = partno;
-		sprintf(pentry->partuuid, "%08x-%02u", signature, partno);
+		sprintf(pentry->partuuid, "%08x-%02u", signature, partno + 1);
 
 		list_add_tail(&pentry->list, &dpd->pd.partitions);
 
@@ -237,7 +237,7 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 		pentry->first_sec = first_sec;
 		pentry->size = get_unaligned_le32(&table[i].partition_size);
 		pentry->dos_partition_type = table[i].type;
-		pentry->num = i + 1;
+		pentry->num = i;
 
 		sprintf(pentry->partuuid, "%08x-%02d", signature, i + 1);
 		dpd->signature = signature;
-- 
2.39.2




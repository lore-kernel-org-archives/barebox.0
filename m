Delivery-date: Thu, 29 Feb 2024 08:11:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfaZy-00Ewv8-1C
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 08:11:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfaZx-00069E-Mz
	for lore@pengutronix.de; Thu, 29 Feb 2024 08:11:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RhLf0rp22pISEp4K6Qbbw5IeEGXtwlikAdSyj5WMiAk=; b=jHgI5YyF5Piw/d7p1zYHFvHc/A
	4V0o7QmWdPG7tCOdcBH0fKllWAdDb9KfDnh8joK+ioodthc128CyY8Y/fTCXet11izJn/28Zj6H9q
	UlYpUKYQDLfBuGxYT0EK/Y8LJZgwJghUGhf1HbO8HD+nnYD3gMp5vOK8Qz4MeTiVea4o9m/AQjWml
	3V6x8aK8g3UGyIHRxd3fhP0E+SIF5CnAN5ARW6CSnAIjvAX3154Gck3jlDOnhsEON8udjs6HiuQbk
	X4FV+DlT4B/8CfgZ4k4f1qrfbs8KpN4TGlHPbipF3l30qIE7hssDNk46YNngA5sdyQSISxJw+FJwV
	jQKijhJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfaZO-0000000CPqb-2QsX;
	Thu, 29 Feb 2024 07:11:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfaZK-0000000CPpQ-0BnE
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 07:11:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfaZH-00061h-Sf; Thu, 29 Feb 2024 08:10:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfaZH-003XS0-GH; Thu, 29 Feb 2024 08:10:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfaZH-006oSr-1I;
	Thu, 29 Feb 2024 08:10:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 29 Feb 2024 08:10:58 +0100
Message-Id: <20240229071058.1623945-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240229071058.1623945-1-s.hauer@pengutronix.de>
References: <20240229071058.1623945-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_231102_120911_688ACC71 
X-CRM114-Status: GOOD (  12.23  )
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
Subject: [PATCH 2/2] partitions: dos: change first partition number from 1 to 0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Traditionally barebox starts partition numbers at 0. This was changed
in 8f48e6366c to start at 1. This was done to make the parted numbering
consistent to the Linux tool. This breaks boot scripts though which
assume 0 to be the first partition, so change it back.

Fixes: 8f48e6366c ("partitions: dos: implement partition manipulation support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/dos.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 47b5764124..bec5ee60bc 100644
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




Delivery-date: Tue, 22 Oct 2024 10:35:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AMl-007Obc-21
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:35:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AMl-0006VG-2U
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:35:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B3BiYt3XvWqhOwMGYqGEP2AK2DmJn/Y64m1V94tgGWM=; b=Qj4PWKrn4Wd6yGkzXsXAHtoyhi
	61XSEWawoyZCyPu9I8KETzQYHxHdwR13oDm2t9syxmY9WTj/2ck/g5OYJrDO72yxiC6Br5LHWumUS
	I3ryFwhRpSjCDgRdJ57KsZ9QFdjAB78UdZqXKWN7WCwpNtM6TNIOeiB+TpSmBiWpokuW0DmZlMN6o
	y73Ld1adi+8mePnTB2X6Wyvz3dLviBM9Uv/FBlSUdMZCm03XFeCaMcJqWZQDKNJzwMxr/IsN1AiFi
	QLSRD/rE5T1DNIGwaQuXmskpGxWl7FG4AcUF78SbRLt4l/e+JMi+wIdQYE2epswNPq8Hiay6AxGQB
	Om9PozKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3AME-0000000ABDc-3BAC;
	Tue, 22 Oct 2024 08:35:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3AKv-0000000AB2h-05Gk
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:33:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3AKs-0006Iz-2w; Tue, 22 Oct 2024 10:33:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3AKr-000phr-2w;
	Tue, 22 Oct 2024 10:33:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3AKr-00Dd2O-2f;
	Tue, 22 Oct 2024 10:33:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Oct 2024 10:33:47 +0200
Message-Id: <20241022083347.3248311-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241022083347.3248311-1-a.fatoum@pengutronix.de>
References: <20241022083347.3248311-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_013353_106893_13AE5D48 
X-CRM114-Status: GOOD (  10.78  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] partition: dos: use xmalloc for unchecked allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of unconditional dereferencing of pointers that may be NULL, do a
controlled panic in the case we are out of memory by using xmalloc().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/dos.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 8e4edd885bfa..511d58cf0489 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -53,7 +53,7 @@ static inline int is_extended_partition(struct partition *p)
 
 static void *read_mbr(struct block_device *blk)
 {
-	void *buf = malloc(SECTOR_SIZE);
+	void *buf = xmalloc(SECTOR_SIZE);
 	int ret;
 
 	ret = block_read(blk, buf, 0, 1);
@@ -124,7 +124,7 @@ static int dos_get_disk_signature(struct param_d *p, void *_priv)
 static void dos_extended_partition(struct block_device *blk, struct dos_partition_desc *dpd,
 		struct partition *partition, uint32_t signature)
 {
-	uint8_t *buf = malloc(SECTOR_SIZE);
+	uint8_t *buf = xmalloc(SECTOR_SIZE);
 	uint32_t ebr_sector = partition->first_sec;
 	struct partition_entry *table = (struct partition_entry *)&buf[0x1be];
 	unsigned partno = 4;
-- 
2.39.5




Delivery-date: Thu, 22 May 2025 15:42:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI6Bs-001XrB-2Y
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 15:42:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI6Bs-00060w-79
	for lore@pengutronix.de; Thu, 22 May 2025 15:42:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GodZlEQEdieMjryoMOHj+hfkuOlm6SDO7mColJCfJMM=; b=CDyZShQ9MQVji4OCczcCyc+jpZ
	ROkT03JRbZ1A9fXxp+8zEvOjY3DS1w8wpTN1G9hNU+fxTYbsDBnKYcNXQPWIv5EM5JT4vKhGqp5sY
	d0+Uim3Fi2CDbfHXQlnMY9LTJjoKMyBf03f7ZEehuY0p7ezyv+oSBcMK1YakBlBDBp4XF/GpiufV8
	gBqkOIzpKX9vm1Z5jVwDx/ZihKf5FcF21bH47wT2oAlc9zmzQO/rXPIcxcO1nDR0DnrKuDs0NGPII
	31HtEepovGywRnejFAAJwQSE3U/CYWl/z4mqYtKaH1346Xec67A72Uuu1U4KM2RIHEAMfpeAzYdZ7
	VYWkSyfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI6BH-0000000197M-0ZxO;
	Thu, 22 May 2025 13:41:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI6A0-000000018wx-36tj
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 13:40:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-00059u-LC; Thu, 22 May 2025 15:40:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-000kDb-1Q;
	Thu, 22 May 2025 15:40:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-000ybx-1B;
	Thu, 22 May 2025 15:40:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2025 15:40:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-parted-size-v1-1-369d146aa100@pengutronix.de>
References: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
In-Reply-To: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747921227; l=2653;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4C5S+CjDRVCY/8wZ7dFJVi8AcVGC4ZC1OFs4BGQHIeQ=;
 b=EQfYHo3JKKmm/+Oix4I56sdflg0M1PW9tz09ASGJnkuyGV+c4PY+CvID7qesNgPkXnWU0t4Mo
 GrgWIeZka1ABTlFqmNb9617+88iG7uL2f+FDNLlkV/BCVwBvvhAfJZ6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_064036_781673_F753C78E 
X-CRM114-Status: GOOD (  13.57  )
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
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] partitions: add function to find free space on
 partition table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently only support creating partitions by specifying the exact
start and end position. Add some functions to find free space in a
partition table so that we can implement creating partitions with only
specifying the size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c  | 42 ++++++++++++++++++++++++++++++++++++++++++
 include/partitions.h |  3 ++-
 2 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/common/partitions.c b/common/partitions.c
index bc90f51f611223a59a28812b0f9854b342b30ad3..25d5f15721fc5980c927863b2745c23d7149da92 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -163,6 +163,48 @@ int partition_table_write(struct partition_desc *pdesc)
 	return pdesc->parser->write(pdesc);
 }
 
+bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t size)
+{
+	struct partition *p;
+
+	if (start < PARTITION_ALIGN_SECTORS)
+		return false;
+
+	if (start + size >= pdesc->blk->num_blocks)
+		return false;
+
+	list_for_each_entry(p, &pdesc->partitions, list) {
+		if (region_overlap_size(p->first_sec, p->size, start, size))
+			return false;
+	}
+
+	return true;
+}
+
+int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start)
+{
+	struct partition *p;
+	uint64_t min_sec = PARTITION_ALIGN_SECTORS;
+
+	min_sec = ALIGN(min_sec, PARTITION_ALIGN_SECTORS);
+
+	if (partition_is_free(pdesc, min_sec, sectors)) {
+		*start = min_sec;
+		return 0;
+	}
+
+	list_for_each_entry(p, &pdesc->partitions, list) {
+		uint64_t s = ALIGN(p->first_sec + p->size, PARTITION_ALIGN_SECTORS);
+
+		if (partition_is_free(pdesc, s, sectors)) {
+			*start = s;
+			return 0;
+		}
+	}
+
+	return -ENOSPC;
+}
+
 int partition_create(struct partition_desc *pdesc, const char *name,
 		     const char *fs_type, uint64_t lba_start, uint64_t lba_end)
 {
diff --git a/include/partitions.h b/include/partitions.h
index 785fb77ab1674d92fdbac5f5df03910b1e2196af..7fd6899bd3b88f691385c330bb7900d9ec1547ac 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -64,6 +64,7 @@ int partition_create(struct partition_desc *pdesc, const char *name,
 		     const char *fs_type, uint64_t lba_start, uint64_t lba_end);
 int partition_remove(struct partition_desc *pdesc, int num);
 void partition_table_free(struct partition_desc *pdesc);
-
+bool partition_is_free(struct partition_desc *pdesc, uint64_t start, uint64_t size);
+int partition_find_free_space(struct partition_desc *pdesc, uint64_t sectors, uint64_t *start);
 
 #endif /* __PARTITIONS_PARSER_H__ */

-- 
2.39.5




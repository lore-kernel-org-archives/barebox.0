Delivery-date: Mon, 02 Jun 2025 15:29:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E5-002yUW-2w
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 15:29:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E5-0007dU-5s
	for lore@pengutronix.de; Mon, 02 Jun 2025 15:29:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ou83vPoN2ciCRO//zwZrx4IhA5Y2QPzML885I7MZ8U=; b=qd/Isrb0PPDkKVznRay3FrH2cR
	5DcjYQKjiwYCRr4ym3AxMbCa1UdKXEOwTtJQhO/w9muiI8YFxSPcfdsblUmD+KaCRPJwb+YLSpSD9
	B5GVd/BjQU9WGCmr5+wjpGbzQ4T39XiWyWHvLWMZazwta6os9WC7HcA1gQSY3g/r6NEym6E2b4Lbs
	GPZbPPdqkvqihz1yr5gPi1XqHzPhTKqrSvEUgYT5UuoFz02k5wqn03zNQXPDnseC6VsbWIySn4og7
	pEtTVcc+VVEtrhQwv8rPXcUHJcptQdzpD0Qzz7z9sJ1a2lgjkDw8t0FKq8sxECdgAEiPJHGIU+K5g
	cU8q+3ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5Db-00000007Su2-1nGm;
	Mon, 02 Jun 2025 13:28:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5DS-00000007SrD-0sPU
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 13:28:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-0007AC-VS; Mon, 02 Jun 2025 15:28:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-001Sln-2I;
	Mon, 02 Jun 2025 15:28:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-009BwG-25;
	Mon, 02 Jun 2025 15:28:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Jun 2025 15:28:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250602-createnv-v1-1-c3239ff875d5@pengutronix.de>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
In-Reply-To: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748870916; l=2222;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=33hdAZFYhJjxg3VJQ6UyuE5vKv7LQ7o8/bBGz1ywjwM=;
 b=jdzryRxAstzMbX9hSn2woQeVvUHo3cDMSWwJmu2dBVC1r79GofSUNObGDlaZf/QEj/kIgKZOg
 T5CyEDBTbgvCssjOgV1BH4FG/Qr0JQGVODG9un2EDjdOUTQlpf2d+1d
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_062838_280843_49706288 
X-CRM114-Status: GOOD (  11.34  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] partitions: efi: calculate instead of hardcode gpt
 header fields
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Calculate the lba values of the GPT header instead of hardcoding them.
This will allow us to modify some fields while preserving a consistent
partition table in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 840d6a83b7950501debc943864e20e797628720d..92868e4a77e5688d547ee3f2cac3ab9534a4ebdb 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -583,10 +583,13 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 {
 	struct efi_partition_desc *epd = xzalloc(sizeof(*epd));
 	gpt_header *gpt;
+	unsigned int num_partition_entries = 128;
+	unsigned int gpt_size = (sizeof(gpt_entry) * num_partition_entries) / SECTOR_SIZE;
+	unsigned int first_usable_lba = gpt_size + 2;
 
 	partition_desc_init(&epd->pd, blk);
 
-	epd->gpt = xzalloc(512);
+	epd->gpt = xzalloc(SECTOR_SIZE);
 	gpt = epd->gpt;
 
 	gpt->signature = cpu_to_le64(GPT_HEADER_SIGNATURE);
@@ -594,18 +597,18 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 	gpt->header_size = cpu_to_le32(sizeof(*gpt));
 	gpt->my_lba = cpu_to_le64(1);
 	gpt->alternate_lba = cpu_to_le64(last_lba(blk));
-	gpt->first_usable_lba = cpu_to_le64(34);
-	gpt->last_usable_lba = cpu_to_le64(last_lba(blk) - 34);;
+	gpt->first_usable_lba = cpu_to_le64(first_usable_lba);
+	gpt->last_usable_lba = cpu_to_le64(last_lba(blk) - (gpt_size + 2));;
 	generate_random_guid((unsigned char *)&gpt->disk_guid);
-	gpt->partition_entry_lba = cpu_to_le64(2);
-	gpt->num_partition_entries = cpu_to_le32(128);
+	gpt->partition_entry_lba = cpu_to_le64(first_usable_lba - gpt_size);
+	gpt->num_partition_entries = cpu_to_le32(num_partition_entries);
 	gpt->sizeof_partition_entry = cpu_to_le32(sizeof(gpt_entry));
 
 	add_gpt_diskuuid_param(epd, blk);
 
 	pr_info("Created new disk label with GUID %pU\n", &gpt->disk_guid);
 
-	epd->ptes = xzalloc(128 * sizeof(gpt_entry));
+	epd->ptes = xzalloc(num_partition_entries * sizeof(gpt_entry));
 
 	return &epd->pd;
 }

-- 
2.39.5




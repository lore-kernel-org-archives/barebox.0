Delivery-date: Thu, 31 Oct 2024 14:10:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6Uw4-0036it-1w
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 14:10:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6Uw5-0000Cp-56
	for lore@pengutronix.de; Thu, 31 Oct 2024 14:10:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HjLyxcd6XgnjuGRelUKAYk5KTpcyY5kBFxDTaKt9t8A=; b=SJl9tybL5Di8r5lWhC7UPHIz40
	/RdnycxmuuMc6lZwfAbDFVWqdh9FKR8zwE09zKRUvMYUu6LRIGHsnwTti6IjZ+U6dod1Rupy2q7ve
	hNCoD4Hi+MwFqLKYW8QZNaYTZhQ3BSJn3K4LqZsoDDPoYcYfNO+gALvNr+/8K0BXvn3GSylUjWQYM
	SNqN2VhqjLmSjT5KFyofgQl3HPRzHaAigkrDdD07ulRN3Cnsw3t+yq5Ze9hAyP7SAnkHoMDH0Fq51
	WB+rTCDWlQAbwjBQbhAdMON4ukUoCeHUjCKRBzyx8NSwnS2TzaLTJCA98x7dMtS5q7qTWYGRpe7PJ
	vadQ80pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6UvM-00000003dSM-0zP0;
	Thu, 31 Oct 2024 13:09:16 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6UcU-00000003b0Q-1daj
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 12:49:57 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-53c779ef19cso1022647e87.3
        for <barebox@lists.infradead.org>; Thu, 31 Oct 2024 05:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730378984; x=1730983784; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HjLyxcd6XgnjuGRelUKAYk5KTpcyY5kBFxDTaKt9t8A=;
        b=KgU8423bWdN/vzkcdy6n6Dr3dhdPqWek5fp+Fx0Sss5ib/WifASX09nOXu7iPaG8hT
         iv2dlCz0EOF+dMeuDH0IZXovg6z4tzBZH364t7oUDIdDzTCi+dkITx6KkXihLOJxHcR6
         FZ4ZmSFDc56DPKDzejfeEiNivCO41xWa8Aa1GkJ9sM/ldGgXkDK4IIbuZs+Wc+D3DzQc
         gs+O5MsSSYLcWeO0CCSN3ma/MTCJRX55ftR/VxIXhydAxRTr54TZFmks7izwVRMzyQsF
         lNGA2/Zy6n+QSKKEzGyApnG6/ZjKOKlbWWY653PFY9yAZ95tMs/9g5OxAmEgPdHZLiga
         SoxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730378984; x=1730983784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HjLyxcd6XgnjuGRelUKAYk5KTpcyY5kBFxDTaKt9t8A=;
        b=KSVakPc4y//MNjzTivyKTpoh3NwGuLnESBgP3reI2lZaiScuMOGuw5nfT7G58fEHeV
         jv5Qk/3P7XWG3lCLdjOeiLdbGVvw16CY36947VhHHuEmykx9rya2u3KjIQ+09alj+ExO
         UPcUxHZMZqKGmA38yUHlCwj3WV3KHYtGfN7RpIiZNbo6P/tWlMLcFJeL1R819gtgHhgM
         XJMhY4NMNhkDP+YSaueVvxrBW0vCfqAu+RilgEUSjJF9wV44TV22OtDYkzREQn8pO1MH
         FIcvvbgbYjnP2J+MGzJBOKkU0Yf0HiyniWcb/hqV3C/OBdGZWHMGwDZte2wwioEe3sIt
         LOjw==
X-Gm-Message-State: AOJu0YxpUvkdl7083/QyIqFYg5Bnm4TyOYaeVMFZXxyi0lvQiYYv3Jwd
	3s16OWPAMVbbu3Ei7M9lI3T8pMRcck0UTiekT+I8sbeuFdsXRUVD
X-Google-Smtp-Source: AGHT+IFq0b7UzJAIx6wzmvTu3I4j+2yGBx/L3J3+IAwU2baGtiF94oVJC59U0UmzMZUbEbZEtqop7A==
X-Received: by 2002:a05:6512:1192:b0:539:f689:3c30 with SMTP id 2adb3069b0e04-53c79e325a5mr1729011e87.20.1730378983553;
        Thu, 31 Oct 2024 05:49:43 -0700 (PDT)
Received: from localhost.localdomain ([156.197.153.46])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10b7b97sm2048328f8f.2.2024.10.31.05.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 05:49:43 -0700 (PDT)
From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Date: Thu, 31 Oct 2024 15:48:52 +0300
Message-ID: <20241031124854.625174-1-abdelrahmanyossef12@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_054946_464422_C8EF4F8F 
X-CRM114-Status: GOOD (  15.51  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] partitions: efi: fix overflow issues while allocating gpt entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

while parsting the GPT header in alloc_read_gpt_entries() the number
of partitions can be large that multiplying it with the size of a single
partition overflows 32-bit multiplication.

we already enforce a MAX_PARTITION limit of 128 partitions in efi_partition(),
so allowing any bigger value in alloc_read_gpt_entries() would fail,
even if we fix the overflow.

Therefore, we can enforce the limit strictly and treat any overflow as
a failing condition.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 common/partitions/efi.c | 36 ++++++++++++++++++++++++++++--------
 1 file changed, 28 insertions(+), 8 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 9a04b7014d..8014579b67 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -35,6 +35,25 @@ struct efi_partition {
 
 static const int force_gpt = IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE);
 
+/**
+* compute_partitions_entries_size() - return the size of all partitions
+* @gpt: GPT header
+*
+* Description: return size of all partitions, 0 on error
+*
+* This is a helper function that compute the size of all partitions
+* by multiplying the size of a single partition by the number of partitions
+*/
+static u32 compute_partitions_entries_size(const gpt_header *gpt) {
+	u32 nb_parts, sz_parts, total_size;
+
+	nb_parts = min(MAX_PARTITION, le32_to_cpu(gpt->num_partition_entries));
+	sz_parts = le32_to_cpu(gpt->sizeof_partition_entry);
+	if (check_mul_overflow(nb_parts, sz_parts, &total_size))
+		return 0;
+	return total_size;
+}
+
 /**
  * efi_crc32() - EFI version of crc32 function
  * @buf: buffer to calculate crc32 of
@@ -81,14 +100,12 @@ static u64 last_lba(struct block_device *bdev)
 static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
 					 gpt_header * pgpt_head)
 {
-	size_t count = 0;
+	u32 count = 0;
 	gpt_entry *pte = NULL;
 	unsigned long from, size;
 	int ret;
 
-	count = le32_to_cpu(pgpt_head->num_partition_entries) *
-		le32_to_cpu(pgpt_head->sizeof_partition_entry);
-
+	count = compute_partitions_entries_size(pgpt_head);
 	if (!count)
 		return NULL;
 
@@ -156,7 +173,7 @@ static gpt_header *alloc_read_gpt_header(struct block_device *blk,
 static int is_gpt_valid(struct block_device *blk, u64 lba,
 			gpt_header **gpt, gpt_entry **ptes)
 {
-	u32 crc, origcrc;
+	u32 crc, origcrc, count;
 	u64 lastlba;
 
 	if (!ptes)
@@ -215,10 +232,13 @@ static int is_gpt_valid(struct block_device *blk, u64 lba,
 	if (!(*ptes = alloc_read_gpt_entries(blk, *gpt)))
 		goto fail;
 
+	/* Check the size of all partitions */
+	count = compute_partitions_entries_size(*gpt);
+	if (!count)
+		goto fail_ptes;
+
 	/* Check the GUID Partition Table Entry Array CRC */
-	crc = efi_crc32((const unsigned char *)*ptes,
-		le32_to_cpu((*gpt)->num_partition_entries) *
-		le32_to_cpu((*gpt)->sizeof_partition_entry));
+	crc = efi_crc32((const unsigned char *)*ptes, count);
 
 	if (crc != le32_to_cpu((*gpt)->partition_entry_array_crc32)) {
 		dev_dbg(blk->dev, "GUID Partitition Entry Array CRC check failed: 0x%08x 0x%08x\n",
-- 
2.43.0




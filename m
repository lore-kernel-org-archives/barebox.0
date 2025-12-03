Delivery-date: Wed, 03 Dec 2025 16:19:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodn-007YOx-1d
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 16:19:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodm-0003Ra-Pw
	for lore@pengutronix.de; Wed, 03 Dec 2025 16:19:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VhIkoBFMT+1SCfzD6tlN2cZNj7jTo6QKIKunPvNfUaQ=; b=GkN0Ax0FL3p+UGyk7u+rKp6x2X
	95OhMMS1ZWbTGT2Z05cQuws2LcRc4+++NkO2aRyPhckeJcJaSj9lfCUOtLvUq7mC+f4arw9+Iaz+6
	bGxP00pltSNXr1BmRaqnXxbDIoQfRSXuO9+ZSEmZM8XfkGSG6Eiyptn9m4lzHurXhrWP3RLeEouHx
	NbaKDaupbRzhVigU2gLF6/hJvqj7LNjTIOYXSXih9rNOIipAWlG4rA4/osRTCm+Lc3pfw3y2xd0h2
	sVgjQhzlMzAenHwK4XUvCbIUt8UaGCTIZYiOO+mlZHtqiGTQIZPHwa1Rf+coQUL5xUTaAx9SMS6MV
	uqIYHn+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodO-00000006gkJ-3C6B;
	Wed, 03 Dec 2025 15:19:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodI-00000006ghK-3so3
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 15:19:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-0003AA-Tz; Wed, 03 Dec 2025 16:19:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-003nYJ-2A;
	Wed, 03 Dec 2025 16:19:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-00000009MJM-2XfZ;
	Wed, 03 Dec 2025 16:19:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 03 Dec 2025 16:19:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-efi-partition-refresh-v1-2-f0b6e79b5fa0@pengutronix.de>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
In-Reply-To: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764775146; l=1003;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=D4dVw2PgRP76Y3gbNL9/V57TuiUtOdCHnadQxfqh7Ts=;
 b=PRbpqSXVXxsxyeaDejnKz6e/xqchMtrvyUwbr3cFBiNno0iUnsP3MRHePeTcOs1UCgs3IYcXD
 gIa5DnurPxBB8UX57q7k9AzGFMXcDM7FZ4ghVjA5UHmPefnnk+Q/CmN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_071909_005305_A32A87DE 
X-CRM114-Status: GOOD (  11.84  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] partitions: gpt: only write actual ptes size to device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For the alternate GPT we hardcode to write 32 blocks for the partition
entries. When writing partitions we only accept partition tables with
128 entries which translates to 32 blocks anyway, so no functional
change, but for correctness use the variable we also use for writing
the primary GPT's partition entries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index da9c2d89c1c68ae1acebc1f8eaea8da48243f0d6..76c5393dddb04e2966d3a4b4478d5085f008d935 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -801,7 +801,7 @@ static __maybe_unused int efi_partition_write(struct partition_desc *pd)
 
 	if (ret)
 		goto err_block_write;
-	ret = block_write(blk, epd->ptes, last_lba(blk) - 32, 32);
+	ret = block_write(blk, epd->ptes, last_lba(blk) - 32, size);
 	if (ret)
 		goto err_block_write;
 

-- 
2.47.3




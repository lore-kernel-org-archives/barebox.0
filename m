Delivery-date: Tue, 11 Feb 2025 10:36:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thmgx-000xIS-0v
	for lore@lore.pengutronix.de;
	Tue, 11 Feb 2025 10:36:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thmgw-0005a6-3r
	for lore@pengutronix.de; Tue, 11 Feb 2025 10:36:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TtSwhdyNMSDbXd2UJnzs3XPxTCSCKjk46YiG8mBoZZI=; b=xKNvujvH2yzmU9SpndeKWM0FwI
	T1IoGv2sPdQwPMj+lWiUZGWllsX3a+77ustxX4YVcWeaZMINWfxeV7Ao1ueEzGWju3MhYmVBmeUmR
	aSjrgPzjxHWdiKYlGTO/ZPKr5sgNIBe2sUdrRKfC6EM3qxaVBtuz5WOb+iQ6pg2G5nEYj2lcX4Tnv
	G545E2fZwjkmVKxXvIH1vfF/qf/bTNXpstud7ASaKh+lIDgKoT5ADayhwOT3ccGfg+0KLXRUBINbM
	2kSAutZd/Knx6LLlNDrvGAlFnqAse9GvsUtqknUKM3R8b/PcPqJtgMz4yNMVv3xgYNgWKrRnqFoOh
	cNwy6MwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thmgI-00000003C5h-3xzH;
	Tue, 11 Feb 2025 09:35:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thmen-00000003Blr-0IAx
	for barebox@lists.infradead.org;
	Tue, 11 Feb 2025 09:34:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1thmek-0005DD-E3; Tue, 11 Feb 2025 10:34:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1thmek-000ORE-0m;
	Tue, 11 Feb 2025 10:34:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1thmek-0078hR-0P;
	Tue, 11 Feb 2025 10:34:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 11 Feb 2025 10:34:08 +0100
Message-Id: <20250211093408.1701730-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_013417_107101_426332DA 
X-CRM114-Status: GOOD (  12.74  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] partitions: efi: Fix position of alternate gpt when writing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The primary GPT has a pointer to the alternate GPT. Set this pointer
correctly when writing the partition table.

When the GPT originally has been created on the device, the alternate GPT
should be at the end of the device already. However, when the GPT was
created on an image which was then written to the disk, the alternate GPT
might be at the end of the image instead of the device. In this case
the alternate GPT changes its position during a partition write, so we
have to adjust the pointer from the primary to the alternate GPT
accordingly.

Reported-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 6caa391983..5736b6033b 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -758,6 +758,7 @@ static __maybe_unused int efi_partition_write(struct partition_desc *pd)
 		le32_to_cpu(gpt->sizeof_partition_entry);
 
 	gpt->my_lba = cpu_to_le64(1);
+	gpt->alternate_lba = cpu_to_le64(last_lba(blk));
 	gpt->partition_entry_array_crc32 = cpu_to_le32(efi_crc32(
 			(const unsigned char *)epd->ptes, count));
 	gpt->header_crc32 = 0;
-- 
2.39.5




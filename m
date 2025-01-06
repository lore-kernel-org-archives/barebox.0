Delivery-date: Mon, 06 Jan 2025 15:05:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjm-00HVx4-2x
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjk-0000l4-Jt
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DyybWPxjXNPDKWtHs3psuyxuHPSmKRIxKCust2bxrHs=; b=XwKsSHdVKiQFQU4NrAheVUFalH
	cyi+CsBS2ZyGHX3F4MEfQL70QReg8qvqz0GbVEF/V76H7Oqte3viCJBK4kLE3GNyKZVveURYgcFwj
	6vGZkGmvLyCEWrQ3n+ZfHdswj0jiGwYsp6is5Hru/eO/1POVeUpGoZE9sJji/sf31156neugTGX41
	O1FY2F9IJpcNtZ0RXifadBSwOKK1weY6XxSahgXD/uLjayR5ybY65vLgixGtxBM/wTzcy/ly2Jcy7
	aLD5RYfsTBy86Ui2EANKTJgQurgNCk8jf2SAK0+YWbnMaSFhiAryDqhM8wq4mcvFbHRzociTqvLl8
	kEQXhcVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnj8-00000001V2I-1Ax9;
	Mon, 06 Jan 2025 14:05:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngV-00000001UYD-2gRg
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-00089C-HS; Mon, 06 Jan 2025 15:02:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngT-007B6I-1i;
	Mon, 06 Jan 2025 15:02:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1t;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-13-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=1707;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ne+OSdANC4irPSE5lCjAl1F9Yzrsm58kT/HAJQ3l5F8=;
 b=IV7YrMmmTAqKSP6d/OjqnWTV5UsDtBODPYQoTEubqahKD2L4DDL1gUBwH1/6onFDE6bOAT/ho
 iOPxzNiGrqaDt8MInCxvgXtBZcO/GW0MWd6bWylOcEmrdCu8rxaU6gm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_060223_683041_44C40D60 
X-CRM114-Status: GOOD (  14.86  )
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
Subject: [PATCH v2 13/22] elf: use iomem regions as fallback when loading
 to non-sdram memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ELF code uses request_sdram_region() to request the regions the
binary shall be copied to. However, not all of these regions are
actually SDRAM. Some specialized ELF files might also use SoC SRAM
which is not registered as SDRAM, so use request_region as a fallback
in these cases.

This is needed on the TI K3 AM625 SoC to successfully load the ti-dm
firmware binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/elf.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index ec78e45bf1..3cbe63f6b2 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -18,6 +18,7 @@ struct elf_section {
 	struct list_head list;
 	struct resource *r;
 	void *phdr;
+	bool is_iomem_region;
 };
 
 static int elf_request_region(struct elf_image *elf, resource_size_t start,
@@ -33,8 +34,12 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 
 	r_new = request_sdram_region("elf_section", start, size);
 	if (!r_new) {
-		pr_err("Failed to request region: %pa %pa\n", &start, &size);
-		return -EINVAL;
+		r_new = request_iomem_region("elf_section", start, size);
+		if (!r_new) {
+			pr_err("Failed to request region: %pa %pa\n", &start, &size);
+			return -EINVAL;
+		}
+		r->is_iomem_region = true;
 	}
 
 	r->r = r_new;
@@ -50,7 +55,10 @@ static void elf_release_regions(struct elf_image *elf)
 	struct elf_section *r, *r_tmp;
 
 	list_for_each_entry_safe(r, r_tmp, list, list) {
-		release_sdram_region(r->r);
+		if (r->is_iomem_region)
+			release_region(r->r);
+		else
+			release_sdram_region(r->r);
 		list_del(&r->list);
 		free(r);
 	}

-- 
2.39.5




Delivery-date: Mon, 13 Apr 2026 14:37:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGXW-00BiVP-20
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 14:37:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGXV-0001mc-W8
	for lore@pengutronix.de; Mon, 13 Apr 2026 14:37:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dquHvSVNx1Vl66tcGkjaloi2sudZ9cX60R1uzTveh0M=; b=Nn8oTEJZdTOCX/
	dSKMT4VVgs4GUn6e3BPVuL1lqQGb8HfYbiv7VTrO5C/b3qGbsq7d/zsx49Xg6pnWaxeyejygfHGs1
	isYC0g87yGYlunABFhy8uLkdqDVgzJo2uaOcQuPDADJMrZ2g5z0Io42kFtkMHyh0/tTKKJmKXsyoc
	3Ppu+j2co597j+5hXD78V/21gS/4CyOjCa7nAsovHoMCbmNiENlP5uZr0ZYVxvVFs/MmY3Di/J3/q
	tpMlNLifxaE9caLdAPqGz12gpdUYjZrnAOERU0i5aZpoWB+rT0Odg2fPfPM1f6u+uy3FhiTAdtZlZ
	bRN6f+DAy/OpHC01gq+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGXB-0000000FfOF-3Aw9;
	Mon, 13 Apr 2026 12:36:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGX9-0000000FfN3-3u0U
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 12:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dquHvSVNx1Vl66tcGkjaloi2sudZ9cX60R1uzTveh0M=; b=kF+EUteKgstntaOdybrgY/ERUE
	nFVSt87RI3ywxjVkx90aWonCYfcUkayumjgEGUVhjc6a5HqW9emesXIbkjj4S621BC78iI6XRvEQm
	w8D9QGnRnxUELKSik621gkkqgASw8447Enr/4pn3oVbH/0QXnoNVAjG4pCEVz60yBoTv38WxUMhfI
	9o5boc4/IffW1aWs5vGGcFZ58WbhF3NTOySN5eUk4pFByuFQca5czVWVDe8qMecCvtkHyS/sY8Bzh
	dZEknGiPGtnEuRAolj7/hlUL0Bmn1XPWVM37Hr3OlW4rzWDWXqJYy3FPNTpA4N6/QwYSCV7m1FeXb
	8EqFlAtg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGX2-0000000GnPH-403d
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 12:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-0001cf-Sr; Mon, 13 Apr 2026 14:36:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-005AoW-2G;
	Mon, 13 Apr 2026 14:36:47 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-0000000Eu3y-2QZN;
	Mon, 13 Apr 2026 14:36:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Apr 2026 14:36:46 +0200
Message-ID: <20260413123646.3552086-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413123646.3552086-1-s.hauer@pengutronix.de>
References: <20260413123646.3552086-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_133651_735543_11B5F53D 
X-CRM114-Status: GOOD (  11.93  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] efi: loader: bounds-check relocation offsets against image size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

The relocation VirtualAddress and page offset are read from the PE
image and used to compute a write offset into the allocated image
buffer without any bounds checking. A crafted relocation entry with a
large VirtualAddress writes past the efi_reloc allocation.

Pass the image size into efi_loader_relocate() and use size_add() to
check that the relocation offset plus the access width fits within the
buffer. size_add() saturates to SIZE_MAX on overflow, so the check
remains correct on 32-bit architectures.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 efi/loader/pe.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/efi/loader/pe.c b/efi/loader/pe.c
index ea385c8795..7d36d8c334 100644
--- a/efi/loader/pe.c
+++ b/efi/loader/pe.c
@@ -108,7 +108,8 @@ void efi_print_image_infos(void *pc)
  */
 static efi_status_t efi_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
 			unsigned long rel_size, void *efi_reloc,
-			unsigned long pref_address)
+			unsigned long pref_address,
+			unsigned long image_size)
 {
 	unsigned long delta = (unsigned long)efi_reloc - pref_address;
 	const IMAGE_BASE_RELOCATION *end;
@@ -133,6 +134,11 @@ static efi_status_t efi_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
 			uint32_t *x32 = efi_reloc + offset;
 			uint16_t *x16 = efi_reloc + offset;
 
+			if (size_add(offset, sizeof(uint64_t)) > image_size) {
+				pr_err("Relocation offset exceeds image size\n");
+				return EFI_LOAD_ERROR;
+			}
+
 			switch (type) {
 			case IMAGE_REL_BASED_ABSOLUTE:
 				break;
@@ -722,7 +728,8 @@ efi_status_t efi_load_pe(struct efi_loaded_image_obj *handle,
 
 	/* Run through relocations */
 	if (efi_loader_relocate(rel, rel_size, efi_reloc,
-				(unsigned long)image_base) != EFI_SUCCESS) {
+				(unsigned long)image_base,
+				virt_size) != EFI_SUCCESS) {
 		efi_free_pages((uintptr_t) efi_reloc,
 			       (virt_size + EFI_PAGE_MASK) >> EFI_PAGE_SHIFT);
 		ret = EFI_LOAD_ERROR;
-- 
2.47.3




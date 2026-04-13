Delivery-date: Mon, 13 Apr 2026 14:37:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGXZ-00BiWT-0q
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 14:37:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGXY-0001oA-K7
	for lore@pengutronix.de; Mon, 13 Apr 2026 14:37:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L4Id3BiOYOXEHhYhELIR++nj2brB7U3HyoMDZzDspXs=; b=FfJWVJy4MiO2i+
	NVCVwtRNVxa/o0zwQgQhmrqatJFRSz9OTPOXuZd5jUTXsyxvzndrsbm98CkpULjYdorOBWjVqLd6Z
	/fcMsahXDFIXmkd6HCUiX0xeTqagi9llHwqyaksMRFmcyDOkIFm2xSNA1XooZ6f2itLGXcxzUr/fh
	NaEVst85QG02JJ+AKoEpuTGtsk3tCZF5z6OsZxyU+W6SnjHJAoQnnJmRRjNpObb9z+kjyvsfm0MtY
	GLjC3es7QaC2+J56bvc/Mre0Zb9IVg4e4ZvdV26pS3SvmLVt7iQe6VvpYSe07jhrLSOtB13vxLLhU
	vD+RnL9j9PZVLK07xdlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGXE-0000000FfQo-0VHN;
	Mon, 13 Apr 2026 12:37:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGXD-0000000FfPE-0P6r
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 12:36:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=L4Id3BiOYOXEHhYhELIR++nj2brB7U3HyoMDZzDspXs=; b=esDvBnQ7a0Ya/m1TGTDrQvN77J
	pdwmhEYe4GgIPOoQpbuxb55PZLnaLkPV5nXlrNKc7IjLzsdj3Hwhuy7PDaKDGiW4uSusaj/Bauf5i
	x+jQxrpZcD6loOFA+sFstJDQlux6moQEsTfQmZPQpsi2QuJnCH1T7fh2PeqGLfOTSbHFeSYU08CYA
	i4eIFo2B+3g+8JHpnITyoMJch8P3Hm+R/9i+DwvwnS8dxCVMf7hq3cRlScL1CAfwg4/wh7ZzY6QV+
	PVUtXi9XbyJZXhlsCfrcxr8/dY2EcOQnFrFR4+xF/9GsCaVIMlHcthXsG8Xj/1zmJEwx8lTPXQU4u
	p6VwMBNw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGXA-0000000GnQE-0Uo2
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 12:36:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-0001cc-Pg; Mon, 13 Apr 2026 14:36:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-005AoP-1j;
	Mon, 13 Apr 2026 14:36:47 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-0000000Eu3y-1mFP;
	Mon, 13 Apr 2026 14:36:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Apr 2026 14:36:43 +0200
Message-ID: <20260413123646.3552086-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_133656_322708_6905BB34 
X-CRM114-Status: GOOD (  10.55  )
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
Subject: [PATCH 1/4] efi: loader: fix integer overflow in PE virt_size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

sec->VirtualAddress and section_size() are both u32. Their addition can
wrap on overflow before being widened to unsigned long by max_t. For
example VirtualAddress=0xFFFF0000 + VirtualSize=0x20000 wraps to
0x10000, producing an undersized allocation. The subsequent memset and
memcpy to efi_reloc + sec->VirtualAddress then write far past the
allocated buffer.

On ARM32 (which selects HAVE_EFI_LOADER), unsigned long is also 32 bits,
so a section layout that overflows u32 cannot be mapped in the address
space at all. Use check_add_overflow() to detect the wraparound and
reject the PE image as corrupt.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 efi/loader/pe.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/efi/loader/pe.c b/efi/loader/pe.c
index 3c30211f10..7c5aaa1f91 100644
--- a/efi/loader/pe.c
+++ b/efi/loader/pe.c
@@ -23,6 +23,7 @@
 #include <pe.h>
 #include <qsort.h>
 #include <linux/err.h>
+#include <linux/overflow.h>
 
 static int machines[] = {
 #if defined(__aarch64__)
@@ -636,9 +637,15 @@ efi_status_t efi_load_pe(struct efi_loaded_image_obj *handle,
 	/* Calculate upper virtual address boundary */
 	for (i = num_sections - 1; i >= 0; i--) {
 		IMAGE_SECTION_HEADER *sec = &sections[i];
+		unsigned long vs;
 
-		virt_size = max_t(unsigned long, virt_size,
-				  sec->VirtualAddress + section_size(sec));
+		if (check_add_overflow((unsigned long)sec->VirtualAddress,
+				       (unsigned long)section_size(sec), &vs)) {
+			pr_err("Section %d virtual address overflow\n", i);
+			return EFI_LOAD_ERROR;
+		}
+
+		virt_size = max(virt_size, vs);
 	}
 
 	/* Read 32/64bit specific header bits */
-- 
2.47.3




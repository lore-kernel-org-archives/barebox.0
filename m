Delivery-date: Mon, 24 Aug 2026 09:31:20 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyP9L-006cj2-10
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 09:31:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9A496201B02
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 09:31:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OMTdYqRM;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Oq6JWXCsa/oHjoKzWlvFn3/Jv+r3AMYTTefCI/dm+s=; b=OMTdYqRMLixJvB66MyDrk8TWCo
	+J89hNPlWDyP3JXauDrpW1RclBiQgjaa/SHA2dilTeYgjOr/2hg7DSTir3ASsRYVc5PH61DFZIhxW
	sqkPeZRibSP9Ft7Uj8fIG+9uLD11ZaibcGlEIphpVQVY6nrSeBfT785tNdtcLEzaiRNIcrz5jZvD9
	GZ994Sva29N/4nIDWt/yfmPO09B6Zjw4b9a0m2pwpP1W4KoJdTvwgswrJyr6/ih5gSj1G6bAGwZ1X
	gizW8e/Q1KbWrZf1mFr/4LvwfrfAXGYj8c4szsegcKImmDIHzG2ZRC3arcn7WbRnIikM80G58UPka
	8QvcHSpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP8H-0000000G55J-1Lgu;
	Mon, 24 Aug 2026 07:30:13 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP8E-0000000G53p-2Pts
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 07:30:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E2F1D201AD4;
	Mon, 24 Aug 2026 09:30:08 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyP8C-00346W-2V;
	Mon, 24 Aug 2026 09:30:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyP8C-0000000Di4D-2plm;
	Mon, 24 Aug 2026 09:30:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/4] efi: loader: map code-type page allocations executable
Date: Mon, 24 Aug 2026 09:29:52 +0200
Message-ID: <20260824073005.3267576-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
References: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_003010_787522_5DB9FE8E 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> PE images are loaded
    into EFI_LOADER_CODE pages allocated from conventional memory, which mmu_remap_memory_banks()
    would map non-executable. The Linux arm64 EFI stub additionally relocates
    the kernel [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: twaw78maryy7yc9x8md9qwwz461om4oe
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 9A496201B02

From: Ahmad Fatoum <a.fatoum@barebox.org>

PE images are loaded into EFI_LOADER_CODE pages allocated from
conventional memory, which mmu_remap_memory_banks() would map
non-executable. The Linux arm64 EFI stub additionally relocates the
kernel into an EFI_LOADER_CODE allocation of its own and jumps to it,
so fixing this up at StartImage time only would not be enough.

Drop the erroneous comment and map executable pages RWX before handing
them out and revert them to regular cached memory when they are freed.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/boot.c   |  2 --
 efi/loader/memory.c | 30 ++++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 53c8fc5ff938..d361a71a4dae 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -3132,8 +3132,6 @@ efi_status_t __efi_start_image(efi_handle_t image_handle,
 
 	pr_info("Starting EFI payload at %p\n", entry);
 
-	// FIXME: we need the below if we enable CONFIG_ARM_MMU_PERMISSIONS...
-	// remap_range(info->image_base, info->image_size, MAP_ARCH(2));
 	sync_caches_for_execution();
 
 	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
diff --git a/efi/loader/memory.c b/efi/loader/memory.c
index 8931cd1bab52..d35f124d381e 100644
--- a/efi/loader/memory.c
+++ b/efi/loader/memory.c
@@ -7,14 +7,35 @@
 #include <linux/sprintf.h>
 #include <efi/loader.h>
 #include <efi/error.h>
+#include <efi/mode.h>
 #include <init.h>
 #include <memory.h>
+#include <mmu.h>
 #include <linux/list_sort.h>
 #include <linux/sizes.h>
 #include <dma.h>
 
 efi_uintn_t efi_memory_map_key;
 
+/*
+ * EFI images and the code pages they allocate expect to be mapped RWX,
+ * matching the attributes we advertise in the memory map for the code
+ * memory types. The page tables set up from the ELF segments only cover
+ * the barebox image itself, so allocations from conventional memory are
+ * mapped non-executable when ARM_MMU_PERMISSIONS is enabled.
+ */
+static void efi_remap_pages(u64 addr, size_t size, maptype_t map_type)
+{
+	if (!arch_can_remap())
+		return;
+
+	/* EFI_ALLOCATE_ADDRESS may pass through an unaligned address */
+	if (!IS_ALIGNED(addr, PAGE_SIZE) || !IS_ALIGNED(size, PAGE_SIZE))
+		return;
+
+	remap_range((void *)(uintptr_t)addr, size, map_type);
+}
+
 static efi_status_t find_pages_max(struct list_head *banks, size_t npages, size_t *page)
 {
 	struct memory_bank *bank;
@@ -199,6 +220,12 @@ efi_status_t efi_allocate_pages(enum efi_allocate_type type,
 
 	res->flags |= IORESOURCE_EFI_ALLOC;
 
+	if (memory_type == EFI_LOADER_CODE ||
+	    memory_type == EFI_BOOT_SERVICES_CODE ||
+	    memory_type == EFI_RUNTIME_SERVICES_CODE)
+		efi_remap_pages(new_addr, npages << EFI_PAGE_SHIFT,
+				MAP_CACHED_RWX);
+
 	*memory = new_addr;
 	return EFI_SUCCESS;
 }
@@ -301,6 +328,9 @@ efi_status_t efi_free_pages(uint64_t memory, size_t pages)
 	if (nfreed <= 0)
 		return EFI_INVALID_PARAMETER;
 
+	/* Revert a possible executable mapping of code-type allocations */
+	efi_remap_pages(memory, size, MAP_CACHED);
+
 	++efi_memory_map_key;
 
 	return EFI_SUCCESS;
-- 
2.47.3




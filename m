Delivery-date: Thu, 18 Dec 2025 12:13:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBx0-00Co28-0u
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:13:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWBwz-0005pd-Dm
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:13:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F1MyYzF1i8HXfKmFzzWgn6O3zGIu4vUHYlJibDzQSzw=; b=UcVwoNmxwwAqXIZV4C/8BUsWZU
	9GZM6Jvf4DsEcQp2R9E2vwxE7kwyhT5Z03AOcJz1We65Tjh11J2dqYUYcT9fIHhueoukihKLf0W/9
	eo12DkHWeJxcLRgO8eQ+Yvg2GfO1LJUi6INCuIJ6dPv8T9K1+Rmnge/FwE6QKWOQsf8WYww6b1Occ
	0QNBriscXvp+0EEgJxe83NkorYJhlFWEbtnhKcgyevsmw6c2+z4Vfxx9JChyZ0i9AFm45NySmEE8+
	R0XzdTPdLgJIGkn3xdySwTlDzCGl8tzuS+Hjm7RD3vVItkLYu4T1MuxQBRAxmwPjoFPhr1KEmntms
	3aFNTIjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBwA-00000008IIq-2p1x;
	Thu, 18 Dec 2025 11:12:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBw7-00000008IGC-2fpF
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:12:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0005Nj-Mq; Thu, 18 Dec 2025 12:12:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-006Ggc-1Y;
	Thu, 18 Dec 2025 12:12:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-1Zsq;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:28 +0100
Message-ID: <20251218111242.1527495-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_031247_680078_201FA445 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 08/54] resource: assign memory banks a default type and attr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The resource_iter family of functions iterates over both resources and
the gaps between them and will inherit the parents type and attrs into
the gaps.

Give the SDRAM suitable attributes for the gaps, so users need not
special case the region_is_gap case if they are interested in collecting
all memory type and attributes.
---
 common/memory.c     |  4 ++++
 efi/loader/memory.c | 39 +++++++++++++++++++--------------------
 2 files changed, 23 insertions(+), 20 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 8974482ccb8b..0e07ba432053 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -237,6 +237,10 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 
 	res->flags = IORESOURCE_MEM;
 
+	res->type = MEMTYPE_CONVENTIONAL;
+	res->attrs = MEMATTRS_NORMAL;
+	res->flags |= IORESOURCE_TYPE_VALID;
+
 	bank = xzalloc(sizeof(*bank));
 
 	bank->res = res;
diff --git a/efi/loader/memory.c b/efi/loader/memory.c
index 075b559367fe..6ed7f76714f9 100644
--- a/efi/loader/memory.c
+++ b/efi/loader/memory.c
@@ -121,7 +121,7 @@ static u64 efi_memory_type_default_attrs(enum efi_memory_type type)
 		return MEMATTRS_RW | MEMATTR_SP;
 	case EFI_UNUSABLE_MEMORY:
 	case EFI_MAX_MEMORY_TYPE:
-		pr_warn("Unallocatable type %u\n", type); // FIXME
+		pr_warn("Unallocatable type %u\n", type);
 		return MEMATTRS_FAULT;
 	}
 
@@ -188,9 +188,8 @@ efi_status_t efi_allocate_pages(enum efi_allocate_type type,
 				   efi_memory_type_to_resource_type(memory_type),
 				   attrs);
 	if (!res) {
-		pr_err("failed to request %s at page 0x%zx+%zu (%s)\n",
-		       namebuf, new_page, npages, typestr);
-		dump_stack();
+		pr_err("failed to request %s at page 0x%llx+%zx (%s)\n",
+		       namebuf, new_addr, npages << EFI_PAGE_SHIFT, typestr);
 		return EFI_OUT_OF_RESOURCES;
 	}
 
@@ -204,22 +203,6 @@ efi_status_t efi_allocate_pages(enum efi_allocate_type type,
 	return EFI_SUCCESS;
 }
 
-static int free_efi_only(struct resource *res, void *data)
-{
-	int *nfreed = data;
-
-	if (!(res->flags & IORESOURCE_EFI_ALLOC)) {
-		pr_warn("refusing to free non-EFI allocated resource %s at 0x%llx\n",
-			res->name, res->start);
-		*nfreed = -1;
-		return false;
-	}
-
-	if (nfreed >= 0)
-		++*nfreed;
-	return true;
-}
-
 // SPDX-SnippetBegin
 // SPDX-License-Identifier: GPL-2.0+
 // SPDX-SnippetCopyrightText: 2016 Alexander Graf
@@ -281,6 +264,22 @@ void *efi_alloc_aligned_pages(u64 len, int memory_type, size_t align,
 
 // SPDX-SnippetEnd
 
+static int free_efi_only(struct resource *res, void *data)
+{
+	int *nfreed = data;
+
+	if (!(res->flags & IORESOURCE_EFI_ALLOC)) {
+		pr_err("refusing to free non-EFI allocated resource %s at 0x%pap\n",
+			res->name, &res->start);
+		*nfreed = -1;
+		return false;
+	}
+
+	if (nfreed >= 0)
+		++*nfreed;
+	return true;
+}
+
 /**
  * efi_free_pages() - free memory pages
  *
-- 
2.47.3




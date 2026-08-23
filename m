Delivery-date: Sun, 23 Aug 2026 15:20:26 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wy87d-006LoS-0M
	for lore@lore.pengutronix.de;
	Sun, 23 Aug 2026 15:20:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5481D200F4F
	for <lore@pengutronix.de>; Sun, 23 Aug 2026 15:20:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=poXzMVdn;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bRymZgyd;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ul2tbkUbWh8aVuJ7jiCm0eSZWzIcUHxWto7RvMRPVGU=; b=poXzMVdnZfCBg8m5N2aFwD9a26
	JV7+xWHJjh13L5NXB2+SVApUmydmpBBhAnyXSJq9ijlsK3YAmXs8NDX09oRwBFmsjF4NUn7oC96XW
	n3JZvxQOyEGm3C9G+EDUZSWq3FQPIDzh54p9O1lovaLXxS7LJ0csblTPva4NjcZaN7pJyzHgI51Zp
	eLYl93bmN15544alcHLyYn7eBGU+7WGpk9yQ5M5ti/NhI6aWD1mVKowbdyRUIU6P0kWIFdW+I948a
	lnrVZZt5Yt+qtETheA/zYqyxfdvNdqDrNNDNjc+/9t7VSjKX2cSYUVYvdwN5LtP3bh4AkRymup9BB
	kUmi1b7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy86H-0000000FO0U-0sCJ;
	Sun, 23 Aug 2026 13:19:01 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wy86E-0000000FNzl-44no
	for barebox@lists.infradead.org;
	Sun, 23 Aug 2026 13:19:00 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4996f1ee4a4so16462595e9.2
        for <barebox@lists.infradead.org>; Sun, 23 Aug 2026 06:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787491136; x=1788095936; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ul2tbkUbWh8aVuJ7jiCm0eSZWzIcUHxWto7RvMRPVGU=;
        b=bRymZgydJDVuhSu9GzYcx6ZsR1ZepR2Zf811kskZLEFmS9QcUQhmyaPMGnwnu9qlUq
         osNFDK2RjsXOjGiYfDjDPmYeYGDDT8breGAHFAkfV0+OxVI6Jvy2whlvaTwfqRKihNtF
         5voXRF3k/37zm/uMdS5qc2/81I9DvJl3uVGaqjEX91mlXE0Jnmlty3x/D24OI2dRMHUV
         cpTjBZdeCRWJOhhQ7bFUU7JBFwA/Q4Ge7EKE5+hOlgsIgOW9kh1OXmmHGPPbupVrcGjq
         xqZi3kNNiT0r4h0Fumr1t8xsELXBH7Y6gOI1RYRghZLpEEYfsF0HbCkmUgR4qT8GVVAG
         xBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787491136; x=1788095936;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ul2tbkUbWh8aVuJ7jiCm0eSZWzIcUHxWto7RvMRPVGU=;
        b=G2Q2fRa6W9TFetRp01zp6GcuC/GWPPtg9u/vfQYdVFdaasvrTKySiDT77VMsJVL8oo
         db0By7/xwP6PNb8wkMHlx+jBCdnzcuJEK0LRFr/rhjEY2SSAJ451O6QedMkoOIWcnHI6
         DuXrL8yeBrEVtwQpavkkQ7njgH76fpTiTuYUbdxRJuCVAvY4ZhUfNaTJlqfp1QVlvyuo
         NgXm8hCi4/ax71Cx5ZM76toinJOpO7ZkZ4aIxrcfSfqBHBKEjCh6cyDBtEpI1xl2srt1
         /BdqcdRg9DTgSkhs56DJtLQJ/hsnormzdPc2+s8AFQbKajxEWeohyklNk4G8rCd2FXHM
         5M9g==
X-Gm-Message-State: AFuF++l3s+OR5x1ocbZIOiTXUoCmfAqZE+CYbSBYrDDcw3YP+fzYsOQo
	P4vK0tjQb/UnkLuQkmoFDap1ZVX3jL9JJrchlRhizHX4N2m/TdURBYOwPSRg8g==
X-Gm-Gg: AR+sD12T4g10A6HT717ru/SvDoIMvi+hs0AW2juL1RVT/lUmjEuSDAtBvtoRsvC6nDg
	i9u4E6W8PXKAZu6QVOt6N9/NGpZJwDYItzrLD9iNbFdjPmmGLjjcSlELugqiDQuF90oERQ8HeTN
	IqZ7H9a7qhiOL+5y/1E9tFb7/2whhlmhKdnM3YfaKVokBgmaV7VhWpgwj5QMNVrUmWQIrQMMkyn
	sz0vBW3YyQhVqCIi4bUGgMs9ITA0P1aS3ewj07NDDEBs9zLOg4kzQgnAoZKuNlFTrz90Z+mzYNd
	Rf4boUdvK/+pSBAgenJwb8RkZM5dfNOwUaDj5b9pSM2qUe+97nDNyzyZWFPSwCdcEv7X509WcD/
	uA4lLb7Fh7cjtWC5v0pEkl7pduZEb2YJ4JeYZVXG8Sj7FyNkbHSfiTl33N+ptUwt5/KhewuOVqV
	6cntdsMNBuGRAXi6x90/Dr7+QjSGm0TfRkcGKg03zj7zPbN1JQPBfyloXgKscZU//BwePXxfeuk
	gRohur+OT2u3ylLiv7b2tRZ48SmnalRJoGnfv0sL0xO6X1JdilVVvqCimiswAKol6AlNGhNZq4g
	6s9SDkLWeA==
X-Received: by 2002:a05:600c:1387:b0:499:7a4f:d13d with SMTP id 5b1f17b1804b1-499b8313ad3mr181423465e9.4.1787491136227;
        Sun, 23 Aug 2026 06:18:56 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499c9019e99sm25393845e9.4.2026.08.23.06.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2026 06:18:55 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH] efi: payload: apply barebox fixups to the devicetree passed to Linux
Date: Sun, 23 Aug 2026 15:18:52 +0200
Message-ID: <20260823131852.364978-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_061859_057698_79A4E9E1 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis efi_load_fdt() never ran barebox's fixup/overlay
    pipeline on the devicetree it handed to the kernel. When bootm.oftree was
    set, the raw file bytes were extracted straight into EFI pages and installed
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:332 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Stat-Signature: x3uwwy5dgjpamsbhdc3xy7ymjxpk1nt6
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::332:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 5481D200F4F

From: Chali Anis <chalianis1@gmail.com>

efi_load_fdt() never ran barebox's fixup/overlay pipeline on the
devicetree it handed to the kernel. When bootm.oftree was set, the
raw file bytes were extracted straight into EFI pages and installed
as-is via loadable_extract_into_buf_full(); of_unflatten_dtb(),
of_fix_tree() and of_flatten_dtb() were never called. When
bootm.oftree was unset, the function just returned early, so there
was no path at all for adopting (and fixing up) a devicetree already
exposed by firmware. Either way, none of barebox's usual fixups --
memory nodes, bootargs, state, overlays, and everything else hung
off of_register_fixup() -- ever reached the tree Linux booted with.

Fix this for both sources: add efi_fdt_find() to locate the FDT
firmware exposes via its EFI configuration table, and have
efi_load_fdt() fall back to it when no bootm.oftree is set. Whichever
tree is in play, unflatten it into data->of_root_node, run it through
the standard bootm_set_pending_oftree_overlays()/of_fix_tree()
sequence, reflatten it, and install the fixed-up result as the UEFI
configuration table -- matching what every other barebox boot path
already guarantees.

While here, size the FDT allocation/free from the actual flattened
tree instead of a fixed 2 MiB buffer, and reuse efi_fdt_find() in the
existing efi_fdt_probe() initcall so both callers share one
EFI-configuration-table lookup instead of duplicating it.

Assisted-by: Claude Sonnet 5
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/bootm.c   | 58 +++++++++++++++++++++++++++++++++++--------
 efi/payload/fdt.c     | 34 +++++++++++++++++--------
 include/efi/payload.h | 10 ++++++++
 3 files changed, 81 insertions(+), 21 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 2f9cc3cbf76b..094b2e9c6466 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -111,27 +111,59 @@ static int efi_load_ramdisk(struct image_data *data,
 static int efi_load_fdt(struct image_data *data, void **fdt)
 {
 	efi_physical_addr_t mem;
+	struct fdt_header *oftree;
+	bool is_loadable = true;
 	efi_status_t efiret;
+	size_t size;
 	void *vmem;
-	size_t bufsize = DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE);
-	ssize_t ret;
+	int ret;
+
+	if (!data->oftree) {
+		/*
+		 * No devicetree requested; fall back to the one provided by
+		 * firmware (if any) so barebox's fixups still get applied to it.
+		 */
+		oftree = efi_fdt_find(&size);
+		is_loadable = false;
+	} else {
+		oftree = loadable_extract(data->oftree, &size) ?: ERR_PTR(-ENODATA);
+		if (IS_ERR(oftree))
+			pr_warn("Failed to extract oftree\n");
+	}
 
-	if (!data->oftree)
+	if (IS_ERR(oftree))
 		return 0;
 
+	data->of_root_node = of_unflatten_dtb(oftree, size);
+	if (IS_ERR(data->of_root_node)) {
+		data->of_root_node = NULL;
+		pr_err("unable to unflatten devicetree\n");
+		return -EINVAL;
+	}
+
+	if (is_loadable)
+		free(oftree);
+
+	bootm_set_pending_oftree_overlays(data->oftree);
+	of_fix_tree(data->of_root_node);
+	bootm_clear_pending_oftree_overlays();
+
+	oftree = of_flatten_dtb(data->of_root_node);
+	if (!oftree)
+		return -EINVAL;
+
+	size = DIV_ROUND_UP(fdt_totalsize(oftree), EFI_PAGE_SIZE);
 	efiret = BS->allocate_pages(EFI_ALLOCATE_ANY_PAGES, EFI_ACPI_RECLAIM_MEMORY,
-				    bufsize, &mem);
+				    size, &mem);
 	if (EFI_ERROR(efiret)) {
 		pr_err("Failed to allocate pages for FDT: %s\n", efi_strerror(efiret));
-		return -efi_errno(efiret);
+		ret = -efi_errno(efiret);
+		goto free_oftree;
 	}
 
 	vmem = efi_phys_to_virt(mem);
 
-	ret = loadable_extract_into_buf_full(data->oftree, vmem,
-					     bufsize * EFI_PAGE_SIZE);
-	if (ret < 0)
-		goto free_efi_mem;
+	memcpy(vmem, oftree, fdt_totalsize(oftree));
 
 	efiret = BS->install_configuration_table(&efi_fdt_guid, vmem);
 	if (EFI_ERROR(efiret)) {
@@ -140,11 +172,14 @@ static int efi_load_fdt(struct image_data *data, void **fdt)
 		goto free_efi_mem;
 	}
 
+	free(oftree);
 	*fdt = vmem;
 	return 0;
 
 free_efi_mem:
-	BS->free_pages(mem, bufsize);
+	BS->free_pages(mem, size);
+free_oftree:
+	free(oftree);
 	return ret;
 }
 
@@ -153,8 +188,9 @@ static void efi_unload_fdt(void *fdt)
 	if (!fdt)
 		return;
 
+	size_t size = DIV_ROUND_UP(fdt_totalsize(fdt), EFI_PAGE_SIZE);
 	BS->install_configuration_table(&efi_fdt_guid, NULL);
-	BS->free_pages(efi_virt_to_phys(fdt), DIV_ROUND_UP(SZ_2M, EFI_PAGE_SIZE));
+	BS->free_pages(efi_virt_to_phys(fdt), size);
 }
 
 static int do_bootm_efi_stub(struct image_data *data)
diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index 9cdb32370f22..80e6a1fcec21 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -9,14 +9,14 @@
 #include <efi/payload/init.h>
 #include <efi/guid.h>
 
-static int efi_fdt_probe(void)
+void *efi_fdt_find(size_t *size)
 {
 	struct efi_config_table *ect;
+	*size = 0;
 
 	for_each_efi_config_table(ect) {
 		struct fdt_header *oftree;
-		u32 magic, size;
-		int ret;
+		u32 magic;
 
 		if (efi_guidcmp(ect->guid, EFI_DEVICE_TREE_GUID))
 			continue;
@@ -26,17 +26,31 @@ static int efi_fdt_probe(void)
 
 		if (magic != FDT_MAGIC) {
 			pr_err("table has invalid magic 0x%08x\n", magic);
-			return -EILSEQ;
+			return ERR_PTR(-EILSEQ);
 		}
 
-		size = be32_to_cpu(oftree->totalsize);
-		ret = write_file("/efi.dtb", oftree, size);
-		if (ret) {
-			pr_err("error saving /efi.dtb: %pe\n", ERR_PTR(ret));
-			return ret;
-		}
+		*size = fdt_totalsize(oftree);
+		return oftree;
+	}
+
+	pr_warn("No FDT found in EFI configuration tables\n");
+	return ERR_PTR(-ENODATA);
+}
 
+static int efi_fdt_probe(void)
+{
+	struct fdt_header *oftree;
+	size_t size;
+	int ret;
+
+	oftree = efi_fdt_find(&size);
+	if (IS_ERR(oftree) || !size)
 		return 0;
+
+	ret = write_file("/efi.dtb", oftree, size);
+	if (ret) {
+		pr_err("error saving /efi.dtb: %pe\n", ERR_PTR(ret));
+		return ret;
 	}
 
 	return 0;
diff --git a/include/efi/payload.h b/include/efi/payload.h
index 381598ba59f2..8dc09dd5acdc 100644
--- a/include/efi/payload.h
+++ b/include/efi/payload.h
@@ -34,4 +34,14 @@ __attribute__((noreturn)) void efi_main(efi_handle_t, struct efi_system_table *)
 	     t - efi_sys_table->tables < efi_sys_table->nr_tables; \
 	     t++)
 
+#if IS_ENABLED(CONFIG_OFTREE)
+void *efi_fdt_find(size_t *size);
+#else
+static inline void *efi_fdt_find(size_t *size)
+{
+	*size = 0;
+	return NULL;
+}
+#endif
+
 #endif



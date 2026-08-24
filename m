Delivery-date: Tue, 25 Aug 2026 01:45:35 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyeMA-006sIN-0F
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 01:45:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 495DD201BD1
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 01:45:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G08tg5pg;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=dYCJgcqv;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z1X2DQs5ST5bNPBGgkg4yCfGQJ1NByaaJGuQAil/Jwg=; b=G08tg5pg/hT5z+9XRPRuqQ4y+u
	RCL2iO1tAUQW7IA+ku47qzQFxiNX3sBjfpO+gvYuBB0lmLRI+qWDRR1U0C3CIlRzY/H/+Xb8m5X0r
	Ya9oDyhDtJKBBHO/ewyqMh6fB7MUDhiUr2vjYcy6lKekNRz/fu4RHQsCcRwmVNFG+OCDo1GvUyG2E
	oZxsXPKmQhHhhRtC6UpVy75K9cTnKInNE0HbnPdFCSm0xr4/2khbkIhn/d/JFk4iT+Opomko0Pj2n
	rWPSCmc1gseE+R03evMez4IIIOHixFEVxFudd/KsBHSvy19xidDTv2tgIOrIdDEmtISRnvi9Byhzf
	gkv2nrSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeKe-0000000HVEu-31xH;
	Mon, 24 Aug 2026 23:44:00 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeKb-0000000HVEA-1rDX
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 23:43:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-499b02fc590so25165595e9.2
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 16:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787615035; x=1788219835; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z1X2DQs5ST5bNPBGgkg4yCfGQJ1NByaaJGuQAil/Jwg=;
        b=dYCJgcqv3wzBfNizYI72DRoRbhUrhIjc2owOrvAEo9e4eujCr5BDf3/gdiTQWW7A5R
         jhTKvLIYOmvHQCw1pbEd6KUvhTQWs78ZBPRivpTxgbnW7GKcm+/NTihhT3t4jo3u8lbL
         vzmkpIuBJlOc8tzIRCE0XKS8/PbPdqaPgVNhSOB7FJ24nZTs22iSE/FWAb+7Ul4yT3Tp
         fkOebgoi9pzoRoT1FWlJ/Wje68xvGNHeUTeHgHl0TtCswIiF4+5MrzX8ZhsrR/8tyXQV
         Py8NfbV6Pg65oCMfg9BvGB12eOogEwgKFdDazPPLdbw7hO7dcVx1typSvyhuVONDgZmJ
         zeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787615035; x=1788219835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=z1X2DQs5ST5bNPBGgkg4yCfGQJ1NByaaJGuQAil/Jwg=;
        b=XyBqfpmOZN+zxpTw2WewXb/w0z/SQqqaAzvRxtr0qyxA4GFrf2M44m2wl6ocKiBuiT
         nozO35QOAnXwge17F+/TgGsGIarUO9sfG7Z+JKxgRqpnvtt4fAR0+qeSbvi73qI2V6Is
         vTuiZ5YEB2nNpWvhUePBr3M3iubSSoXEm17xg9dqKnTsgiVbuZeVwXqfeaS+dZik0qZR
         KRLHyYMmxE3rspspXt7dv2UYIOA5sqE/GCnlaoGsrOOiBIm8ITz2+FlH2PCpqLSBpQxU
         NKHWLi4RPmkUjmCQbuXk6srVoO51uNJl2kO+1plyOeSG0R3f7f72kpX2cy1dD+Cs7pAe
         dBzQ==
X-Gm-Message-State: AFuF++lSibA4BDr0NDTQedUlEs45bBaoMqJ0n0OMuqSeImUXUcSyjMtp
	7Zz+DOHnU4cymjihlqr8NirukntO5Rr9nI/cePmN80SnBuLBeeK76Z45
X-Gm-Gg: AR+sD12lNvpGBhFnS3ant46VXY6PLYGICJouyKv4v2yU09orUjYsVZ+vYrmbFuuENYX
	teR67VDLSMc9iquXqry/FgAlEpBYGSfS8Gm7eTxGCykXVLzWQfJlvAna9AWHvBg4ow7FX5/p3wB
	IJxScAz3RHUJT6A4ZNB4gTYQmbwiu/IPVvMi5IOtgT0vCvL/v2GSSFblSwaETRZtj7gIF/1BYny
	Deo9S3MCq3gQvheiOvNOd5ohLkPtKVjqGlcWeCHT5/YivERc76qGe9wR/YHboVltHsQm43Miz2I
	ZoAlC9YaQ+jqy8VMlkDP9PtKyYxfXTYrAmItkDYUxPwW0bzH5hKymdh/82isXX0RaXzwf6fJXRJ
	3ZeUDUpIlHAY8+CKb/YZUQCJDQ3C+bMSHgk8hPFnM3F01UuyKMxp24HcIFb4Fj5y6lkQYhhfZA6
	V+9knZQoks+P3KLzN847jPCUe/1AJZNUCyaNDNTDfgyFr+VCujf0GS6YFYAVSDmql9AyWkB9qDQ
	0lQv9b6NZUFIec7sX1MVXedtHbNiZdwROtoGcwI2y5prLx3/m6v6K63SWADsB+KYO0PM7ZW3Jdd
	hZpIPnEq4g==
X-Received: by 2002:a05:600c:c3db:10b0:499:cd34:f7c with SMTP id 5b1f17b1804b1-499cd3410bdmr150506955e9.5.1787615035415;
        Mon, 24 Aug 2026 16:43:55 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499d5d7cccbsm6861075e9.3.2026.08.24.16.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 16:43:53 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>,
	Claude Sonnet 5 <noreply@anthropic.com>
Subject: [PATCH v2 1/1] efi: payload: apply barebox fixups to the devicetree passed to Linux
Date: Tue, 25 Aug 2026 01:43:45 +0200
Message-ID: <20260824234345.84068-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260824234345.84068-1-chalianis1@gmail.com>
References: <20260824234345.84068-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_164357_597181_12D9C57F 
X-CRM114-Status: GOOD (  23.44  )
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
                             [2a00:1450:4864:20:0:0:0:334 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Stat-Signature: e5j1fsetoa8o4z7pz99ffb1sa4q6w9so
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
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com,anthropic.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::334:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 495DD201BD1

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

Assisted-by: Claude Sonnet 5 <noreply@anthropic.com>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/bootm.c   | 60 ++++++++++++++++++++++++++++++-------
 efi/payload/fdt.c     | 34 ++++++++++++++-------
 efi/payload/init.c    | 69 +++++++++++++++++++++++++++++++++++++++++++
 include/efi/payload.h | 10 +++++++
 4 files changed, 152 insertions(+), 21 deletions(-)

diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
index 2f9cc3cbf76b..b9e1d9438e1c 100644
--- a/efi/payload/bootm.c
+++ b/efi/payload/bootm.c
@@ -111,27 +111,61 @@ static int efi_load_ramdisk(struct image_data *data,
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
+	fdt_add_reserve_map(oftree);
+
+	size = efi_size_in_pages(fdt_totalsize(oftree) + 0x3000);
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
@@ -140,11 +174,14 @@ static int efi_load_fdt(struct image_data *data, void **fdt)
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
 
@@ -153,8 +190,9 @@ static void efi_unload_fdt(void *fdt)
 	if (!fdt)
 		return;
 
+	size_t size = efi_size_in_pages(fdt_totalsize(fdt) + 0x3000);
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
diff --git a/efi/payload/init.c b/efi/payload/init.c
index 6d2bd046e4c2..f0ce2a82cefc 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -203,6 +203,75 @@ static int efi_core_init(void)
 }
 core_efi_initcall(efi_core_init);
 
+/**
+ * efi_of_fixup_firmware_nodes() - import firmware-injected nodes onto @root
+ *
+ * A devicetree supplied out-of-band (e.g. embedded in a FIT image) was
+ * flattened at build time, so it can never carry nodes that firmware only
+ * adds to its own devicetree at runtime - most importantly the
+ * /reserved-memory carve-outs TF-A/OP-TEE add to mark their own
+ * secure-world memory off-limits (as child nodes, e.g. tegra-carveouts on
+ * Tegra), and the /firmware node describing the secure monitor call
+ * conduit. /firmware is copied wholesale, replacing whatever @root already
+ * had there. /reserved-memory is merged child by child instead, since
+ * @root may already carry its own reservations alongside firmware's:
+ * each child firmware's tree has is copied into @root's /reserved-memory
+ * (created if necessary), replacing any child of the same name @root
+ * already had.
+ */
+static int efi_of_fixup_firmware_nodes(struct device_node *root, void *unused)
+{
+	struct fdt_header *fw_oftree;
+	struct device_node *fw_root, *fw_firmware, *fw_resmem, *dst_resmem;
+	struct device_node *dst;
+	size_t fw_size;
+
+	fw_oftree = efi_fdt_find(&fw_size);
+	if (IS_ERR(fw_oftree))
+		return 0;
+
+	fw_root = of_unflatten_dtb(fw_oftree, fw_size);
+	if (IS_ERR(fw_root))
+		return 0;
+
+	fw_firmware = of_get_child_by_name(fw_root, "firmware");
+	if (fw_firmware) {
+		dst = of_get_child_by_name(root, "firmware");
+		if (dst)
+			of_delete_node(dst);
+
+		of_copy_node(root, fw_firmware);
+	}
+
+	fw_resmem = of_get_child_by_name(fw_root, "reserved-memory");
+	if (fw_resmem) {
+		dst_resmem = of_get_child_by_name(root, "reserved-memory");
+		if (!dst_resmem) {
+			of_copy_node(root, fw_resmem);
+		} else {
+			struct device_node *child;
+
+			for_each_child_of_node(fw_resmem, child) {
+				dst = of_get_child_by_name(dst_resmem, child->name);
+				if (dst)
+					of_delete_node(dst);
+
+				of_copy_node(dst_resmem, child);
+			}
+		}
+	}
+
+	of_delete_node(fw_root);
+
+	return 0;
+}
+
+static int efi_register_firmware_nodes_fixup(void)
+{
+	return of_register_fixup(efi_of_fixup_firmware_nodes, NULL);
+}
+core_efi_initcall(efi_register_firmware_nodes_fixup);
+
 /* Features of the loader, i.e. systemd-boot, barebox (imported from systemd) */
 #define EFI_LOADER_FEATURE_CONFIG_TIMEOUT          (1LL << 0)
 #define EFI_LOADER_FEATURE_CONFIG_TIMEOUT_ONE_SHOT (1LL << 1)
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



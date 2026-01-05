Delivery-date: Mon, 05 Jan 2026 09:07:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcz-001S3l-2w
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcx-0008CN-Qa
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LPwxfvItWDf/uv0wTIPog3JFWsOqH13p4Svxbht7zQg=; b=ptMXXhUrNW0krrhL3Dyxe0vyM3
	z6o+qllcVwaHt9eSI5qZBiT/bz7G999d13FObM0LXXcz/8JdZx12LDRDinEII7NvzXuD7BUivBCJB
	nvBUF4w8vyrlbRvGtMh/Sjx+XUcibYEqtvhLYN4iHz1qUgsrXuJ9pdnbVDYDDtYyilvljWROCBew1
	CXoV3T+pctG4k4uCB1UpU1zENo+FYRolDaJwqfov6diwPabnvWZL9EDhVXMNCDrFrlusljG4kZJIp
	GUCAnF5NJmfNov5cvSkmwbdO10x2r5qVS8MAst/8PvfE0kEkFQ0ryQ5BRRgCS3bBV2AaXX59OUOTL
	6K2QgmLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcI-0000000Ax53-2a1D;
	Mon, 05 Jan 2026 08:07:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcG-0000000Ax31-3fF7
	for barebox@bombadil.infradead.org;
	Mon, 05 Jan 2026 08:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LPwxfvItWDf/uv0wTIPog3JFWsOqH13p4Svxbht7zQg=; b=n45Fj0avJbqtgJydPmaEvmz7hC
	ED/cvsYwyQysCRgkcihjPJC1ilzlb7zGlpeluMnl27dNHmZD6OtYtwHIvMnhIokgvjcPwTb4XZnRn
	IEnjH1VyoYy5S3Wrkb6YsO8uaEIdxrStqv3oRULLXgMSUMjCAyeGmSDxetK+MvBHBNG1C0YzdYreP
	vValA2KWlBWiwJC6s4j42CTRM5JvXQolXNjyHYj6/urbIQpiOeJHPNPcnVaJq9lJXteUd6jGTDDEM
	GJfdoXfxco9MB1Lg96YsscIKUCbpawQv83XWjxhdN0Z461Rhl0SDOhdlPavQnYdz+IHbknNcrpmou
	LLrkioZA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcE-00000007oBP-0GrT
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfcB-0007f0-1B; Mon, 05 Jan 2026 09:06:59 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:42 +0100
Message-ID: <20260105080653.3240497-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_080702_179334_8BB69E27 
X-CRM114-Status: GOOD (  11.67  )
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
Subject: [PATCH 10/10] memory: drop now duplicate request_sdram_region error messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have a general printout inside request_sdram_region, let's
drop the now unneeded duplicate prints.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/bootm.c | 13 ++-----------
 arch/arm/lib32/bootz.c |  4 +---
 common/bootm-fit.c     | 15 +++------------
 common/bootm.c         |  7 +------
 common/uimage.c        | 12 ++----------
 lib/libfile.c          |  5 +----
 6 files changed, 10 insertions(+), 46 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index dca4fec0204c..c641310147ec 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -162,12 +162,8 @@ static int optee_verify_header_request_region(struct image_data *data, struct op
 
 	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size,
 					     MEMTYPE_RESERVED, MEMATTRS_RW_DEVICE);
-	if (!data->tee_res) {
-		pr_err("Cannot request SDRAM region 0x%08x-0x%08x: %pe\n",
-		       hdr->init_load_addr_lo, hdr->init_load_addr_lo + hdr->init_size - 1,
-		       ERR_PTR(-EINVAL));
+	if (!data->tee_res)
 		return -EINVAL;
-	}
 
 	return 0;
 }
@@ -509,8 +505,6 @@ static int do_bootz_linux(struct image_data *data)
 	data->os_res = request_sdram_region("zimage", load_address, image_size,
 					    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 	if (!data->os_res) {
-		pr_err("bootm/zImage: failed to request memory at 0x%lx to 0x%lx (%zu).\n",
-		       load_address, load_address + image_size, image_size);
 		ret = -ENOMEM;
 		goto err_out;
 	}
@@ -634,15 +628,12 @@ static int do_bootm_aimage(struct image_data *data)
 	data->os_res = request_sdram_region("akernel", cmp->load_addr, cmp->size,
 					    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 	if (!data->os_res) {
-		pr_err("Cannot request region 0x%08x - 0x%08x, using default load address\n",
-				cmp->load_addr, cmp->size);
+		pr_err("using default load address\n");
 
 		data->os_address = mem_start + PAGE_ALIGN(cmp->size * 4);
 		data->os_res = request_sdram_region("akernel", data->os_address, cmp->size,
 						    MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
 		if (!data->os_res) {
-			pr_err("Cannot request region 0x%08x - 0x%08x\n",
-					cmp->load_addr, cmp->size);
 			ret = -ENOMEM;
 			goto err_out;
 		}
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index 0ace36271026..5aa762b4912d 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -90,10 +90,8 @@ static int do_bootz(int argc, char *argv[])
 					bank->res->start + SZ_8M, end,
 					MEMTYPE_LOADER_CODE,
 					MEMATTRS_RWX);
-			if (!res) {
-				printf("can't request region for kernel\n");
+			if (!res)
 				goto err_out1;
-			}
 		}
 
 		memcpy(zimage, header, sizeof(*header));
diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index f9c8bff43912..3b2252ca8810 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -26,13 +26,9 @@ int bootm_load_fit_os(struct image_data *data, unsigned long load_address)
 	data->os_res = request_sdram_region("kernel",
 			load_address, kernel_size,
 			MEMTYPE_LOADER_CODE, MEMATTRS_RWX);
-	if (!data->os_res) {
-		pr_err("unable to request SDRAM region for kernel at"
-				" 0x%08llx-0x%08llx\n",
-			(unsigned long long)load_address,
-			(unsigned long long)load_address + kernel_size - 1);
+	if (!data->os_res)
 		return -ENOMEM;
-	}
+
 	zero_page_memcpy((void *)load_address, kernel, kernel_size);
 	return 0;
 }
@@ -75,13 +71,8 @@ struct resource *bootm_load_fit_initrd(struct image_data *data, unsigned long lo
 	res = request_sdram_region("initrd",
 				   load_address, initrd_size,
 				   MEMTYPE_LOADER_DATA, MEMATTRS_RW);
-	if (!res) {
-		pr_err("unable to request SDRAM region for initrd at"
-				" 0x%08llx-0x%08llx\n",
-			(unsigned long long)load_address,
-			(unsigned long long)load_address + initrd_size - 1);
+	if (!res)
 		return ERR_PTR(-ENOMEM);
-	}
 
 	memcpy((void *)load_address, initrd, initrd_size);
 	return res;
diff --git a/common/bootm.c b/common/bootm.c
index 933e9dfc69fe..3998443e1aff 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -450,13 +450,8 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 
 	data->oftree_res = request_sdram_region("oftree", load_address,
 			fdt_size, MEMTYPE_LOADER_DATA, MEMATTRS_RW);
-	if (!data->oftree_res) {
-		pr_err("unable to request SDRAM region for device tree at"
-				" 0x%08llx-0x%08llx\n",
-			(unsigned long long)load_address,
-			(unsigned long long)load_address + fdt_size - 1);
+	if (!data->oftree_res)
 		return -ENOMEM;
-	}
 
 	memcpy((void *)data->oftree_res->start, fdt, fdt_size);
 
diff --git a/common/uimage.c b/common/uimage.c
index 3e456e9c58ab..5f7087475709 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -349,12 +349,8 @@ static long uimage_sdram_flush(void *buf, unsigned long len)
 		uimage_resource = request_sdram_region("uimage",
 				start, size, MEMTYPE_LOADER_CODE,
 				MEMATTRS_RWX);
-		if (!uimage_resource) {
-			resource_size_t prsize = start + size - 1;
-			printf("unable to request SDRAM %pa - %pa\n",
-				&start, &prsize);
+		if (!uimage_resource)
 			return -ENOMEM;
-		}
 	}
 
 	if (zero_page_contains((unsigned long)uimage_buf + uimage_size))
@@ -388,12 +384,8 @@ struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
 	uimage_resource = request_sdram_region("uimage",
 				start, size, MEMTYPE_LOADER_CODE,
 				MEMATTRS_RWX);
-	if (!uimage_resource) {
-		printf("unable to request SDRAM 0x%08llx-0x%08llx\n",
-			(unsigned long long)start,
-			(unsigned long long)start + size - 1);
+	if (!uimage_resource)
 		return NULL;
-	}
 
 	ret = uimage_load(handle, image_no, uimage_sdram_flush);
 	if (ret) {
diff --git a/lib/libfile.c b/lib/libfile.c
index 01189773b7e3..6b4adc90a0b5 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -789,11 +789,8 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr,
 
 		res = request_sdram_region("image", adr, size,
 					   memtype, memattrs);
-		if (!res) {
-			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
-				adr, adr + size - 1);
+		if (!res)
 			goto out;
-		}
 
 		if (zero_page_contains(res->start + ofs)) {
 			void *tmp = malloc(BUFSIZ);
-- 
2.47.3




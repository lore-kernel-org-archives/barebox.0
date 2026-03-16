Delivery-date: Mon, 16 Mar 2026 18:21:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdU-001Vee-12
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:21:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdS-0004yR-BQ
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:21:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uWgK+jxsPk6HUoHeKhNyubvZ4I/739OAdAYlPQ/6kBM=; b=M85b9TdyuWe4rGf/4s//EXaTK+
	Qt/9619V1el5ROJQNiYUIbq9szLK4Byb+/RhaEVnfK8KQUk0kjNlelffBqHM7FtbF6U61H3/H4Eup
	+2mfYDLBbGFuFQCG2bMvWpi5Zb9O7vhY1ten8NehE8RQq/5NdOqoomjfQCLwpfJggQB7v/xGPyK3U
	nRKiWL5LdcmwNay5GOJVb2YlwHDXNRdNOBiVSOUXXbryh0IWS6WIdKrz+6z4QbBIDQvO1BTs/Gad0
	5BnMee9T8FqGt5JimB8AHaN5xmnWbEM0rGZnmthk+Pk6z/Yrtbrv1sgeO+p9V+Wxqg3DjEMy2WuSM
	2EHvOFug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd5-00000004Y2S-0TqM;
	Mon, 16 Mar 2026 17:21:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd3-00000004Y1U-43IA
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 17:21:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=uWgK+jxsPk6HUoHeKhNyubvZ4I/739OAdAYlPQ/6kBM=; b=DwWL15ulJ44327GoPrfDQamp+6
	wPDuasfNdIVAAsIYFQR8Mi6OadoLxQVD/4McaW3FcFpc8TJol1muQAZ+ysP9qD2S8KEozRTP89krC
	ltgAs9Xb7wHijhlFHwkOeuNvN108J88kHPgNjFak+kJbM9ZiJ2E5dYrfYvUR5ejmbQ41rubaSVZ4v
	2PIDwdaItpm6NWTXxMxxoREoDvOjHXct9p7tV95I6C52ROJp4SRohQfIXcmcd6Npo3u9WqQ//z4PU
	RZ0bNaKNWYcKpl6lDnxZRnGdQy34c6iEh4CbEAhIvbnkAXGUUiUrvfHG8Yq6wol6wHbnHw/QD3trp
	pRgQ22AA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd0-00000007JbQ-3mEe
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fh-4k; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi8-2W;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2iMp;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-8-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=3155;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JujKfYGHEZTs2le5HXOmdgL3SusTCuF62binANMDfdY=;
 b=b/9ymuo/6rYysUmz1okkgtXQF+2UVSBI5PJez+Hs8AAIr0gP2IkmXG+RoDmNn1DCrZd+PsfXf
 S1EWRoBEbPuDcX7plScMzsxOdFqIMiI48eOIP5gwzE3/sFQaDtsZxIO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_172119_038440_CC835D3D 
X-CRM114-Status: GOOD (  15.13  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] ARM: Rockchip: Use compressed OP-TEE binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rockchip images are often size constraint due to the ROM limiting the
maximum image size to 2MiB, at least when redundant copies on SD/eMMC
are desired. For this reason use the compressed variant of the OP-TEE
image.

FIXME: Uncompress address currently hardcoded.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 26 ++++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 0d26dfb740..2ba7f074ce 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -8,6 +8,7 @@
 #include <asm/atf_common.h>
 #include <asm/barebox-arm.h>
 #include <asm-generic/memory_layout.h>
+#include <asm-generic/sections.h>
 #include <mach/rockchip/dmc.h>
 #include <mach/rockchip/rockchip.h>
 #include <mach/rockchip/bootrom.h>
@@ -29,7 +30,12 @@ static void rk_scratch_save_optee_hdr(const struct optee_header *hdr)
 	rk_scratch->optee_hdr = *hdr;
 }
 
-static unsigned long load_elf64_image_phdr(const void *elf)
+static void *free_mem(void)
+{
+	return (void *)PTR_ALIGN(&__image_end, SZ_1M);
+}
+
+static unsigned long load_elf64_image_phdr(struct fwobj *bl31)
 {
 	const Elf64_Ehdr *ehdr; /* Elf header structure pointer */
 	const Elf64_Phdr *phdr; /* Program header structure pointer */
@@ -56,11 +62,17 @@ static unsigned long load_elf64_image_phdr(const void *elf)
 	return ehdr->e_entry;
 }
 
-static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
-			       size_t bl32_size)
+static uintptr_t rk_load_optee(uintptr_t bl32, struct fwobj *bl32_fw)
 {
-	const struct optee_header *hdr = bl32_image;
+	const struct optee_header *hdr;
 	struct optee_header dummy_hdr;
+	int ret;
+	void *bl32_image = free_mem();
+	size_t bl32_size = bl32_fw->uncompressed_size;
+
+	ret = fwobj_uncompress(bl32_fw, bl32_image);
+	if (ret)
+		panic("Failed to uncompress OP-TEE\n");
 
 	/* We already have ELF support for BL31, but adding it for BL32,
 	 * would require us to identify a range that fits all ELF
@@ -70,6 +82,8 @@ static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
 	 */
 	BUG_ON(memcmp(bl32_image, ELFMAG, 4) == 0);
 
+	hdr = bl32_image;
+
 	if (optee_verify_header(hdr) == 0) {
 		bl32_size -= sizeof(*hdr);
 		bl32_image += sizeof(*hdr);
@@ -119,7 +133,7 @@ static struct fwobj bl32; /* OP-TEE in barebox image */
 		optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;			\
 		get_builtin_firmware(atf_bin, &bl31);				\
 		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))			\
-			get_builtin_firmware(tee_bin, &bl32);			\
+			get_builtin_firmware_compressed(tee_bin, &bl32);	\
 	} while (0)
 
 
@@ -130,7 +144,7 @@ static void rockchip_atf_load_bl31(void *fdt)
 	bl31_ep = load_elf64_image_phdr(bl31.data);
 
 	if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))
-		optee_load_address = rk_load_optee(optee_load_address, bl32.data, bl32.size);
+		optee_load_address = rk_load_optee(optee_load_address, &bl32);
 
 	/* Setup an initial stack for EL2 */
 	asm volatile("msr sp_el2, %0" : :

-- 
2.47.3




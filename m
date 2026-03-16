Delivery-date: Mon, 16 Mar 2026 18:21:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdV-001VfR-2H
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:21:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdV-00050O-2s
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:21:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qQ1dldbDU1oFeT8c8kEGx4DHUXkme8AUpAza/U476Wg=; b=zvMdHVslXq+561C9rufE6BtR5i
	Z2JPwNcWhiQ4Lf0N7zoz1NO1cG/PsPkblCYUD7T1KwLhRpAmP/IX7dXHrcfnLeiR5ZC01aMFiigKr
	p2IhvdgfN+SRqagqyZhQyqvD5kHkgcjDbzdZkCoxt2Cd+y0pQBgBZL+gLi0gfdBY2pIZvw7RSDFUv
	0VYkZ8zcLVQna+dN7MpX/zpT169QkV2WoZLLNaf7+e7Y/QDg/3tCLEHOJ+otJET3DfoVaECxg/yay
	SBGzmZ6t7Z1iPN1nsbVuCo4EoFM5m3/nuiW4QlBxZInnbL0sqUirgvKQSFMpkyJ2A0Wv871g0qjWT
	lsBxRhZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd5-00000004Y2o-1hHN;
	Mon, 16 Mar 2026 17:21:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd4-00000004Y1c-1U4D
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 17:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=qQ1dldbDU1oFeT8c8kEGx4DHUXkme8AUpAza/U476Wg=; b=iulMCVcTz6vTy5T1Mu8sieOQok
	+jhfsC+/sVb43P3Y0g2Vq8YvZm4Zj1RELbkWsJYzhfNuSHTiZQ/d6FpPmYY5ksbEe27/V6vRyrpUs
	SbLfws6iX0ippafD+LgIBsvIJTP5swRwmbVi77OO/fQ9lp2DJvwfMc+7znnyolCwISIogCnRdeiHZ
	lKdiwSOZOzg6JqubtlbKcDzcNk0MI1YzuFqA2/BFtmKFkGF3G34/cAc70lv51AfofIRF/qh4GfXdp
	KTlU8q3K052hwn08VMfdzst1n8xVfQLknFdVyiWV30Mws7dq9GMVhhOch3qLAa9GIRZf89rZEDjWt
	vWhiQJ1w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd1-00000007JbP-06nf
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fe-3T; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi9-2T;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2izx;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-9-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=2176;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=q2tZ4yuwiYlI1AhUjA4+36VfGCz3SuWw1BmDBNW2kGE=;
 b=5GuZ5E5zUYHa3tMRTpYRWF9Ab2NXmL/jzClRp+tDoosoLB11AnbDs29CvulhmYPd4pGSswpXs
 OP/RReaQ/dKBH5MQa0ik1Ofq5HXcemo754sNkkL1oRqoo6/0KZvEENY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_172119_231342_825DD7F9 
X-CRM114-Status: GOOD (  12.43  )
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
Subject: [PATCH 9/9] ARM: Rockchip: Use compressed TF-A binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rockchip images are often size constraint due to the ROM limiting the
maximum image size to 2MiB, at least when redundant copies on SD/eMMC
are desired. For this reason use the compressed variant of the TF-A
image.

FIXME: Uncompress address currently hardcoded.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 2ba7f074ce..3e0a14292b 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -39,15 +39,20 @@ static unsigned long load_elf64_image_phdr(struct fwobj *bl31)
 {
 	const Elf64_Ehdr *ehdr; /* Elf header structure pointer */
 	const Elf64_Phdr *phdr; /* Program header structure pointer */
-	int i;
+	int i, ret;
+	void *bl31_image = free_mem();
 
-	ehdr = elf;
-	phdr = elf + ehdr->e_phoff;
+	ret = fwobj_uncompress(bl31, bl31_image);
+	if (ret)
+		panic("Failed to uncompress TF-A\n");
+
+	ehdr = bl31_image;
+	phdr = bl31_image + ehdr->e_phoff;
 
 	/* Load each program header */
 	for (i = 0; i < ehdr->e_phnum; ++i) {
 		void *dst = (void *)(ulong)phdr->p_paddr;
-		const void *src = elf + phdr->p_offset;
+		const void *src = bl31_image + phdr->p_offset;
 
 		pr_debug("Loading phdr %i to 0x%p (%lu bytes)\n",
 			 i, dst, (ulong)phdr->p_filesz);
@@ -131,7 +136,7 @@ static struct fwobj bl32; /* OP-TEE in barebox image */
 	do {									\
 		barebox_load_address = SOC##_BAREBOX_LOAD_ADDRESS;		\
 		optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;			\
-		get_builtin_firmware(atf_bin, &bl31);				\
+		get_builtin_firmware_compressed(atf_bin, &bl31);		\
 		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))			\
 			get_builtin_firmware_compressed(tee_bin, &bl32);	\
 	} while (0)
@@ -141,7 +146,7 @@ static void rockchip_atf_load_bl31(void *fdt)
 {
 	unsigned long bl31_ep;
 
-	bl31_ep = load_elf64_image_phdr(bl31.data);
+	bl31_ep = load_elf64_image_phdr(&bl31);
 
 	if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))
 		optee_load_address = rk_load_optee(optee_load_address, &bl32);

-- 
2.47.3




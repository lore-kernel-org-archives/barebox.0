Delivery-date: Mon, 16 Mar 2026 18:21:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdU-001Vf1-2C
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:21:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdT-0004zY-QU
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:21:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eNP6G+4OOO1MldymGgg4gTlCkRwyKuHd8a2uNRULMWA=; b=Zly7Pu7xtRnYAs3YOFIgbQvrYJ
	qKhKdbANZzD1UT6kF/T1/Us+GFtPlnMLsacgNYICeqVjLD5JXvoT0DZWqjvdRYZQc3rnl0GDw5sAL
	Y5SG0YxMfZ2TUOCnMgLPiKR045gDhqKPK/xwn7IWeFDlii9Ku8nvQ0RqBejxzGy7V1+297UB4JBI0
	XGoHQIN5/ABDHRkUjSJaQNAUMHqX02Qio/4TAiEaWoPiJ/9wqDsfNswOHCbVsVdtmc9TJhHdYTMj4
	ceA0Hy8OmMk5SV+Xr13wBt8Czgv5aduvFdCoZ8CwNz6rc1Mi8Gc0lRmRvWbQOtW5kTDL4y0sob6wX
	GP0Csayg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd4-00000004Y2I-3UUi;
	Mon, 16 Mar 2026 17:21:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd1-00000004Y0F-3zMY
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fc-2I; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi2-2P;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2cFd;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-3-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=4913;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xOcUsR1YPoToC0KObgKwPxJEB5iydzg4bwL35QGyhHY=;
 b=NnjP+NXADgMtLB2jBXWZOWj6eGFWMbIJ51beiKZkQOXhFjPoI6iGGBkLLkB2WhKVUmmATZgbz
 IGEMzEOP2GlB9BIQAsZCa+UOJb5sjrMTOJLW0cqjRR6IG9DGGCntAI9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_102119_992868_5C32151B 
X-CRM114-Status: GOOD (  13.48  )
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
Subject: [PATCH 3/9] ARM: Rockchip: Simplify retrieval of SoC specific
 addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

due to the nature of get_builtin_firmware() and the preprocessor
resolving of defines rockchip_atf_load_bl31 needs to be a macro. This is
not nice to look at and shouldn't be extended. Extending it is what we
want to do in the next step, so rework this into a macro which only
retrieves the addresses and from the actual code create a function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 70 ++++++++++++++++++++++++++------------------
 1 file changed, 42 insertions(+), 28 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index a60b55ae24..8d7e505a99 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -108,34 +108,45 @@ static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
 	return bl32;
 }
 
-#define rockchip_atf_load_bl31(SOC, atf_bin, tee_bin, fdt) do {                 \
-	const void *bl31_elf, *optee;                                           \
-	unsigned long bl31;                                                     \
-	size_t bl31_elf_size, optee_size;                                       \
-	uintptr_t optee_load_address = 0;                                       \
-										\
-	get_builtin_firmware(atf_bin, &bl31_elf, &bl31_elf_size);               \
-										\
-	bl31 = load_elf64_image_phdr(bl31_elf);                                 \
-										\
-	if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE)) {                           \
-		get_builtin_firmware(tee_bin, &optee, &optee_size);             \
-		optee_load_address = rk_load_optee(SOC##_OPTEE_LOAD_ADDRESS,	\
-						   optee, optee_size);		\
-	}                                                                       \
-										\
-	/* Setup an initial stack for EL2 */                                    \
-	asm volatile("msr sp_el2, %0" : :                                       \
-			"r" ((ulong)SOC##_BAREBOX_LOAD_ADDRESS - 16) :		\
-			"cc");                                                  \
-										\
-	bl31_entry(bl31, optee_load_address,                                    \
-		   SOC##_BAREBOX_LOAD_ADDRESS, (uintptr_t)fdt);                 \
-} while (0)                                                                     \
+static uintptr_t barebox_load_address; /* where barebox is loaded and started */
+static uintptr_t optee_load_address; /* standard SoC specific OP-TEE load address */
+static const void *bl31; /* pointer to TF-A in barebox image */
+static size_t bl31_size; /* size of TF-A in barebox image */
+static const void *bl32; /* pointer to OP-TEE in barebox image */
+static size_t bl32_size; /* size of OP-TEE in barebox image */
+
+#define ROCKCHIP_GET_ADDRESSES(SOC, atf_bin, tee_bin)				\
+	do {									\
+		barebox_load_address = SOC##_BAREBOX_LOAD_ADDRESS;		\
+		optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;			\
+		get_builtin_firmware(atf_bin, &bl31, &bl31_size);		\
+		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))			\
+			get_builtin_firmware(tee_bin, &bl32, &bl32_size);	\
+	} while (0)
+
+
+static void rockchip_atf_load_bl31(void *fdt)
+{
+	unsigned long bl31_ep;
+
+	bl31_ep = load_elf64_image_phdr(bl31);
+
+	if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))
+		optee_load_address = rk_load_optee(optee_load_address, bl32, bl32_size);
+
+	/* Setup an initial stack for EL2 */
+	asm volatile("msr sp_el2, %0" : :
+			"r" ((ulong)barebox_load_address - 16) :
+			"cc");
+
+	bl31_entry(bl31_ep, optee_load_address,
+		   barebox_load_address, (uintptr_t)fdt);
+}
 
 void rk3562_atf_load_bl31(void *fdt)
 {
-	rockchip_atf_load_bl31(RK3562, rk3562_bl31_bin, rk3562_bl32_bin, fdt);
+	ROCKCHIP_GET_ADDRESSES(RK3562, rk3562_bl31_bin, rk3562_bl32_bin);
+	rockchip_atf_load_bl31(fdt);
 }
 
 void __noreturn rk3562_barebox_entry(void *fdt)
@@ -172,7 +183,8 @@ void __noreturn rk3562_barebox_entry(void *fdt)
 
 void rk3568_atf_load_bl31(void *fdt)
 {
-	rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin, rk3568_bl32_bin, fdt);
+	ROCKCHIP_GET_ADDRESSES(RK3568, rk3568_bl31_bin, rk3568_bl32_bin);
+	rockchip_atf_load_bl31(fdt);
 }
 
 void __noreturn rk3568_barebox_entry(void *fdt)
@@ -209,7 +221,8 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 
 void rk3588_atf_load_bl31(void *fdt)
 {
-	rockchip_atf_load_bl31(RK3588, rk3588_bl31_bin, rk3588_bl32_bin, fdt);
+	ROCKCHIP_GET_ADDRESSES(RK3588, rk3588_bl31_bin, rk3588_bl32_bin);
+	rockchip_atf_load_bl31(fdt);
 }
 
 static int rk3588_fixup_mem(void *fdt)
@@ -282,7 +295,8 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 
 void rk3576_atf_load_bl31(void *fdt)
 {
-	rockchip_atf_load_bl31(RK3576, rk3576_bl31_bin, rk3576_bl32_bin, fdt);
+	ROCKCHIP_GET_ADDRESSES(RK3576, rk3576_bl31_bin, rk3576_bl32_bin);
+	rockchip_atf_load_bl31(fdt);
 }
 
 void __noreturn rk3576_barebox_entry(void *fdt)

-- 
2.47.3




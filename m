Delivery-date: Mon, 08 Nov 2021 08:54:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTj-0005t4-VM
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 08:54:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTi-0004CI-Cj
	for lore@pengutronix.de; Mon, 08 Nov 2021 08:54:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2PJmrdvihTzUNxqI7lHcjpvFvv//mxizvQeTgLyWJo=; b=eUnqLWNOGqxPmW
	MNxsm8wezIji7nbzzrpC2qYt2JPD0Kw/qomEDQVoSUUOgp0mxerLWQPBpqwEmL7lJ1TBxN3DtsvJ4
	v3b5cE7W/fxtnnrN+hw01Jrf3Pi+5XGLYKTzGLOVkKGIZ5WwERAx/LwFPlkGAGZD2TxG1/AVn3s8u
	3FmVsy1om9zxLbaA1jYQNAsb1ejv15SBT3U03GqcMMQbT2vxl+o1mdYOM5rWb4XnsIBjASwckx7JH
	moLMHm7agizekNV63j1Ku02i7HU8VNlOLycOkdsZlKhUXbimjCa8CqETdQiyPPw/8Nsn24/V34cYq
	v7eQFhJw9sud91eUz9Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjzSK-00FdhX-Aj; Mon, 08 Nov 2021 07:52:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjzRz-00FdZ6-3d
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 07:52:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRv-0003kq-LS; Mon, 08 Nov 2021 08:52:15 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRu-009vit-UA; Mon, 08 Nov 2021 08:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Nov 2021 08:52:08 +0100
Message-Id: <20211108075209.2366770-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
References: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_235219_222561_A9ADDAEB 
X-CRM114-Status: GOOD (  12.53  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] ARM: Rockchip: make rk3568's atf_load_bl31 reusable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Future support for rk3399 can use the same function, so move the bulk
into a macro. We can't use a function here, because the function itself
uses macros like IS_ENABLED() and get_builtin_firmware(), which we
would have to call outside of the common code, reducing amount of code
we share.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 53 ++++++++++++++++++++----------------
 1 file changed, 29 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 3c4c9d1c8ae6..de22784489b5 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -33,30 +33,35 @@ static unsigned long load_elf64_image_phdr(const void *elf)
 	return ehdr->e_entry;
 }
 
-void rk3568_atf_load_bl31(void *fdt)
-{
-	const void *bl31_elf, *optee;
-	unsigned long bl31;
-	size_t bl31_elf_size, optee_size;
-	uintptr_t optee_load_address = 0;
-
-	get_builtin_firmware(rk3568_bl31_bin, &bl31_elf, &bl31_elf_size);
-
-	bl31 = load_elf64_image_phdr(bl31_elf);
-
-	if (IS_ENABLED(CONFIG_ARCH_RK3568_OPTEE)) {
-		optee_load_address = RK3568_OPTEE_LOAD_ADDRESS;
+#define rockchip_atf_load_bl31(SOC, atf_bin, tee_bin, fdt) do {                 \
+	const void *bl31_elf, *optee;                                           \
+	unsigned long bl31;                                                     \
+	size_t bl31_elf_size, optee_size;                                       \
+	uintptr_t optee_load_address = 0;                                       \
+										\
+	get_builtin_firmware(atf_bin, &bl31_elf, &bl31_elf_size);               \
+										\
+	bl31 = load_elf64_image_phdr(bl31_elf);                                 \
+										\
+	if (IS_ENABLED(CONFIG_ARCH_##SOC##_OPTEE)) {                            \
+		optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;                  \
+										\
+		get_builtin_firmware(tee_bin, &optee, &optee_size);             \
+										\
+		memcpy((void *)optee_load_address, optee, optee_size);          \
+	}                                                                       \
+										\
+	/* Setup an initial stack for EL2 */                                    \
+	asm volatile("msr sp_el2, %0" : :                                       \
+			"r" (SOC##_BAREBOX_LOAD_ADDRESS - 16) :                 \
+			"cc");                                                  \
+										\
+	bl31_entry(bl31, optee_load_address,                                    \
+		   SOC##_BAREBOX_LOAD_ADDRESS, (uintptr_t)fdt);                 \
+} while (0)                                                                     \
 
-		get_builtin_firmware(rk3568_op_tee_bin, &optee, &optee_size);
 
-		memcpy((void *)optee_load_address, optee, optee_size);
-	}
-
-	/* Setup an initial stack for EL2 */
-	asm volatile("msr sp_el2, %0" : :
-			"r" (RK3568_BAREBOX_LOAD_ADDRESS - 16) :
-			"cc");
-
-	bl31_entry(bl31, optee_load_address,
-		   RK3568_BAREBOX_LOAD_ADDRESS, (uintptr_t)fdt);
+void rk3568_atf_load_bl31(void *fdt)
+{
+	rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin, rk3568_op_tee_bin, fdt);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


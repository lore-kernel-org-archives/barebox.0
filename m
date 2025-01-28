Delivery-date: Tue, 28 Jan 2025 16:22:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcnQL-005ZF7-1E
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 16:22:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcnQL-000666-C4
	for lore@pengutronix.de; Tue, 28 Jan 2025 16:22:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ONyFCtWyllC3dWKhjJqRBQqKRZiCJbKXNJpEsEFejTg=; b=1XrT7VZRmR/VsXj+rlV60km5mO
	FqoAW2hY/deizpG/Gb7ohX1me7280L7N6pXCgYtDaZX4Pf1I4TZHrgFys6QSPnNBjXMRwoO3FsL37
	DKjMl5NX6oasvRA5timT+GTQXKCZlewNKe8WXZGMkCV3amjdkmcOR2Fxx17sdgtxSKXvd8JFXtTxE
	8AB5T7hZzuHMyr/ZKmIJIM0NAm8FCSdwmzj4HQ9dnehA+upFsk34H2ZZbMpkJw1HgPrgbS+u+ujEV
	zrXCwkEa+TP+F5eWK8Rn+ua9M8ih5aUPj5zx2wBJIFpcMLZX0QckwJzAsJmXizbmN++g7BJGJSYdd
	7S+Bas9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcnPw-00000005803-0hJg;
	Tue, 28 Jan 2025 15:22:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcnPt-000000057zT-1qJ9
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 15:22:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcnPs-0005yp-Ah
	for barebox@lists.infradead.org; Tue, 28 Jan 2025 16:22:16 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcnPs-002Jev-0P
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 16:22:16 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcnPs-004o9t-1d
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 16:22:16 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 28 Jan 2025 16:22:11 +0100
Message-Id: <20250128152211.1146024-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_072217_474074_941CAC31 
X-CRM114-Status: GOOD (  15.03  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX93: allow board code to configure the bl33 loadaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add parameterized __imx93_load_and_start_image_via_tfa function to
load_and_start the image on arbitrary load addresses. This should be
taken with caution since it requires to configure the TF-A correctly as
well, therefore the function is prefixt with '__'.

One use case of the new helper is to place OP-TEE at the very beginning
of the DRAM and barebox afterwards.

It has shown that the OPTEE can only operate with the ELE device if
it uses the MU wih messages that are addressed after 0xE0000000.

If OPTEE will be linked to the upper end of the memory layout on systems
with more then 3.5GB the ELE device can therefor not be used anymore.

So moving the layout is crucial for these platforms to properly operate
with OPTEE that is including ELE support.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-imx/atf.c  | 10 +++++++---
 include/mach/imx/xload.h |  1 +
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 4e7a548340..6dc80cb700 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -386,12 +386,16 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
 }
 
 void __noreturn imx93_load_and_start_image_via_tfa(void)
+{
+	__imx93_load_and_start_image_via_tfa((void *)MX93_ATF_BL33_BASE_ADDR);
+}
+
+void __noreturn __imx93_load_and_start_image_via_tfa(void *bl33)
 {
 	unsigned long atf_dest = MX93_ATF_BL31_BASE_ADDR;
 	void __noreturn (*bl31)(void) = (void *)atf_dest;
 	const void *tfa;
 	size_t tfa_size;
-	void *bl33 = (void *)MX93_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX9_DDR_CSD1_BASE_ADDR + imx9_ddrc_sdram_size();
 
 	imx_set_cpu_type(IMX_CPU_IMX93);
@@ -434,12 +438,12 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
 	 * it there. The USB protocol transfers data in chunks of 1024 bytes,
 	 * so align the copy size up to the next 1KiB boundary.
 	 */
-	memcpy((void *)MX93_ATF_BL33_BASE_ADDR, __image_start, ALIGN(barebox_pbl_size, 1024));
+	memcpy(bl33, __image_start, ALIGN(barebox_pbl_size, 1024));
 
 	memcpy(bl31, tfa, tfa_size);
 
 	asm volatile("msr sp_el2, %0" : :
-		     "r" (MX93_ATF_BL33_BASE_ADDR - 16) :
+		     "r" (bl33 - 16) :
 		     "cc");
 	bl31();
 	__builtin_unreachable();
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 3a396ac453..62b853f585 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -38,6 +38,7 @@ void __noreturn __imx8mp_load_and_start_image_via_tfa(void *bl33);
 void __noreturn __imx8mq_load_and_start_image_via_tfa(void *bl33);
 
 void __noreturn imx93_load_and_start_image_via_tfa(void);
+void __noreturn __imx93_load_and_start_image_via_tfa(void *bl33);
 
 int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
 		   u32 ivt_offset, bool start, unsigned int alignment,
-- 
2.39.5




Delivery-date: Tue, 16 Jan 2024 18:08:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvp-002FMn-2c
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:08:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvq-0007S4-Fp
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:08:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zEkw5RlZdMh/obKeZHmPpXy6sI6x8WfE8EJlX5nK8GA=; b=KvT3kqF9ONz515RVr+wsjmWRGi
	UzF+YOg6Pc6kTKkBrV3kYcCUKHULHu6UFSt31K8SWM7UzN9EpXB+OFJvoB0880j6SA+L/4iBD4KTc
	c0TJQGMfwJYd88BYm/78pr7Bg9rY5wlGFFSRQrvTzW9+OrLxMKMoinS+qcUgO7qNRFTGIisuD6xF4
	KNsEbFtIVObqqTlBfJ8ZN4/CLPIoeMhrylmx9PzCxVu0qcr6gmpYOTAswife7Vw4kgBckaWdkmD8K
	h5uiHCQwcpOmaxAk4mEJXpvZY21SvTB3nihcnkFTcyss+4PDV3HQDbCxu/9bu50fFBpN90cVaOha5
	yEGQ4N7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmuq-00ChxN-1s;
	Tue, 16 Jan 2024 17:07:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmug-00Chq7-0d
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 17:07:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmue-0006lg-UE
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:21 +0100
Message-Id: <20240116170738.209954-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090746_357472_0C86EBF2 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 01/18] ARM: i.MX8M: atf: make use of imx8m*_save_bootrom_log macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make use of the already existing macros and fix the memory bus width for
the i.MX8MQ.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de> 
---
 arch/arm/mach-imx/atf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index f9baad862dc7..5dfa7eeb50b9 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -123,7 +123,7 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
-	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
+	imx8mm_save_bootrom_log();
 	imx8mm_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
@@ -186,7 +186,7 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
-	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
+	imx8mp_save_bootrom_log();
 	imx8mp_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
@@ -250,7 +250,7 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
 
-	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
+	imx8mn_save_bootrom_log();
 	imx8mn_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
@@ -305,9 +305,9 @@ __noreturn void imx8mq_load_and_start_image_via_tfa(void)
 	const void *bl31;
 	size_t bl31_size;
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
+	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
-	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
+	imx8mq_save_bootrom_log();
 	imx8mq_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {
-- 
2.39.2




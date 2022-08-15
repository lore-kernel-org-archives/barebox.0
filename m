Delivery-date: Mon, 15 Aug 2022 14:57:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNZf8-006RNU-DO
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 14:57:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNZf8-0002Bt-TU
	for lore@pengutronix.de; Mon, 15 Aug 2022 14:57:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DKuzQNb6P2XxX3N0OxORyVl1cL9QeeDRcplmMwFrT9U=; b=EyqjG46wr/HsQ6DvtK9qnRurG/
	7ByQ+NqNFVml+pgB59RIqt/7aHUPzRFrmHxZMm73fbrNtfygnjTi3r80rUlDTG2rkMughVcDPr9NR
	B0B+cIebMLHOSJXZTJzEd7SI4DjOhE4NcXMufTWDPOI98vLDHmUFFjRBgoUbzUw/Fax3rQZqsIUri
	l4HVOCxv589p25I4ZJZstKaB7jm80LJfm12Pp8GamxCFTPnvzA7yPfbMQIL0LT7O0fd+1P6kZSyjR
	AV14LvNTq2tuvsLd7AaE0+3846kybUho3lg/256s81rcGgeowP+v/ITDKaDo7ZbzorWAdeGUXgrc/
	JN443QbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZdY-00GPuq-Hz; Mon, 15 Aug 2022 12:56:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZdN-00GPnJ-HP
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 12:56:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZdK-0001tv-8c; Mon, 15 Aug 2022 14:55:54 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZdG-003vIr-GP; Mon, 15 Aug 2022 14:55:52 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZdI-009m8P-0F; Mon, 15 Aug 2022 14:55:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 14:55:51 +0200
Message-Id: <20220815125551.2329928-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815125551.2329928-1-a.fatoum@pengutronix.de>
References: <20220815125551.2329928-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_055557_879232_E6709A56 
X-CRM114-Status: GOOD (  13.66  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ARM: i.MX8M: define imx8mX_load_bl33 and imx8mX_load_and_start_tfa
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For most users imx8mX_load_and_start_tfa saves a good deal of
boilerplate. It's not always sufficient though:

  - board code may need a pointer to bl33 to install other firmware
    besides barebox proper from there before jumping to bl31 (TF-A).

  - board code may want to use a different ARM Trusted Firmware,
    e.g. when OP-TEE is to be installed.

Thus define two more helper: imx8mX_load_bl33 and
imx8mn_load_and_start_tfa, which allows board code to avoid duplicating
the chainload logic and focus on doing the board specific stuff only.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/atf.c                | 43 ++++++++++++--------------
 arch/arm/mach-imx/include/mach/atf.h   | 12 +++++++
 arch/arm/mach-imx/include/mach/xload.h |  4 +++
 3 files changed, 36 insertions(+), 23 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 675e90792a32..5301c0fbe8e5 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -70,13 +70,10 @@ __noreturn void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
 	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
 }
 
-__noreturn void imx8mm_load_and_start_image_via_tfa(void)
+void imx8mm_load_bl33(void *bl33)
 {
-	size_t bl31_size;
-	const u8 *bl31;
 	enum bootsource src;
 	int instance;
-	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 
 	imx8mm_get_boot_source(&src, &instance);
 	switch (src) {
@@ -122,16 +119,16 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 	 * the same code in DRAM.
 	 */
 	memcpy(bl33, __image_start, barebox_pbl_size);
+}
 
-	get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
-
-	imx8mm_atf_load_bl31(bl31, bl31_size);
+__noreturn void imx8mm_load_and_start_image_via_tfa(void)
+{
+	imx8mm_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
+	imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
 }
 
-__noreturn void imx8mp_load_and_start_image_via_tfa(void)
+void imx8mp_load_bl33(void *bl33)
 {
-	size_t bl31_size;
-	const u8 *bl31;
 	enum bootsource src;
 	int instance;
 
@@ -157,18 +154,17 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 	 * for the piggy data, so we need to ensure that we are running
 	 * the same code in DRAM.
 	 */
-	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
-	       __image_start, barebox_pbl_size);
-
-	get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
+	memcpy(bl33, __image_start, barebox_pbl_size);
+}
 
-	imx8mp_atf_load_bl31(bl31, bl31_size);
+void imx8mp_load_and_start_image_via_tfa(void)
+{
+	imx8mp_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
+	imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
 }
 
-__noreturn void imx8mn_load_and_start_image_via_tfa(void)
+void imx8mn_load_bl33(void *bl33)
 {
-	size_t bl31_size;
-	const u8 *bl31;
 	enum bootsource src;
 	int instance;
 
@@ -194,10 +190,11 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 	 * for the piggy data, so we need to ensure that we are running
 	 * the same code in DRAM.
 	 */
-	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
-	       __image_start, barebox_pbl_size);
-
-	get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
+	memcpy(bl33, __image_start, barebox_pbl_size);
+}
 
-	imx8mn_atf_load_bl31(bl31, bl31_size);
+void imx8mn_load_and_start_image_via_tfa(void)
+{
+	imx8mn_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
+	imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
 }
diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
index ca54bb5fbf82..b3c4ecb92576 100644
--- a/arch/arm/mach-imx/include/mach/atf.h
+++ b/arch/arm/mach-imx/include/mach/atf.h
@@ -23,4 +23,16 @@ void __noreturn imx8mn_atf_load_bl31(const void *fw, size_t fw_size);
 void __noreturn imx8mp_atf_load_bl31(const void *fw, size_t fw_size);
 void __noreturn imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
 
+#define imx8m_load_and_start_tfa(soc,fw_name) do { \
+	size_t __bl31_size; \
+	const u8 *__bl31; \
+	soc##_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR); \
+	get_builtin_firmware(fw_name, &__bl31, &__bl31_size); \
+	soc##_atf_load_bl31(__bl31, __bl31_size); \
+} while (0)
+
+#define imx8mm_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mm, fw_name)
+#define imx8mn_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mn, fw_name)
+#define imx8mp_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mp, fw_name)
+
 #endif
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index fe43d2502632..82bf663c4266 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -16,6 +16,10 @@ int imx8m_esdhc_load_image(int instance, bool start);
 int imx8mn_esdhc_load_image(int instance, bool start);
 int imx8mp_esdhc_load_image(int instance, bool start);
 
+void imx8mm_load_bl33(void *bl33);
+void imx8mn_load_bl33(void *bl33);
+void imx8mp_load_bl33(void *bl33);
+
 void __noreturn imx8mm_load_and_start_image_via_tfa(void);
 void __noreturn imx8mn_load_and_start_image_via_tfa(void);
 void __noreturn imx8mp_load_and_start_image_via_tfa(void);
-- 
2.30.2




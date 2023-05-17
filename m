Delivery-date: Wed, 17 May 2023 11:05:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD64-0048aI-94
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD5z-0004oM-H6
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3rp4SU+SRGSyAxw7PagLCt4l8XVRf7WKPxnHN2hHNU8=; b=0iUk3xgzHfR0vcSFd1Wi531aJS
	qocnmc9bc8r4O8l6ap5v7HLO9ZZGfyjRzffzmUZdyk92dThuDulDMmVE1+8wozgHdy/zQvS0yxrIz
	pSmgA2Cf/wduJmq8Mmzw6VRrTUNJTwAPFRW/j+n3E5eeD0D2SuXj4hMgXNZEJHGCWvPqQeBzxQycz
	B/7kD7Y44nS9DiZESU2sOtSfhYzKbxIso6Trm296mhzCjHVL2Gdp1FuJuqYwf4vSNEKM6nLkFaW18
	QRcsHGN8IawP7OXJvZZuhvwairQYatSnRV0c6MwMxFGUeyjg9KMttGnRSP/jMLpwk2CcNBngk516q
	XXbNVwuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4j-008yVO-0P;
	Wed, 17 May 2023 09:04:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-008yM1-2N
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4S-0003wV-0u; Wed, 17 May 2023 11:03:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4R-000o6L-4x; Wed, 17 May 2023 11:03:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Gar2-H1; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:09 +0200
Message-Id: <20230517090340.3954615-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_020350_798439_3AA7066C 
X-CRM114-Status: GOOD (  13.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/34] ARM: rename __arm_mem_scratch to arm_mem_scratch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are different arm_mem_* macros/functions and only one of them
has leading underscores. Remove them for consistency.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 4 ++--
 arch/arm/mach-imx/atf.c            | 6 +++---
 arch/arm/mach-imx/xload-common.c   | 2 +-
 include/mach/rockchip/bootrom.h    | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 3a0c3d7d40..f446044be6 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -71,11 +71,11 @@ static inline void arm_fixup_vectors(void)
 
 void *barebox_arm_boot_dtb(void);
 
-#define __arm_mem_scratch(endmem) ((endmem) - SZ_32K)
+#define arm_mem_scratch(endmem) ((endmem) - SZ_32K)
 
 static inline const void *arm_mem_scratch_get(void)
 {
-	return (const void *)__arm_mem_scratch(arm_mem_endmem_get());
+	return (const void *)arm_mem_scratch(arm_mem_endmem_get());
 }
 
 #define arm_mem_stack_top(endmem) ((endmem) - SZ_64K - OPTEE_SIZE)
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 92820d9392..c5e6817aad 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -137,7 +137,7 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
 		imx8m_barebox_earlymem_size(32);
 
-	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
+	imx8m_save_bootrom_log(arm_mem_scratch(endmem));
 	imx8mm_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE))
@@ -185,7 +185,7 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
 		imx8m_barebox_earlymem_size(32);
 
-	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
+	imx8m_save_bootrom_log(arm_mem_scratch(endmem));
 	imx8mp_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE))
@@ -234,7 +234,7 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 	void *endmem = (void *)MX8M_DDR_CSD1_BASE_ADDR +
 		imx8m_barebox_earlymem_size(16);
 
-	imx8m_save_bootrom_log(__arm_mem_scratch(endmem));
+	imx8m_save_bootrom_log(arm_mem_scratch(endmem));
 	imx8mn_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE))
diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index 0d3e6be1b1..03eb2ef109 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -26,7 +26,7 @@ struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
 	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
 		imx8m_barebox_earlymem_size(ddr_buswidth);
 
-	return (void *)__arm_mem_scratch(endmem);
+	return (void *)arm_mem_scratch(endmem);
 }
 
 #define HDR_SIZE	512
diff --git a/include/mach/rockchip/bootrom.h b/include/mach/rockchip/bootrom.h
index 96eb147ae4..5b999fc606 100644
--- a/include/mach/rockchip/bootrom.h
+++ b/include/mach/rockchip/bootrom.h
@@ -15,7 +15,7 @@ static inline void rockchip_store_bootrom_iram(ulong membase,
                                                ulong memsize,
                                                const void *iram)
 {
-	void *dst = (void *)__arm_mem_scratch(membase + memsize);
+	void *dst = (void *)arm_mem_scratch(membase + memsize);
 	memcpy(dst, iram, sizeof(struct rockchip_scratch_space));
 }
 
-- 
2.39.2




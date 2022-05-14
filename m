Delivery-date: Sat, 14 May 2022 17:58:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npuA8-00D5Tu-DN
	for lore@lore.pengutronix.de; Sat, 14 May 2022 17:58:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npuA6-0002CZ-OL
	for lore@pengutronix.de; Sat, 14 May 2022 17:58:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PceeP/LV1L+0xeoRDdIqn+XcKb5j4T73mmZ6JQ5o7Nk=; b=YLUugf3ulnrGDm
	D101C5UjVvMHL2BSPXDr0XSQqVkRN7IY036e5teS2m+43sC4ONyPi6DMALl6eMr9xvIsdZQMHVeN+
	94jN/FZCfnUG7kTz846+Xmae6EjBlLEGaDSxDRYzR8/RPZhx1YrnistUqtVrgiQYNiOck36TMoyBG
	AJOIwZmYhDLsOzWoEe7gwVrULL9DQdAPK30nX1Mm/ATlEnWuFkpH1sh+NxvIdYU3kh3IYpMDQdy6S
	IIsKB2HwzzLR5xj2pHJn4Myn4k6QD3Mz83jdH9Hwyag6avrJAyhP0WY/KpS0udA1/WjfW7YTk6QAx
	WWvxPGr3iH/50K37M2lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npu85-001mzA-JL; Sat, 14 May 2022 15:56:29 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npu80-001my3-SN
 for barebox@lists.infradead.org; Sat, 14 May 2022 15:56:26 +0000
Received: from mxbox4.masterlogin.de (unknown [192.168.10.79])
 by mxout4.routing.net (Postfix) with ESMTP id 063FC10079E;
 Sat, 14 May 2022 15:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1652543776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ggwi2qgO0GpQVMxDGt2vrQ2xMisbRDvbSyKipKgXXKA=;
 b=fTsHrQ/xTRv619Qi8aNPYmoSyp3VePwwhg2GiICYaJi/2s9De4obT7Qyxb/6g2qVAZmzvL
 Ugafp1hqZGcArLiroI7XAkK4XTAQze3IEDKSdfZlyE32rMH5xWQ4Rn4sJU0rAU2fMfdmKP
 mL7w5e0rZ3osWqP8tbilbLGBUJdSwVo=
Received: from localhost.localdomain (fttx-pool-217.61.148.252.bambit.de
 [217.61.148.252])
 by mxbox4.masterlogin.de (Postfix) with ESMTPSA id 7509C801E8;
 Sat, 14 May 2022 15:56:15 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: barebox@lists.infradead.org
Date: Sat, 14 May 2022 17:56:09 +0200
Message-Id: <20220514155609.8306-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: da56330e-da13-4e80-b469-7000c8ef43d9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_085625_157605_6317FBB3 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: Frank Wunderlich <frank-w@public-files.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [urgent] ARM: rockchip: fix iodomain for r2pro V1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Frank Wunderlich <frank-w@public-files.de>

Current code sets vccio4 and vccio6 both to 1v8. R2Pro v1.0 needs 3v3
setting on vccio4, else gmac0 (switch for lan-ports) will be damaged.

IO-domain is per default 3v3 so only vccio6 needs to be set to 1v8 and
clear this bit in the 3v3 register.

Fixes: 8ba96c5942d6 ("ARM: rockchip: add BPI-R2-Pro V00 board")
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c | 9 ++++++---
 arch/arm/mach-rockchip/include/mach/rockchip.h       | 3 +++
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
index 4c5b4751b3fb..2a6e0700233a 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
@@ -17,10 +17,13 @@ static noinline void rk3568_start(void *fdt_blob_fixed_offset)
 	void *fdt;
 
 	/*
-	 * Enable vccio4 1.8V and vccio6 1.8V
-	 * Needed for GMAC to work.
+	 * set iodomain vccio6 to 1.8V needed for GMAC1 to work.
+	 * vccio4 (gmac0/switch) needs to stay at 3v3 (default)
 	 */
-	writel(RK_SETBITS(0x50), 0xfdc20140);
+	//set bit 6 in PMU_GRF_IO_VSEL0 for vccio6 1v8
+	writel(RK_SETBITS(BIT(6)), PMU_GRF_IO_VSEL0);
+	//clear bit 6 for 3v3 as it was set to 1v8
+	writel(RK_CLRBITS(BIT(6)), PMU_GRF_IO_VSEL1);
 
 	fdt = fdt_blob_fixed_offset;
 
diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h b/arch/arm/mach-rockchip/include/mach/rockchip.h
index f24db36f0161..ff8b1109f858 100644
--- a/arch/arm/mach-rockchip/include/mach/rockchip.h
+++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
@@ -23,6 +23,9 @@ static inline int rk3288_init(void)
 
 #ifdef CONFIG_ARCH_RK3568
 int rk3568_init(void);
+#define PMU_GRF		0xfdc20000
+#define PMU_GRF_IO_VSEL0	(PMU_GRF + 0x140)
+#define PMU_GRF_IO_VSEL1	(PMU_GRF + 0x144)
 #else
 static inline int rk3568_init(void)
 {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


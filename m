Delivery-date: Fri, 14 Oct 2022 13:56:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojJJ0-008Tly-21
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 13:56:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojJIx-000293-S7
	for lore@pengutronix.de; Fri, 14 Oct 2022 13:56:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IqwYM80Wpj7/Nd3e+MKVxu0VJZducyl52xxXVhl9Yy8=; b=DvnHUbrRkKi3KBa9deDmLZWuzV
	ZwwE1YQqYQFVt46MBeoqKUwSwUY0pxQzY30j//PXacRdgEIFPKZ4GlEHCo+qF5chfwf4tFcLfQGEn
	775WgntoQ1cQYWtn3XXLlvlsOLTtrFfgpdbiQ68cl6/nQd/iwGO49XHtHdYxp2FOJa1Smru+WAbAG
	QZ04u9WCEAE+0eNicF7wbVZ6N3LFMLsZyEd06CuGrOONsUhbvxelZvNFUNC/zu28d2VjdEE/mRldR
	1G0gG9Kjs0PjvCPr91MlH3+eZi0YvY8blI6WEg1B1RlRlI/4gybzw+ljCn0PifXWEUNKx9X5++qef
	T0ye0CeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojJHG-00EZyB-3B; Fri, 14 Oct 2022 11:54:58 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojJHA-00EZpV-6x
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 11:54:54 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 29EBs5A81434988
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Fri, 14 Oct 2022 13:54:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1665748447;
	bh=IqwYM80Wpj7/Nd3e+MKVxu0VJZducyl52xxXVhl9Yy8=; l=2497;
	h=From:To:Cc:Subject:Date;
	b=zX/HOnCVPrL0TNXRywppAOj43OpaJ/5PGaK2XScXWQmyUQCef/uJDO0RXXwd1sx1X
	 kKKbkv/t4XD8Ykjg06vZdYmeb8cr5Z8rSzu0YKICnAHvdub3XNRS9cBJ7G09pb2JYr
	 bbiBhe8NPdsZIHX9YjNtx24eunWJ1iLCmUCkpuHdD/4gS7i4tSx0SGUsTs60w3Xbt0
	 cPq4JTVtBhOruvCi2B/mYMV7vBI0PQsyLRIjhmApTWQ285aVHnvIMLcSjLM8djUfSi
	 41+w8tvH+Xz9ww2wvnvB8xkfrpDC0m3f+R1LPzBWSwMXswLvtaSRYIM/1RshhbPIml
	 EpYSx056+dKRA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 29EBs35m284692
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Fri, 14 Oct 2022 13:54:04 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ([192.168.12.73])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id 2B0DLO58OX; Fri, 14 Oct 2022 13:54:03 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 29EBs1BO1372338
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 14 Oct 2022 13:54:02 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.96)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1ojJGL-00H5N9-33;
	Fri, 14 Oct 2022 13:54:01 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Fri, 14 Oct 2022 13:53:54 +0200
Message-Id: <20221014115354.4072202-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-REDDOXX-Id: 63494ddbc12256ade0c43dec
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_045453_196079_DABDAC46 
X-CRM114-Status: GOOD (  12.18  )
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
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] imx:boot: adapt boot device detection for imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

imx8mp uses sbmr2[27..24] for encoding the bootmode while existing
code reads only sbmr2[25..24].

This can detect BOOTSOURCE_SERIAL for the wrong mode.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/mach-imx/boot.c | 34 +++++++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 8c9febb50a65..daf1951a36c2 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -202,7 +202,8 @@ void imx51_boot_save_loc(void)
 }
 
 #define IMX53_SRC_SBMR	0x4
-#define SRC_SBMR_BMOD	GENMASK(25, 24)
+#define IMX53_SRC_SBMR_BMOD	GENMASK(25, 24)
+#define IMX8MP_SRC_SBMR_BMOD	GENMASK(27, 24)
 #define IMX53_BMOD_SERIAL	0b11
 
 #define __BOOT_CFG(n, m, l)	GENMASK((m) + ((n) - 1) * 8, \
@@ -234,7 +235,12 @@ __MAKE_BOOT_CFG_BITS(4)
 
 static unsigned int imx53_get_bmod(uint32_t r)
 {
-	return FIELD_GET(SRC_SBMR_BMOD, r);
+	return FIELD_GET(IMX53_SRC_SBMR_BMOD, r);
+}
+
+static unsigned int imx8mp_get_bmod(uint32_t r)
+{
+	return FIELD_GET(IMX8MP_SRC_SBMR_BMOD, r);
 }
 
 static int imx53_bootsource_internal(uint32_t r)
@@ -318,6 +324,8 @@ void imx53_boot_save_loc(void)
 #define IMX6_BMOD_SERIAL	0b01
 #define IMX6_BMOD_RESERVED	0b11
 #define IMX6_BMOD_FUSES		0b00
+#define IMX8MP_BMOD_FUSES	0b0000
+#define IMX8MP_BMOD_SERIAL	0b0001
 #define BT_FUSE_SEL		BIT(4)
 #define GPR10_BOOT_FROM_GPR9	BIT(28)
 
@@ -338,6 +346,26 @@ static bool imx6_bootsource_serial(uint32_t sbmr2)
 		!(sbmr2 & BT_FUSE_SEL));
 }
 
+static bool imx8mp_bootsource_serial(uint32_t sbmr2)
+{
+	return imx8mp_get_bmod(sbmr2) == IMX8MP_BMOD_SERIAL ||
+		/*
+		 * If boot from fuses is selected and fuses are not
+		 * programmed by setting BT_FUSE_SEL, ROM code will
+		 * fallback to serial mode
+		 */
+		(imx8mp_get_bmod(sbmr2) == IMX8MP_BMOD_FUSES &&
+		 !(sbmr2 & BT_FUSE_SEL));
+}
+
+static bool imx_bootsource_serial(uint32_t sbmr2)
+{
+	if (cpu_is_mx8mp())
+		return imx8mp_bootsource_serial(sbmr2);
+	else
+		return imx6_bootsource_serial(sbmr2);
+}
+
 static bool imx6_bootsource_serial_forced(uint32_t bootmode)
 {
 	if (cpu_mx6_is_mx6ul() || cpu_mx6_is_mx6ull())
@@ -497,7 +525,7 @@ static void __imx7_get_boot_source(enum bootsource *src, int *instance,
 {
 	const struct imx_boot_sw_info *info;
 
-	if (imx6_bootsource_serial(sbmr2)) {
+	if (imx_bootsource_serial(sbmr2)) {
 		*src = BOOTSOURCE_SERIAL;
 		return;
 	}
-- 
2.37.3




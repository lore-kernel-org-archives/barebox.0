Delivery-date: Thu, 20 Oct 2022 10:03:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olQWn-001fWx-Fm
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 10:03:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olQWk-0001TF-Qf
	for lore@pengutronix.de; Thu, 20 Oct 2022 10:03:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lN50AOhAL2Er3wO3M2XKc4tphmLOwDb3AfqRJXHP2aY=; b=vl5KxnzTENCUBJ
	YEX9TrHC48UQ0YKzqdgH1Bziz5h53p8/buKQCQ8HH6udvoWhFkQCYXEsc+GR1W4Kk37tp9wa5jPG2
	ASsAU9f3iisq5mFOd8zw8RRk2Os9j3XLq/MFVQ4eatLICLpZQKLI8qMEyddhSd5BpTzf8cwXOPpL6
	JEy7zZRlt2rE5S6SI6iid0S+O7Mz4Pjio0xGuuxtARuq9F7b/96M+ZR29lCDjJ4g4qVQ6gPEW84jj
	wmdDLgcfmbdQ1JrnL8PnOqVzlhXnF9Jo/SJlxeFIsSqZ4GHhSIdi8toIcHVdjtHP7BwRnsTvyYPAk
	QTDf7bw3RVb2EsPxZ6JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olQVP-00C2fC-VB; Thu, 20 Oct 2022 08:02:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olQVK-00C2db-Mt
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 08:02:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVJ-00012W-HO; Thu, 20 Oct 2022 10:02:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVI-000HMr-Qw; Thu, 20 Oct 2022 10:02:12 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVI-00EaDa-5n; Thu, 20 Oct 2022 10:02:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Oct 2022 09:58:25 +0200
Message-Id: <20221020075826.3385137-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221020075826.3385137-1-s.hauer@pengutronix.de>
References: <20221020075826.3385137-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_010214_777463_7E34E222 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: i.MX8M bootsource: pull imx6_bootsource_serial() out of __imx7_get_boot_source()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

i.MX8MP and i.MX8MN will need a special variant of
imx6_bootsource_serial(), so pull the call to that function out of
__imx7_get_boot_source().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 999bd3ab91..7b3334d5e2 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -497,11 +497,6 @@ static void __imx7_get_boot_source(enum bootsource *src, int *instance,
 {
 	const struct imx_boot_sw_info *info;
 
-	if (imx6_bootsource_serial(sbmr2)) {
-		*src = BOOTSOURCE_SERIAL;
-		return;
-	}
-
 	info = (const void *)(unsigned long)
 		readl(boot_sw_info_pointer_addr);
 
@@ -539,6 +534,11 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 	void __iomem *src_base = IOMEM(MX7_SRC_BASE_ADDR);
 	uint32_t sbmr2 = readl(src_base + 0x70);
 
+	if (imx6_bootsource_serial(sbmr2)) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
+
 	__imx7_get_boot_source(src, instance, IMX7_BOOT_SW_INFO_POINTER_ADDR,
 			       sbmr2);
 }
@@ -654,6 +654,11 @@ void imx8mq_get_boot_source(enum bootsource *src, int *instance)
 		IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0 :
 		IMX8M_BOOT_SW_INFO_POINTER_ADDR_B0;
 
+	if (imx6_bootsource_serial(sbmr2)) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
+
 	__imx7_get_boot_source(src, instance, addr, sbmr2);
 }
 
@@ -668,6 +673,11 @@ void imx8mm_get_boot_source(enum bootsource *src, int *instance)
 	void __iomem *src_base = IOMEM(MX8MM_SRC_BASE_ADDR);
 	uint32_t sbmr2 = readl(src_base + 0x70);
 
+	if (imx6_bootsource_serial(sbmr2)) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
+
 	addr = IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0;
 
 	__imx7_get_boot_source(src, instance, addr, sbmr2);
@@ -684,6 +694,11 @@ void imx8mp_get_boot_source(enum bootsource *src, int *instance)
 	void __iomem *src_base = IOMEM(MX8MP_SRC_BASE_ADDR);
 	uint32_t sbmr2 = readl(src_base + 0x70);
 
+	if (imx6_bootsource_serial(sbmr2)) {
+		*src = BOOTSOURCE_SERIAL;
+		return;
+	}
+
 	addr = IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0;
 
 	__imx7_get_boot_source(src, instance, addr, sbmr2);
-- 
2.30.2




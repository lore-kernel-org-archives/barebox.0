Delivery-date: Thu, 31 Aug 2023 15:07:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbhOQ-00Fyel-KP
	for lore@lore.pengutronix.de; Thu, 31 Aug 2023 15:07:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbhOO-0005HZ-GO
	for lore@pengutronix.de; Thu, 31 Aug 2023 15:07:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Op3loTj21aUNz7NjeDLH2RKFUf1UZMAf2ybcvx76kN8=; b=4oYftYhTTZAHehVVJHMXSBdxTF
	RtlveOYd++QfpVh4zUE0BcFAmwbFsZRa7Z9EVjtRSZHFYNfQXL5vVf0B4npIFXzda2t4H6cjR92nn
	ASIGh+060W3UUiD5/7mP2GUS+/jGlGZ5QXphau4/blggHXshtLJE/5yCsbkX9cTMFVKtvg8wxR4iG
	V6vjmGYXXTyGrkmk3Lc08Hm89cVXCo9sNyjg7q7mgDy18lewzmExzraGZILSj0lkFNVoov6/9zyhw
	bRXtiCchj6Sn12hoGHHJ4opXasee+CHcZeOO5SghbWWGD2zoEbE7i7nSAS5RutjUPaGI+1R9J9CJm
	PlN/husw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbhN1-00FKQZ-0c;
	Thu, 31 Aug 2023 13:05:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbhMx-00FKPp-2f
	for barebox@lists.infradead.org;
	Thu, 31 Aug 2023 13:05:57 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qbhMt-000551-5u
	for barebox@lists.infradead.org; Thu, 31 Aug 2023 15:05:51 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 31 Aug 2023 15:05:49 +0200
Message-Id: <20230831130549.3357673-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230831130549.3357673-1-m.felsch@pengutronix.de>
References: <20230831130549.3357673-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_060555_864368_75B1FE9E 
X-CRM114-Status: GOOD (  12.76  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8M: esdctl: split memory banks for devices with >4G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At the moment the whole available memory is added to one single memory
bank "ram0". This can cause barebox chainload issues on devices with a
huge amount of memory like the i.MX8MP-EVK which has 6G of RAM if the
barebox pbl binary is to large.

The reason for this issues is that memory_bank_first_find_space()
returns the memory area with the largest amount of free space on the
first memory bank. So in case of Debix SOM-A 8G and i.MX8MP-EVK 6G this
is the area crossing the 4G boundary. This cause the barebox pbl code to
trigger a MMU exception once the early MMU gets enabled which is
configured for sizes <=4G.

Split the memory space into two memory banks: "ram0" and "ram1" to fix
this issue.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 54c62c47338e..de23b6433355 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -510,16 +510,26 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
 				   reduced_adress_space, mstr);
 }
 
+static int _imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data,
+			       unsigned int buswidth)
+{
+	resource_size_t size = imx8m_ddrc_sdram_size(mmdcbase, buswidth);
+	resource_size_t size0, size1;
+
+	size0 = min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
+	size1 = size - size0;
+
+	return add_mem(data->base0, size0, SZ_4G, size1, true);
+}
+
 static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
-	return arm_add_mem_device("ram0", data->base0,
-			   imx8m_ddrc_sdram_size(mmdcbase, 32));
+	return _imx8m_ddrc_add_mem(mmdcbase, data, 32);
 }
 
 static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
-	return arm_add_mem_device("ram0", data->base0,
-			   imx8m_ddrc_sdram_size(mmdcbase, 16));
+	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
 }
 
 static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
-- 
2.39.2




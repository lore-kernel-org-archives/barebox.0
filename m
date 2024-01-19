Delivery-date: Fri, 19 Jan 2024 15:25:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoT-0079XH-1g
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 15:25:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoU-0003iP-11
	for lore@pengutronix.de; Fri, 19 Jan 2024 15:25:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jqNGsx281tvB5HQjjEb0TItfRN0loyhbJpKPwQ5RzJc=; b=Tzz7PorPfvS+bugj+WCiAkGUzh
	zrPFs8S30/judO9yOm3H0EijnnbyE+HS1BwTYkLRYpk2pB/m0hCI/bUcSENwCKeThUv8d0XTVSFjn
	Z4WDP9ae/fws0jqq6L1rH0D2sawVtvmO9Gngwt3xDsMY3E4MiiKweGf96jW7h2KuiZh5J46k7xCQJ
	VYB98vhjXYZG6sKwuZX957FZsuMGwD9b9xrEit/20GKo6Xn5u34zSXfLaE5ke/i25orA+AAUZ3Q7l
	tM0taF7t3ka2o4Jrq1kUNpZhf5d7CgovqDtfJlWQ9tbWsV437glFFrHIa4r3JK69MgiyUVa/05eO3
	4CxREDJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnK-005prO-2Q;
	Fri, 19 Jan 2024 14:24:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnE-005pnV-2W
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 14:24:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-0003Ol-K2; Fri, 19 Jan 2024 15:24:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-000wIF-7L; Fri, 19 Jan 2024 15:24:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-00DczL-0P;
	Fri, 19 Jan 2024 15:24:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 19 Jan 2024 15:24:11 +0100
Message-Id: <20240119142413.3206832-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119142413.3206832-1-s.hauer@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_062424_874574_D7467024 
X-CRM114-Status: GOOD (  12.66  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] ARM: i.MX: export imx9_ddrc_sdram_size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

imx9_ddrc_sdram_size() will be needed by upcoming i.MX93 scratch space
support, so export it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 7 ++++---
 include/mach/imx/esdctl.h  | 1 +
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 2dc858c87f..9c2c4b105d 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -563,8 +563,9 @@ static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 #define IMX9_DDRC_CS_COL_BITS	GENMASK(2, 0)
 #define IMX9_DDRC_CS_EN		BIT(31)
 
-static resource_size_t imx9_ddrc_sdram_size(void __iomem *mmdcbase)
+resource_size_t imx9_ddrc_sdram_size(void)
 {
+	void __iomem *mmdcbase = IOMEM(MX9_DDR_CTL_BASE);
 	int width = 2;
 	int banks = 8;
 	unsigned long mem = 0;
@@ -593,7 +594,7 @@ static resource_size_t imx9_ddrc_sdram_size(void __iomem *mmdcbase)
 
 static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 {
-	return arm_add_mem_device("ram0", data->base0, imx9_ddrc_sdram_size(mmdcbase));
+	return arm_add_mem_device("ram0", data->base0, imx9_ddrc_sdram_size());
 }
 
 static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
@@ -1047,5 +1048,5 @@ void __noreturn imx7d_barebox_entry(void *boarddata)
 void __noreturn imx93_barebox_entry(void *boarddata)
 {
 	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR,
-			  imx9_ddrc_sdram_size(IOMEM(MX9_DDR_CTL_BASE)), boarddata);
+			  imx9_ddrc_sdram_size(), boarddata);
 }
diff --git a/include/mach/imx/esdctl.h b/include/mach/imx/esdctl.h
index 4898a3e682..d79bf17959 100644
--- a/include/mach/imx/esdctl.h
+++ b/include/mach/imx/esdctl.h
@@ -152,6 +152,7 @@ void __noreturn imx93_barebox_entry(void *boarddata);
 #define imx6sx_barebox_entry(boarddata) imx6ul_barebox_entry(boarddata)
 void imx_esdctl_disable(void);
 resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
+resource_size_t imx9_ddrc_sdram_size(void);
 #endif
 
 #endif /* __MACH_ESDCTL_V2_H */
-- 
2.39.2




Delivery-date: Thu, 23 Jun 2022 15:09:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MZy-00BzD6-14
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 15:09:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MZx-0007C4-O5
	for lore@pengutronix.de; Thu, 23 Jun 2022 15:09:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw4Goq+9Kq/tZyjZRVeqBdQ5m+FTAj8sx/tRlUckym0=; b=pU8a5UpgFEiQPT
	+8cNO/JIPL3PQD7MZPw9+5ofkSsV3+3f7u4L8uCwP19uxQbTtMft9fOVvHALi+dsBOdjm92RaM3QX
	78KZJdAOHZATd2SAmem52Kc5q8RqCcu9f2jB2GhJDNipcVudXgEkIYd5KQEraFMJCM83aMw+q+uNN
	tBGXgpd6y6tq/qtFz+t1MBcnReKnoPXRwfc+2mR1aeDV2491jtZPBl5R6e3fmsMKMkC2mwywpd6DW
	/VApuPRceseG6Qdy89st4IuP3OsEbIWXcyOIIreNOeRRGl3hvuHPrk9VhJaiGezEilUPIXfoDItOC
	KNb5uWuvJrjT3x1MWMIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYV-00FFlY-GD; Thu, 23 Jun 2022 13:07:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYQ-00FFkj-1o
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 13:07:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYO-0006wS-Gp; Thu, 23 Jun 2022 15:07:24 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYM-002FGZ-DM; Thu, 23 Jun 2022 15:07:23 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYL-006rWa-IK; Thu, 23 Jun 2022 15:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 23 Jun 2022 15:07:14 +0200
Message-Id: <20220623130717.1447999-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
References: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_060726_131699_DF372EC5 
X-CRM114-Status: GOOD (  10.33  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Andrey Smirnov <andrew.smirnov@gmail.com>, Joacim Zetterling <joacim.zetterling@westermo.com>, lst@pengutronix.de, Teresa Remmet <t.remmet@phytec.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 master 2/5] ARM: i.MX8M: esdctl: fix LPDDR4 size calculation for nano
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

i.MX8MN has a bus width of 16-bit, not 32-bit, so adjust accordingly.
This fixes RAM size computation of i.MX8MN boards with LPDDR4 memory.

Suggested-by: Lucas Stach <l.stach@pengutronix.de>
Fixes: 7a05a7626d7f ("ARM: i.MX: add i.MX8MN (Nano) SoC support boilerplate")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch, suggested by Lucas. Replaces hacky last patch from v1
---
 arch/arm/mach-imx/esdctl.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 69f4f8df9391..35c9fa9a4248 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -510,6 +510,12 @@ static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 			   imx8m_ddrc_sdram_size(mmdcbase, 32));
 }
 
+static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+{
+	return arm_add_mem_device("ram0", data->base0,
+			   imx8m_ddrc_sdram_size(mmdcbase, 16));
+}
+
 static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 {
 	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
@@ -645,6 +651,11 @@ static __maybe_unused struct imx_esdctl_data imx8mq_data = {
 	.add_mem = imx8m_ddrc_add_mem,
 };
 
+static __maybe_unused struct imx_esdctl_data imx8mn_data = {
+	.base0 = MX8M_DDR_CSD1_BASE_ADDR,
+	.add_mem = imx8mn_ddrc_add_mem,
+};
+
 static __maybe_unused struct imx_esdctl_data imx7d_data = {
 	.base0 = MX7_DDR_BASE_ADDR,
 	.add_mem = imx7d_ddrc_add_mem,
@@ -719,7 +730,7 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 		.data = &imx8mq_data
 	}, {
 		.compatible = "fsl,imx8mn-ddrc",
-		.data = &imx8mq_data
+		.data = &imx8mn_data
 	}, {
 		.compatible = "fsl,imx8mq-ddrc",
 		.data = &imx8mq_data
@@ -931,7 +942,7 @@ void __noreturn imx8mm_barebox_entry(void *boarddata)
 
 void __noreturn imx8mn_barebox_entry(void *boarddata)
 {
-	imx8m_barebox_entry(boarddata, 32);
+	imx8m_barebox_entry(boarddata, 16);
 }
 
 void __noreturn imx8mp_barebox_entry(void *boarddata)
-- 
2.30.2




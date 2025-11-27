Delivery-date: Thu, 27 Nov 2025 15:19:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOcqM-005S9k-2c
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 15:19:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOcqM-0002ls-9J
	for lore@pengutronix.de; Thu, 27 Nov 2025 15:19:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gGADcofvHNCZnkrH4GHkkVVAtVDGo8OQ0ZRG7eiiV/M=; b=X6VP0wFNqcm9qkIxsnidtd8ZLd
	FYK8rH4rrnTaWP/diHiRx3HSrLuSXTD+VjqimqoBP7mKIP1AwuBvklDPkmoqEHHqckEhNXeUZSbkv
	EAsIB1emF7bt+loWDt6peFHmPptCNNMnYoDN+pv6Sc17b9/bWwnL89t30mgnLiZzcOI33nhjJ5WH8
	bfY3HRcXf6evxt1Xc6MULEURWLlsk4NDUyD86aXpp7H+Ly/7TP8R3Jgq/kAwOBl2hXofiynK+2rvS
	Jn84H/gyRWJPdc9HgG6JV5UbggPN2kuqDzu+6rgS1tk3UGhcowqYvjrbjj+SIj62CQX9A7piel7Dw
	VXHKG2mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOcpn-0000000Glwn-06gs;
	Thu, 27 Nov 2025 14:18:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOcpl-0000000GlwA-1yKJ
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 14:18:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9E9C160141;
	Thu, 27 Nov 2025 14:18:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 54A29C4CEF8;
	Thu, 27 Nov 2025 14:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764253136;
	bh=4SsTo/gAcZF33CfpyLXiQwFaRZurtJJnH8Rm+a9yWCw=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=oBThztLyyAlfFo6vXhtNuBaqhvk9y03SEbI3dFTpJtCfKDjnz8hW3k5gC5d58RgLm
	 dHJIwCxPnPQPzTqypyEs/6G9E58IBqTue13kE6Jjd72EqURmeqnAQYDdSxwUY3LPga
	 jNNI3ZsxLyb4GakZl2tKMpsddbPy3djaxyLo8IUc/juejlO+y7jYBZapRfaRROzzfV
	 0lY+bcd44fpAS0egdlWjW1G3fdx/kRXfRKh2oq2In7/CY78I5x+gi9x1EK154GzsjY
	 B4JIyE/KaDL+pPJ/pccL/fIM96blUAlZ12m92wtl3TAsPPZOzD+ChbDl5MzGZjBiuU
	 jGGdDUolbu3kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A795D116E2;
	Thu, 27 Nov 2025 14:18:56 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Date: Thu, 27 Nov 2025 15:18:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-ddr3_size-v1-1-cb26cadcb348@gocontroll.com>
X-B4-Tracking: v=1; b=H4sIAMtdKGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyNz3ZSUIuP44syqVN3kZANjQwtLA7M0UwMloPqCotS0zAqwWdGxtbU
 AvNR9L1sAAAA=
X-Change-ID: 20251127-ddr3_size-cc0318906f50
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764253135; l=1641;
 i=maudspierings@gocontroll.com; s=20250214; h=from:subject:message-id;
 bh=S/1+D57OXDOXBoJu1ee59GubYFVu0yhihDlh11/cdtg=;
 b=sjH8KsDCwabGRl0tgeN20OpBWfP+a4TumFB41XRee8MEcYV5UkCNMDUbxzp5yoBIj4FxYgNjm
 yVaC8k1Ej+7BOQum37GuXZ2Juf1e9ZrX8GhYoawpSPiRVzW4IvI1xMJ
X-Developer-Key: i=maudspierings@gocontroll.com; a=ed25519;
 pk=7chUb8XpaTQDvWhzTdHC0YPMkTDloELEC7q94tOUyPg=
X-Endpoint-Received: by B4 Relay for maudspierings@gocontroll.com/20250214
 with auth_id=341
X-Original-From: Maud Spierings <maudspierings@gocontroll.com>
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
Reply-To: maudspierings@gocontroll.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX8M: Fix the RAM size calculation for DDR3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maudspierings@gocontroll.com>

The default value in the MSTR register for DDRC_MSTR_DEVICE_CONFIG is
16bit which causes the calculation to be half of the actual RAM. Add the
BIT() define for DDR3 and add it to the workaround for calculating the
correct amount of RAM like LPDDR4.

Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
---
 arch/arm/mach-imx/esdctl.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 4c4c3528e1..935c3d3257 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -325,6 +325,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
 #define DDRC_ADDRMAP0_CS_BIT0			GENMASK(4, 0)
 
 #define DDRC_MSTR				0x0000
+#define DDRC_MSTR_DDR3				BIT(0)
 #define DDRC_MSTR_DDR4				BIT(4)
 #define DDRC_MSTR_LPDDR4			BIT(5)
 #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
@@ -508,8 +509,8 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
 		FIELD_GET(DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, addrmap[6]);
 	u32 mstr = readl(ddrc + DDRC_MSTR);
 
-	/* Device config is ignored and taken as 32-bit for LPDDR4 */
-	if (mstr & DDRC_MSTR_LPDDR4)
+	/* Device config is ignored and taken as 32-bit for LPDDR4 and DDR3 */
+	if (mstr & DDRC_MSTR_LPDDR4 || mstr & DDRC_MSTR_DDR3)
 		imx_ddrc_set_mstr_device_config(&mstr, buswidth);
 
 	return imx_ddrc_sdram_size(ddrc, addrmap,

---
base-commit: 5d89bec4985d850d59813e34c6b5213d8e8f48f0
change-id: 20251127-ddr3_size-cc0318906f50

Best regards,
-- 
Maud Spierings <maudspierings@gocontroll.com>





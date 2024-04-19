Delivery-date: Fri, 19 Apr 2024 08:10:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhSL-0074CJ-1r
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:10:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhSK-0004pn-WF
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:10:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NqSlaFcNprJcByd+qkx4D5+7wsWUHAFsHZ4ag2j4Gx0=; b=NY60FbaqznVTN0OaapQQbogRWz
	gQTebEwtIVFCF18HIlxZVHXdg35rRsIDKgCZl+A2WNyYJFzYspTubUWb5Ai/wcMGs816uEKsIoiCL
	9ncqLvJp8Wj3aXThOzXBuJdp1ZzvK9PMrxx+OPkzU2hSHf+nTmCPbfNFlibnFBI7p53WBUT7RyDn/
	0lOsN5PDk2sxTRQ9EtUvovQKbuy4CyrVf2JUOKNDdFkLsDLfmW4zfjMwempezEDDM+CvrLa+62RJY
	iImWbDSL8Yb1Nl53zEps4Pc3xQLQjWWXqdhI57rk9o49BVRcZ4U+KITrErfUTO0JzGHKorHfkFgH+
	osoZxPyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhRu-00000004YJi-39eX;
	Fri, 19 Apr 2024 06:10:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhRm-00000004YGJ-1hNu
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:10:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRl-0004Eq-70; Fri, 19 Apr 2024 08:10:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRk-00D6h2-Qh; Fri, 19 Apr 2024 08:10:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRk-00As0T-2N;
	Fri, 19 Apr 2024 08:10:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Apr 2024 08:10:01 +0200
Message-Id: <20240419061003.2590849-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240419061003.2590849-1-a.fatoum@pengutronix.de>
References: <20240419061003.2590849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_231006_602326_D27C6B0D 
X-CRM114-Status: GOOD (  10.53  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] clk: imx: add IMX_COMPOSITE_CLK_FLAGS_DEFAULT macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We use the same flags in two macros and will add one more instance in a
follow-up commit, so factor them out into a macro like Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 9058f913d316..00dc72831f38 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -276,6 +276,9 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
 #define IMX_COMPOSITE_CORE      BIT(0)
 #define IMX_COMPOSITE_BUS       BIT(1)
 
+#define IMX_COMPOSITE_CLK_FLAGS_DEFAULT \
+	(CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+
 struct clk *imx8m_clk_composite_flags(const char *name,
 		const char * const *parent_names, int num_parents, void __iomem *reg,
 		u32 composite_flags,
@@ -285,13 +288,13 @@ struct clk *imx8m_clk_composite_flags(const char *name,
         imx8m_clk_hw_composite_flags(name, parent_names, \
                         ARRAY_SIZE(parent_names), reg, \
                         IMX_COMPOSITE_CORE, \
-                        CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+                        IMX_COMPOSITE_CLK_FLAGS_DEFAULT)
 
 #define imx8m_clk_hw_composite_bus(name, parent_names, reg)     \
         imx8m_clk_hw_composite_flags(name, parent_names, \
                         ARRAY_SIZE(parent_names), reg, \
                         IMX_COMPOSITE_BUS, \
-                        CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+                        IMX_COMPOSITE_CLK_FLAGS_DEFAULT)
 
 #define __imx8m_clk_composite(name, parent_names, reg, flags) \
 		imx8m_clk_composite_flags(name, parent_names, \
-- 
2.39.2




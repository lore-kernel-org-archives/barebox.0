Delivery-date: Thu, 22 Dec 2022 15:33:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Md6-0051bK-MP
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 15:33:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8Md2-00078d-E9
	for lore@pengutronix.de; Thu, 22 Dec 2022 15:33:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fy1YE4V9QkfsJk9imXeFBo827SwxdiBo5We7kaKw2J4=; b=DrlGUkw5iM9m2hXWdGsmiXk8rB
	r0xHLnmIZ5k1Afo4wRbYHlel1k/eygvOYCDxKrdgw70T7TIYxIzLtQLdkP7sGw1i0Ivwvz/g4FMEN
	s7pAqlX+wNyyVbJIColc7TQIErKd8V/wdoHuRmlaPmiCMc8kHBl+Dz1p50wtz5PIkeaN57a3RDsiK
	3tsLFdFwF2SVXLPbpLfP86s5/Fs3Z58N4xSKAkQ0Ol8mjpsMMMGabeZlp/w22x8xs1ojO3QMfurmw
	Qut1k9g/KsoUv9Q+DfyvXiEhAfd7hyE0AdgKtrNXTzMzPylKX7T6AUmOQDeWGwmlVF4xU0UnUwLDm
	eWAK2TeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MbG-00CyuN-9w; Thu, 22 Dec 2022 14:31:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIv-00ComV-3u
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 14:12:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIr-0003uZ-9C; Thu, 22 Dec 2022 15:12:09 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIq-0011pq-Lb; Thu, 22 Dec 2022 15:12:08 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIp-00Cx8o-6W; Thu, 22 Dec 2022 15:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de,
	ore@pengutronix.de,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Dec 2022 15:11:56 +0100
Message-Id: <20221222141201.3087192-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061213_535761_D93473A4 
X-CRM114-Status: UNSURE (   9.71  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] clk: imx: set CLK_SET_RATE_NO_REPARENT for all muxes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux i.MX clk drivers instantiate all muxes with
CLK_SET_RATE_NO_REPARENT. Do likewise in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk.h | 30 +++++++++++++++++++-----------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index bc44d0c739e0..041592a06431 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -40,11 +40,19 @@ static inline struct clk *imx_clk_divider_table(const char *name,
 				 width, table, 0);
 }
 
+static inline struct clk *__imx_clk_mux(const char *name, void __iomem *reg,
+					u8 shift, u8 width, const char * const *parents,
+					u8 num_parents, unsigned flags, unsigned long clk_mux_flags)
+{
+	return clk_mux(name, CLK_SET_RATE_NO_REPARENT | flags, reg,
+		       shift, width, parents, num_parents, clk_mux_flags);
+}
+
 static inline struct clk *imx_clk_mux_ldb(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char * const *parents, int num_parents)
 {
-	return clk_mux(name, CLK_SET_RATE_NO_REPARENT | CLK_SET_RATE_PARENT, reg,
-		       shift, width, parents, num_parents, CLK_MUX_READ_ONLY);
+	return __imx_clk_mux(name, reg, shift, width, parents, num_parents,
+			     CLK_SET_RATE_PARENT, CLK_MUX_READ_ONLY);
 }
 
 
@@ -59,36 +67,36 @@ static inline struct clk *imx_clk_mux_flags(const char *name, void __iomem *reg,
 					    const char * const *parents, u8 num_parents,
 					    unsigned long clk_flags)
 {
-	return clk_mux(name, clk_flags, reg, shift, width, parents, num_parents,
-		       0);
+	return __imx_clk_mux(name, reg, shift, width, parents, num_parents,
+			     clk_flags, 0);
 }
 
 static inline struct clk *imx_clk_mux2_flags(const char *name,
 		void __iomem *reg, u8 shift, u8 width, const char * const *parents,
 		int num_parents, unsigned long clk_flags)
 {
-	return clk_mux(name, clk_flags | CLK_OPS_PARENT_ENABLE, reg, shift,
-		       width, parents, num_parents, 0);
+	return __imx_clk_mux(name,reg, shift, width, parents, num_parents,
+			     clk_flags | CLK_OPS_PARENT_ENABLE, 0);
 }
 
 static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char * const *parents, u8 num_parents)
 {
-	return clk_mux(name, 0, reg, shift, width, parents, num_parents, 0);
+	return __imx_clk_mux(name, reg, shift, width, parents, num_parents, 0, 0);
 }
 
 static inline struct clk *imx_clk_mux2(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char * const *parents, u8 num_parents)
 {
-	return clk_mux(name, CLK_OPS_PARENT_ENABLE, reg, shift, width, parents,
-		       num_parents, 0);
+	return __imx_clk_mux(name, reg, shift, width, parents,
+			     num_parents, CLK_OPS_PARENT_ENABLE, 0);
 }
 
 static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char * const *parents, u8 num_parents)
 {
-	return clk_mux(name, CLK_SET_RATE_PARENT, reg, shift, width, parents,
-		       num_parents, 0);
+	return __imx_clk_mux(name, reg, shift, width, parents, num_parents,
+			     CLK_SET_RATE_PARENT,  0);
 }
 
 static inline struct clk *imx_clk_gate(const char *name, const char *parent,
-- 
2.30.2




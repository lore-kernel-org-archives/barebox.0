Delivery-date: Fri, 08 Jul 2022 07:55:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gx8-00AA08-QZ
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 07:55:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gxA-0000yD-UM
	for lore@pengutronix.de; Fri, 08 Jul 2022 07:55:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=deYuhY+MsZBbzJ0pfJ9qxMcxWfwHz31AXwcufeCc5EI=; b=xOeO6LlrffymvWmz8WEadFVka2
	xddZCBoGeHmN+eKdgs84K3mglxzDzQ2kkKShWOAOX1CfznBelR73M4xbnjODRbc65gRgd9CP2/0Wh
	ZXCqedGtOHqotJolsIMOyKDKIP3BqWM+DzRdJ3UPh7Tnv0tNLj/gRCifz3NlG/1Aajz1TWvSUsH/m
	AD5PQ8wEPP5GAqc+KPC/ALNcDUNbbqX8+ZeM2ypyp6cUHmfgYhkrGSs07rdzo1hTJRfflT18LfnTi
	TiPTOaHFe/qPVlSOp8VTeW6Qtl+HpMIY9uI9XSbcIiXMNau6HXofFGks2i/3Eqmf+ZX0T+rozw6g4
	/CXV3dwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gvb-001rxN-BK; Fri, 08 Jul 2022 05:53:23 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gvN-001rtE-7a
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 05:53:10 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 97C0D1C000A;
	Fri,  8 Jul 2022 05:53:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Yannick FERTRE <yannick.fertre@foss.st.com>,
	Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  8 Jul 2022 07:52:48 +0200
Message-Id: <20220708055250.1175444-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_225309_458331_32FF63DA 
X-CRM114-Status: UNSURE (   8.58  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] video: stm32: stm32_ltdc: fix data enable polarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yannick FERTRE <yannick.fertre@foss.st.com>

Wrong DISPLAY_FLAGS used to set the data enable polarity.

Signed-off-by: Yannick FERTRE <yannick.fertre@foss.st.com>
Origin: https://st-md-mailman.stormreply.com/pipermail/uboot-stm32/2022-April/005122.html
[afa: cherry-picked from U-Boot driver]
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/video/stm32_ltdc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index 645c20b5545f..9dc35ade6124 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -98,7 +98,7 @@ static void ltdc_set_mode(struct ltdc_fb *priv,
 		val |= GCR_HSPOL;
 	if (mode->sync & FB_SYNC_VERT_HIGH_ACT)
 		val |= GCR_VSPOL;
-	if (mode->display_flags & DISPLAY_FLAGS_DE_HIGH)
+	if (mode->display_flags & DISPLAY_FLAGS_DE_LOW)
 		val |= GCR_DEPOL;
 	if (mode->display_flags & DISPLAY_FLAGS_PIXDATA_NEGEDGE)
 		val |= GCR_PCPOL;
-- 
2.34.1




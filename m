Delivery-date: Mon, 01 Dec 2025 10:00:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzlK-006l5p-0B
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:00:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzlJ-0004Ey-DV
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:00:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YTuDoE0G5/HZY/LDcfP1LSIHWqiC6+k47zJ0ulSSuzQ=; b=GxTQt31i5EJABy7ivdfVp5iTFE
	cwzxUugyYuzsTaTGC8BgzLpGfZgQ4sVhTOphAE9jnin0/rZrhTbvHcnu0M7tuyOwSojiBBQY7gqS8
	TUfwkD+fNCSybV1OUz1Wt55hR2qh4wCFCIl1ZoiIsVVkbjmGRvly+3My8C7Dq3+IqsC8mtsjDdOI1
	BTkOI0k6nUSPGMVjaO8H3mufp3nQ2W6jf5KqFolYFg+Wo0NA8ILvtXRP/PyxXg2D//wCU32nwq6jN
	PUTAZhGCmK8LfD57+HF7kmdedvQQPyNjSP2BWHEUwP3lMwOIgQcwtBQZJJqc3bwlOPcKK7D7MRil5
	G3zCTB4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzks-00000003An2-3JsL;
	Mon, 01 Dec 2025 08:59:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzkp-00000003Am5-2Uao
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 08:59:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vPzkn-00044e-SJ; Mon, 01 Dec 2025 09:59:29 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 09:59:21 +0100
Message-ID: <20251201085927.1306364-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_005931_655989_9F229F14 
X-CRM114-Status: UNSURE (   8.29  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] video: dw_mipi_dsi: drop unused and misleading dw_mipi_dsi_crtc_node()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The CRTC node would be the remote node on the other side of the graph
link and not the host's device.

Given that this function is unused anyway, let's drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/dw_mipi_dsi.c | 6 ------
 include/video/dw_mipi_dsi.h | 2 --
 2 files changed, 8 deletions(-)

diff --git a/drivers/video/dw_mipi_dsi.c b/drivers/video/dw_mipi_dsi.c
index 0371806fe893..bf95b1b9f6ff 100644
--- a/drivers/video/dw_mipi_dsi.c
+++ b/drivers/video/dw_mipi_dsi.c
@@ -1029,12 +1029,6 @@ struct dw_mipi_dsi *dw_mipi_dsi_bind(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(dw_mipi_dsi_bind);
 
-struct device_node *dw_mipi_dsi_crtc_node(struct dw_mipi_dsi *dsi)
-{
-	return dsi->dsi_host.dev->of_node;
-}
-EXPORT_SYMBOL_GPL(dw_mipi_dsi_crtc_node);
-
 MODULE_AUTHOR("Chris Zhong <zyw@rock-chips.com>");
 MODULE_AUTHOR("Philippe Cornu <philippe.cornu@st.com>");
 MODULE_AUTHOR("Yannick Fertré <yannick.fertre@st.com>");
diff --git a/include/video/dw_mipi_dsi.h b/include/video/dw_mipi_dsi.h
index 9e8b279bb911..01bca73d83fd 100644
--- a/include/video/dw_mipi_dsi.h
+++ b/include/video/dw_mipi_dsi.h
@@ -76,6 +76,4 @@ dw_mipi_dsi_bind(struct device *dev,
 		 const struct dw_mipi_dsi_plat_data *plat_data);
 static inline void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi) { }
 
-struct device_node *dw_mipi_dsi_crtc_node(struct dw_mipi_dsi *dsi);
-
 #endif /* __DW_MIPI_DSI__ */
-- 
2.47.3




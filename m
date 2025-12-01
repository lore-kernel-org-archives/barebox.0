Delivery-date: Mon, 01 Dec 2025 10:00:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzlK-006l5o-09
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:00:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzlJ-0004Eq-Ci
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:00:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9vXHu35wItI+EEIyeqEw6iuLtP8xa1/bpqgo4X+DMvc=; b=Sq36FvQM1ZPYXceb22fHSsCL1g
	euD3p4hwYv7jbjEZi+pq21JIed9tKw/iVJjNfVI/1CAOVaBNqxEup35DsGRbn9D23BiGN06qog9Ao
	eyuVS9Ubo1A0S5pN3KJmzhJ4VyG+Jdmno49rmJQjpbVvVtA8CmcUB+8hkd+mDHE6qbbGH1w68Gno2
	qVwkmRyk8ciR4f3JLMdTgkMg06bZoLEh3cEiKvMKMHPnYM57/uCEgh5Yk64F7kxkJGA5TpsKUoPl3
	8s7K4KuiFap0qSHbKm9wflr3avYuTK4a/k3bgF2mzzm6BeJX9FNKk2ZLLs2hZozlJ/TBwQUJbZ0p8
	fmMe9mug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzkt-00000003AnE-0LrJ;
	Mon, 01 Dec 2025 08:59:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzkq-00000003Am7-0pFu
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 08:59:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vPzko-00044e-LG; Mon, 01 Dec 2025 09:59:30 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 09:59:23 +0100
Message-ID: <20251201085927.1306364-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251201085927.1306364-1-a.fatoum@barebox.org>
References: <20251201085927.1306364-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_005932_232892_83489DC9 
X-CRM114-Status: GOOD (  12.21  )
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
Subject: [PATCH 3/3] video: dw_mipi_dsi: activate pattern generator during enable as a hack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's still something fishy with the initialization sequence of the
video pipeline with respect to the MIPI-DSI bridge.

As a workaround, jump start the pipeline by briefly enabling the video
pattern generator and disabling it again.

This will lead to a very brief flash of colored bars until that issue is
better understood and properly resolved.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/dw_mipi_dsi.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/video/dw_mipi_dsi.c b/drivers/video/dw_mipi_dsi.c
index bf95b1b9f6ff..681d939e17ea 100644
--- a/drivers/video/dw_mipi_dsi.c
+++ b/drivers/video/dw_mipi_dsi.c
@@ -906,9 +906,20 @@ static int dw_mipi_dsi_ioctl(struct vpl *vpl, unsigned int port,
 {
 	struct dw_mipi_dsi *dsi = container_of(vpl, struct dw_mipi_dsi, vpl);
 	struct drm_display_mode mode = {};
+	bool vpg_enable_hack;
+	int ret;
+
+	/*
+	 * HACK: If Video Pattern Generator is not running here, the panel
+	 * initialization on the Sitronix ST7703 (RGB30-Panel) times out...
+	 * FIXME: figure out why Linux doesn't suffer from this
+	 */
+	vpg_enable_hack = true;
 
 	switch (cmd) {
 	case VPL_ENABLE:
+		if (vpg_enable_hack)
+			dsi->vpg_mode = VPG_COLORS_V;
 		/* Switch to video mode for panel-bridge enable & panel enable */
 		dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
 		break;
@@ -934,7 +945,14 @@ static int dw_mipi_dsi_ioctl(struct vpl *vpl, unsigned int port,
 	/* Probes should have occured by now */
 	WARN_ON(!dsi->panel_bridge);
 
-	return vpl_bridge_ioctl(dsi->panel_bridge, cmd, data);
+	ret = vpl_bridge_ioctl(dsi->panel_bridge, cmd, data);
+
+	if (cmd == VPL_ENABLE && vpg_enable_hack) {
+		dsi->vpg_mode = VPG_DISABLED;
+		vpg_param_set(NULL, dsi);
+	}
+
+	return ret;
 }
 
 static const char *vpg_modes[] = {
-- 
2.47.3




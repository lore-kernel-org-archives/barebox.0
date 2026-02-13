Delivery-date: Fri, 13 Feb 2026 10:29:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqpUc-001CcK-2i
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 10:29:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqpUd-0005A5-40
	for lore@pengutronix.de; Fri, 13 Feb 2026 10:29:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x39UUsbRZTyvFV+I8mSZEgJnpArOnFwr2W2qIfPCivg=; b=E1G+8pBLt//Zsyf2jAMFJ25/Fg
	F2BZc2N6GdQBYHt2jKx1m9AD4r5Do/XdwwsQMU1iENL4ys3yON2AfOAsmI/keX8YCAlpGuvDzXilr
	EqjgxzOij3pIqpbaddVY+ZdKSckL5LGlNGpvCMd4UK5DJqZsl9Y7Li9ewczhZogEHVjiSq+ioaJ2c
	O22Xgp+fYE3aAAXjzrBp0x7sp2m4m6CTPuzjRiWw4UuggakERoXEsJx37DCcCMcHSjqnvfEb+xavP
	vws33J5GrBxine1Wowl1cS2F1ncqv2brabi1pbTAqV0kbzhM/9eBV6gnSkDqKGhxVYoP8pA503jKw
	CZDzDCgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqpUB-00000003EeT-0hnd;
	Fri, 13 Feb 2026 09:29:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqpU7-00000003Edm-24Fm
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 09:29:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vqpU3-00053h-N3; Fri, 13 Feb 2026 10:29:07 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Feb 2026 10:28:09 +0100
Message-ID: <20260213092906.3960051-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260213092906.3960051-1-a.fatoum@barebox.org>
References: <20260213092906.3960051-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_012911_539508_29AD07EB 
X-CRM114-Status: GOOD (  13.81  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] video: dw_mipi_dsi: remove VPG workaround for panel initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Video Pattern Generator was being temporarily enabled during
VPL_ENABLE to work around panel initialization timeouts on the Sitronix
ST7703 of the Powkiddy RGB30. The root cause was a sync polarity
that has been fixed in the previous commit, so this hack can now go away.

This fixes a regression for the STM32MP157C-DK2: Enabling the VPG at the
point we did, caused the panel to synchronize to a wrong start offset and
led to a funny effect with the barebox logo that's shown by default:

On subsequent reboots, the display output would start at different
locations and so the logo would wander around and because the color
format is RGB888, the hexagon inside the barebox logo b would keep
switching between red, green and blue.

Fixes: 5115bff30153 ("video: dw_mipi_dsi: activate pattern generator during enable as a hack")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/dw_mipi_dsi.c | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/video/dw_mipi_dsi.c b/drivers/video/dw_mipi_dsi.c
index 681d939e17ea..bf95b1b9f6ff 100644
--- a/drivers/video/dw_mipi_dsi.c
+++ b/drivers/video/dw_mipi_dsi.c
@@ -906,20 +906,9 @@ static int dw_mipi_dsi_ioctl(struct vpl *vpl, unsigned int port,
 {
 	struct dw_mipi_dsi *dsi = container_of(vpl, struct dw_mipi_dsi, vpl);
 	struct drm_display_mode mode = {};
-	bool vpg_enable_hack;
-	int ret;
-
-	/*
-	 * HACK: If Video Pattern Generator is not running here, the panel
-	 * initialization on the Sitronix ST7703 (RGB30-Panel) times out...
-	 * FIXME: figure out why Linux doesn't suffer from this
-	 */
-	vpg_enable_hack = true;
 
 	switch (cmd) {
 	case VPL_ENABLE:
-		if (vpg_enable_hack)
-			dsi->vpg_mode = VPG_COLORS_V;
 		/* Switch to video mode for panel-bridge enable & panel enable */
 		dw_mipi_dsi_set_mode(dsi, MIPI_DSI_MODE_VIDEO);
 		break;
@@ -945,14 +934,7 @@ static int dw_mipi_dsi_ioctl(struct vpl *vpl, unsigned int port,
 	/* Probes should have occured by now */
 	WARN_ON(!dsi->panel_bridge);
 
-	ret = vpl_bridge_ioctl(dsi->panel_bridge, cmd, data);
-
-	if (cmd == VPL_ENABLE && vpg_enable_hack) {
-		dsi->vpg_mode = VPG_DISABLED;
-		vpg_param_set(NULL, dsi);
-	}
-
-	return ret;
+	return vpl_bridge_ioctl(dsi->panel_bridge, cmd, data);
 }
 
 static const char *vpg_modes[] = {
-- 
2.47.3




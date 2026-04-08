Delivery-date: Wed, 08 Apr 2026 14:22:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wARvr-009vq8-3C
	for lore@lore.pengutronix.de;
	Wed, 08 Apr 2026 14:22:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wARvq-0006Bq-JG
	for lore@pengutronix.de; Wed, 08 Apr 2026 14:22:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nDqKK/4YsSrDxgubP33UZAPC1zInBI+GoTuZLU8V7qA=; b=Aub31LGFPgSwl99Wa0lLt6+t4i
	qsVzhojyf73bsO8Wxtz3wDaZuWqTvXGysQbXk3wfcHaSoD9RIKopgI2cAK1iw0R3XtAJAkyiv+0sQ
	rVLPkznBdtNOX7ugBH7zJ0jRBeV+dg+SfEt9tQ0v47rYes7R0i8JjyAMgobTN5lKqNYb0zjdeF6+g
	VuqFrZU2pGbArptW1QjsRPL5iDHG9/b2Y5AMeStXNM2yyU5q+Ue4FmhkwLCO6k7QxNDUkW4dIeNby
	waBP5K5bGXvIoxKp6PMSR1zf5dpE4rrR3BVRGxHF5allDhkTuPV7JbPrVZ/vJMiteVBz6uPA2jY4A
	1UAtm/AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wARuq-00000008ovv-0fvF;
	Wed, 08 Apr 2026 12:21:52 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wARum-00000008oud-281I
	for barebox@lists.infradead.org;
	Wed, 08 Apr 2026 12:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=nDqKK/4YsSrDxgubP33UZAPC1zInBI+GoTuZLU8V7qA=;
	b=wyyHdIQgt1EpFTtpHc3Hbu5dDhNDlfWvIE5KaLn3HP1f7ar3/vBStHwq1r2iZJk2M+wmt5pa8CrAk
	 oJz9fslvjQH+Z2+9HvcCyfLSv6aZGOpkmRSB1xHDyYB6zBCtLOvRObxlK7QXLyIGyIQvh/8DH9CpYz
	 TUFdm4gobMJ/PTrf1plxUJftcX36mnNr955suJLVvnzWDgoVhmJqhGaSFTTFMtsiO49kQX8TpYSxp2
	 69tVcl5woHCicGGv+iPlfPnyDVFwgaeM3DSrqzjWA6nmeNuBi0o37zH/OZwOpBO4vT3O/iJHoZ7HFG
	 +rWhproeg/H3brK3Pb97cyEGCBDDnXg==
X-MSG-ID: 7fa81d21-3345-11f1-bcdc-00505681446f
From: Yunus Taskopru <yunus@protonic.nl>
To: barebox@lists.infradead.org
Cc: Yunus Taskopru <yunus@protonic.nl>
Date: Wed,  8 Apr 2026 14:19:12 +0200
Message-ID: <20260408121912.1428585-1-yunus@protonic.nl>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_052148_973708_2D5AC7F4 
X-CRM114-Status: UNSURE (   7.38  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: rk3588-rock-5b: use broken-cd for sdmmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using the card-detect GPIO caused SD card access to fail on a tested
ROCK 5B.

Replace the card-detect GPIO setup with broken-cd and drop the detect
pin from the sdmmc pinctrl configuration.

Signed-off-by: Yunus Taskopru <yunus@protonic.nl>
---
 arch/arm/dts/rk3588-rock-5b.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
index aca675f57f..decece25d4 100644
--- a/arch/arm/dts/rk3588-rock-5b.dts
+++ b/arch/arm/dts/rk3588-rock-5b.dts
@@ -55,6 +55,12 @@ environment_sd: partition@408000 {
 	};
 };
 
+&sdmmc {
+	broken-cd;
+	/delete-property/ cd-gpios;
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd>;
+};
+
 &pcie3x4 {
 	/* Does not work in barebox (missing phy driver) */
 	status = "disabled";
-- 
2.47.3




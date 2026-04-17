Delivery-date: Fri, 17 Apr 2026 11:57:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfwq-00D9Hu-0Q
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:57:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfwp-0001Tc-K0
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:57:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mHKZhhWew4DvVw9r+n7L109eKiKrlCYHiqSBS0Z5/NA=; b=Q+iWJK0CMRAw0VwVW/3Uw91pLq
	dK3OWsuFrcL8G9K/MKhJiGQoFStkgjSQe+aiix7hZ+ePcI1uSUP8cGc5tdKalpSR4w3VlNtvO7Jp1
	NujNiYAkc8jsk80BIyjpFBndsl9hZyNcMUxoDl+EbLwvj4ykwqDr7pVARGh2cDg/MraRbiF/hBcMt
	X7Bv/q8ul34dod5SENi/a2JUCDnliYjX8OcqFTZc/U32nm0FoyXbaMA05rsLHsWGQz0mOr8/DP6aQ
	t38Ww8SOP4hV0+mIEuUN1Zm6qRkOP+JOd5E1H26cLZREggcxFg7KDD1Rei2nZGJcmcmICWGfJf9vU
	CVHbBtig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfwN-00000003rrZ-04rO;
	Fri, 17 Apr 2026 09:56:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfwK-00000003rrE-2yB0
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:56:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfwI-0001GS-Rl; Fri, 17 Apr 2026 11:56:42 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfwI-005pNf-21;
	Fri, 17 Apr 2026 11:56:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDfwI-0000000GNQC-2B6l;
	Fri, 17 Apr 2026 11:56:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Yunus Taskopru <yunus@protonic.nl>
Date: Fri, 17 Apr 2026 11:56:30 +0200
Message-ID: <20260417095640.3903125-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_025644_747032_D4A689E8 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: rk3588-rock-5b: fix SD card startup for Radxa ROCK 5B
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both Rock 5B and 5T share a common rk3588-rock-5b-5bp-5t.dtsi and the
fix in commit bd5518cd7e34 ("ARM: rockchip: fix SD card startup for
Radxa ROCK 5T") is equally applicable to both of them.

As mentioned in the commit message, the upstream pinctrl change broke
the SD card startup and the workaround for now is to revert back to
the previous pinmux setting.

Reported-by: Yunus Taskopru <yunus@protonic.nl>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rk3588-rock-5b.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
index aca675f57f4c..2af8af7ad349 100644
--- a/arch/arm/dts/rk3588-rock-5b.dts
+++ b/arch/arm/dts/rk3588-rock-5b.dts
@@ -78,3 +78,7 @@ &usb_host1_ehci {
 	/* Does not work in barebox (missing phy driver) */
 	status = "disabled";
 };
+
+&sdmmc_det_pin {
+	rockchip,pins = <0 RK_PA4 1 &pcfg_pull_up>;
+};
-- 
2.47.3




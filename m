Delivery-date: Thu, 05 Mar 2026 15:01:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy9Gl-008LYH-17
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 15:01:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy9Gl-0006IH-LA
	for lore@pengutronix.de; Thu, 05 Mar 2026 15:01:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TZ86qMeAVxiHzlO2s45G030RERrxqxQzV78RQjpuyvM=; b=odYNZw4zrmPNoe
	/2MGtnFQ85i+xzDfMeU6egKCpnAXFRpJbPeWkHVMGlaTGBp442S6sSQPF7ZrtLn3G7gJa+Io16Vvt
	kEti5TxXOg+G20tgVTThUePPvFRn3Y0CObN8/z5kBGMH++euVA5uqFdKTvLU2JEw5rCA7GCIcXKJB
	8y3+hcJvB5C1pVNY+bAnz/bmatceB6I+DI0DMLf6w57JYgMhWJ31T4OXxEN+zfZyAh8u/2u13wr0O
	uW2PcpPlJr+XW4Bu2EdOQJvIQ9a7AmN3PLPvYyzOQEE90VYSR6o7RNk4xA6+uSoJ4ZqLub3w8Ijo2
	DC1h/aSlfaZ30lGWbBRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy9G7-00000001utQ-3U2e;
	Thu, 05 Mar 2026 14:00:59 +0000
Received: from cczrelay04.in2p3.fr ([134.158.66.154])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy9G4-00000001usP-3uZX
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 14:00:58 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id DBE94800504;
	Thu,  5 Mar 2026 15:00:53 +0100 (CET)
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 05 Mar 2026 15:00:44 +0100
Message-Id: <20260305-b4-sa2-usb-v5-0-8e92a459d20b@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIyMqWkC/3XOQQ6CMBCF4auQri1pZ1oprryHcQHtVJsomFaJh
 nB3CytNYPm/ZL7MyBLFQIkdipFFGkIKfZdD7wpmr013IR5cbgYC9gKF4q3iqQH+Si03Tklsnbb
 V3rB88Ijkw3vBTufc15Ceffws9iDndZUZJBfcyBqd8E1tXXW0N4r3vnuWoYMHlj6ymRvgl9B/B
 GTCeqwqKwV5p7cI3CZw/kKA1+BQmKbdItQ2oTKhgbxxBr3VtEZM0/QF8S86VnUBAAA=
X-Change-ID: 20260304-b4-sa2-usb-8d413bd5c768
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772719253; l=1338;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=FS9BeDod1Mm7zrWhS52neDRgZEqAhhto5F5CXGGut3s=;
 b=jHEZW6KazGBFJPX4Pl1cwJnWlO/qatCrozXg4NkO2rGsBZz27bJa6BxIM2EnnR4KuHY9n9oQG
 pVB7teobThJDnHeTQasr2QlPIWkCpijI9Xtfz8SEBA0299uln4S4flY
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_060057_117972_50DB0747 
X-CRM114-Status: UNSURE (   6.70  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 0/3] ARM: socfpga: Enclustra SA2: enable HS USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable high-speed USB on Enclustra Mercury+ SA2 module:
- Enable options in the defconfig.
- Enable the high-speed USB 2.0 controller in the devicetree.
- Change 1st stage image compression method to keep it small enough.

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
Changes in v5:
- Rebase on next to take advantage of hotfix in commit 510b79d.
- Link to v4: https://lore.kernel.org/r/20260305-b4-sa2-usb-v4-0-52ef8d83fc5e@clermont.in2p3.fr

Changes in v4:
- Fix commit message.
- Link to v3: https://lore.kernel.org/r/20260305-b4-sa2-usb-v3-0-802f52d308ab@clermont.in2p3.fr

Changes in v3:
- Add Reviewed-by field.
- Link to v2: https://lore.kernel.org/r/20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr

---
David Picard (3):
      ARM: socfpga: Enclustra SA2: add defconfig options
      ARM: socfpga: Enclustra SA2: enable USB1 HS
      ARM: socfpga: xload: compress image with xz

 arch/arm/configs/socfpga-xload_defconfig       |  1 +
 arch/arm/configs/socfpga_defconfig             | 15 +++++++++++++++
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi |  7 +++++++
 3 files changed, 23 insertions(+)
---
base-commit: 99053a95c9001afbbc5edde7dcef09776833d120
change-id: 20260304-b4-sa2-usb-8d413bd5c768

Best regards,
-- 
David Picard <david.picard@clermont.in2p3.fr>




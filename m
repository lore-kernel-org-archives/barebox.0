Delivery-date: Tue, 31 Mar 2026 05:18:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7PcW-0070Qx-1F
	for lore@lore.pengutronix.de;
	Tue, 31 Mar 2026 05:18:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7PcV-0004Ea-Qx
	for lore@pengutronix.de; Tue, 31 Mar 2026 05:18:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tHoE1/ok7a/j//0B6XZFOL8sfosguip05fAGuUHEQcM=; b=B+g6iGne/WLfb+XkB5WnGYtvNG
	NCcVPc+pDsGmtIXgVxar7gmK5qMz8BA9T0LofHRSlutyObfTWzlqySXwnPbKJfyWYmQQkH5GNhon9
	m00GT5soNMBQZkhDkq+xJTv2xzuT1efptz83uSitq/Dw3VH2UAYExSPcpGq5jJb2oBg0i4OGGcoCa
	0J1LlRhfAL1B+2Qr5k5of0d+XZvDPS+BJ1JskMXmUJ3rDckG7nNT4C1qXbWwaDbospq31UNiPXIcg
	Hfv9aN1OXDHa9UiPcpnVLNQqFR1e1REkpZsVYxqiyOsrSFZPv8TCLoKheDk4q5IDz3ozvjI/K7Hw4
	ZJ+oZt9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Pbp-0000000CDRM-35UQ;
	Tue, 31 Mar 2026 03:17:41 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Pbm-0000000CDQn-3Suj
	for barebox@lists.infradead.org;
	Tue, 31 Mar 2026 03:17:39 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-482f454be5bso58305425e9.0
        for <barebox@lists.infradead.org>; Mon, 30 Mar 2026 20:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774927056; x=1775531856; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tHoE1/ok7a/j//0B6XZFOL8sfosguip05fAGuUHEQcM=;
        b=UVdwASxvsxdAIEkuP6Uz7P4XstYODWyk4V8SFNKfg/ruKRM4vCCNWWdcY3LFPZZKro
         dOy+Nl3PxKJJoBoS2cQNCQRK/6o3qgn+7EPjGYGOZP+LTvYG+27ZZ7E98a64lj6y/Eb2
         5sqzGkvLA8i0B0MTi3eWEJkIJEr5WFLop/oDSyXRNr6cZ1dsfxxIl7+ZhqJOap+Z5VjI
         Bea/vzuJIn7Amw6lk2cgiXTgmk7+3J9x2QpmPozzvq7ui9WNvpL4k+LHx3GGF6/sj8wg
         h0hSqPSEvPsSTiz2eXmbpEoJP9Zg/xT8WO415KRORaWetspJcItijPAvFO2v1Qpb1zpp
         BcQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774927056; x=1775531856;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tHoE1/ok7a/j//0B6XZFOL8sfosguip05fAGuUHEQcM=;
        b=ETdgmsBc0d51zErkFjcZ6wue1BG7noiaqzCgQxkBNFZAkgXaLMg9EU1u4191ezDleJ
         jbqA/5X7d6vSicbGfGGnGjfwFZB40kxm97j+HNjmeZ+02jET8DoRjoBi6/YL+s7Y5Nj5
         XQpIga19qaeD3jVsZBtS1kAOXQFNj3LOeMH+Fh//ShUHQRkiG1Rh8nyidrEXpKJSU8WD
         SCo7+ANC+A2bJPxZ4nRoIg7QcQJgaD5n/ObMM0I9g5bEahxQRGdPYoiZ4/w0hLOjssuD
         9rVI8ZDmhvGXTZPd4cnEMxhSZQwg856w+duQb6vmadsJZJpUb+XCsuUFrnRwchFslKDr
         l08g==
X-Gm-Message-State: AOJu0YxqlcZG84TcUHHevndD2i8NQlL9z5vDzT9yJYgMhPV6e6pYEqVw
	XYDhgAV+PhN57bydgMKRCJXnRov1LfGRbt9GcDQfcOc5XZ/lp2BTrPs+
X-Gm-Gg: ATEYQzzrMdszqrpzL6QTS1iWUL943t1GiwOzvB+629fy9hCvakdWurOeGT3iY6ro7pa
	k7FO3LZKvh0W/Cg3akq8Ci2FGSFI5pPCAm5dsrr6Gr+QB2jDBAUuqQ5gTumamlrHLdiYP7NOHXa
	JhcgbkF10wP7262lCFoJF/ftlcxetg3o3FI3u9psmqUKN+bd95HPk89fyqrUneWHwdUnuTAR+Qy
	mupI1v15Fgpf0UtyzE71ecxGIA41APH+yOPAAyw8ViZMxhmzTLGGUMaNmKUmkrjSOIqpBt0RjjJ
	oQkLCy/kMnTBFWHc+k2Aff+5aahyin198A5sYeKuH4YqbWftMwc2jKSvEmmal8H7RhqCwAki5Up
	gCRrhJfY7Ec4/v2qDZg3t1eLw1x6i85EfucCymmXlWgPNFv82rjkT4b2M1GVmJPtHmi4z9MYloe
	oyjN+1kI9Tt8JvgHIDjnKsh4c2EJmI
X-Received: by 2002:a05:600c:4ecc:b0:46e:59bd:f7e2 with SMTP id 5b1f17b1804b1-4887839a81dmr27670695e9.11.1774927056257;
        Mon, 30 Mar 2026 20:17:36 -0700 (PDT)
Received: from CNCMK0001D007E ([91.205.106.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887e952b0bsm607955e9.12.2026.03.30.20.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 20:17:34 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 30 Mar 2026 23:17:22 -0400
Message-ID: <20260331031723.195128-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_201738_875640_F1178497 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] usb: dwc2: core: add no-csftrst-wait DT property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Some platforms (e.g. RPi4/bcm2711) do not deassert GRSTCTL_CSFTRST within
the expected window but continue to operate correctly, causing probe to
fail with ETIMEDOUT.

Per the datasheet, GRSTCTL_CSFTRST is self-clearing but requires at least
3 PHY clocks after reset before any PHY domain access. Add a 1us delay to
satisfy this requirement.

Additionally introduce the 'no-csftrst-wait' devicetree property to skip
polling for the bit to clear on platforms where the reset completes but the
status bit is unreliable.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/usb/dwc2/core.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 60cc690fdbc0..9a2356ee074e 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -770,6 +770,7 @@ bool dwc2_iddig_filter_enabled(struct dwc2 *dwc2)
  */
 int dwc2_core_reset(struct dwc2 *dwc2)
 {
+	struct device_node *np = dwc2->dev->of_node;
 	bool wait_for_host_mode = false;
 	uint32_t greset;
 	int ret;
@@ -809,11 +810,16 @@ int dwc2_core_reset(struct dwc2 *dwc2)
 	greset |= GRSTCTL_CSFTRST;
 	dwc2_writel(dwc2, greset, GRSTCTL);
 
-	ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
-	if (ret) {
-		dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
+	/* Wait for at least 3 PHY Clocks */
+	udelay(1);
+
+	if (!of_property_read_bool(np, "no-csftrst-wait")) {
+		ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
+		if (ret) {
+			dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
 				__func__);
-		return ret;
+			return ret;
+		}
 	}
 
 	if (wait_for_host_mode)



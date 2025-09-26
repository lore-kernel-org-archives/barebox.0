Delivery-date: Fri, 26 Sep 2025 15:16:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v28It-001LM1-11
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 15:16:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v28Is-0002ux-Pw
	for lore@pengutronix.de; Fri, 26 Sep 2025 15:16:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BY7qop8tdV0leVCK7VhkV0YAltmNSkghnEYkKmcX1Uk=; b=rpxvCCcLt1Bz8UYFUISX/4c4Ok
	X/Wa8SILfiYvVW3bgm6UwNBqStdvGnD9Hak7bgMHw5giu4RzypxqNj8RBjN2rmjhcP5jDUWV7YVQx
	6T5ARIZS/mbqTFpcVGshnCoBGIbub3RSVxJpWyQIB600LTJUC45dH5SMtPIcPZR+jEMC5TmbkgOs9
	v1LCo0+KzRMDkZ7sxSh1AOiEG0+p6v1FRo0tyIG0WABYA3juuP0GQZk6X7SR9OCCH9z9OmiRLrWQI
	1xDhnHrzuVrwvK+xJx0h+1X+RlafW6ouPcwiYlkqvVJaCJY6rwh+Ez6LVuIcqMPeQ1I5uMih1TfHL
	bcIEAoow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v28IO-00000001TnD-34ws;
	Fri, 26 Sep 2025 13:15:32 +0000
Received: from mail-lj1-f180.google.com ([209.85.208.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v28IL-00000001TiT-25eU
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 13:15:30 +0000
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-3635bd94dadso19201631fa.1
        for <barebox@lists.infradead.org>; Fri, 26 Sep 2025 06:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758892526; x=1759497326; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BY7qop8tdV0leVCK7VhkV0YAltmNSkghnEYkKmcX1Uk=;
        b=H6myr50rf5osjLnnGoFAz1erd9054YBHcGa5zWc2w//g9KqKhQ1CKXL6o47PL7oGMp
         r9NKKO7GCarQxhZyMNIvizOZro1pfjcqnxIxgsK6hETVO0hD1KCCjX6rDBHEiqDyIsNm
         q/nwUWZIuX4MsSDd7/+6epCDWwPlAqtqgmBNYFJo30dxUEUBeZohb6x3oo9W8GipDR/6
         C8Fy5CHl1vQxKkCFvpdrTOwZOpfosVV6Zmu3fG+UvOk3XqZXHNoIr4kt+rYtlFw2PzUm
         GSDAqVxcOvBnhOaKYEuZH10ZK9/wZTe1LnO1zwweEL1fBNubyTq1dHA5hrrUTrbYdWnK
         9dKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758892526; x=1759497326;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BY7qop8tdV0leVCK7VhkV0YAltmNSkghnEYkKmcX1Uk=;
        b=QGeIcXpCQVQ8tuO6S2mpUuuPdvGcnnnEW4RqQOfIXKYb8cO/bdSnXbpgDfBP0Y5ASc
         DepefWN7FdpxoYE8OqD/KA3tc+AdaRX/ZnIx8aFC35UvXo1orv+pJ1RvO4QQo4ALzol+
         XCMPaEuwgWjqJ+D7jB22qSx7tLziV4SfziDcAcopIghfwFVi+g44Ez98xIgJV/FHgGmm
         cYLOnD9IcGJEYzS8Vp8RX2mHTqtzBSHItfJ8LYyPkGUdvPfskPD86vdOK/hozO5mC0BG
         /lP6uh8CEj7aG5bM65sUh2mciIucb5KoRc75VtXgeMw+gJ5hGiCJukLoJqQJJPxoHDVW
         g9qg==
X-Gm-Message-State: AOJu0Yxy5lvLBva2ZBCDy8925iZRSgUoYAXr0MBeXpXjT8k2tXF4MCMt
	HH26SjeAyUwmXKYhGgPmIU4lUe2dkrSz8w9Pbo0t8u34+foRYEDZ6EQuxbTh/A==
X-Gm-Gg: ASbGnctuv83UXaANsw7xCcKUrDxPS8hbQRvlkJDjeQ5cp0OCtx8eYOWeRsltKwRE2rG
	oknc/YK/fSmodRCh3Gj7Ly3xJlYVnJfvJVx+91qfqsKoFrovVhQEtSM4GfJyJayP0Ydjwc1Vf7c
	wQAwct03mItBzyTWBB8KiCGIL46LW0GeBqpas+tCAUbR4IrQCHKvexlp9piQF18RBbGos8YJfzA
	StSTVsJN2UxSog+V/uwR4vQm6zn+Fa8ezSN08Tp5Wx0HU7pJ6i6RC+EGeU1fFegMAhmVR+Nj6e5
	jLtiNsGtzKPX2O6KfglEoVwYMF9tSrYuNEsYpvWFgis0HjYWJ5b1Gp/2wIHVzHJCdz82QqhxXZ4
	D08GxbR1OejDrNsx7x2sOmn6Oz28SsMOIh7FUWlSYROt48d0=
X-Google-Smtp-Source: AGHT+IFzWfiRT2PZxBkIHnZUWfPyjHpUh8y7BxhX+KL5K4s/Q8R+FrWeMEJrU1wSda1XPBPlAaDjSA==
X-Received: by 2002:a05:651c:221a:b0:371:fb14:39bb with SMTP id 38308e7fff4ca-371fb143b57mr1386961fa.16.1758892525758;
        Fri, 26 Sep 2025 06:15:25 -0700 (PDT)
Received: from localhost.localdomain ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665624esm1810974e87.69.2025.09.26.06.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:15:24 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 26 Sep 2025 16:15:14 +0300
Message-Id: <20250926131514.673245-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_061529_541626_7EA26BA0 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC] clk: rockchip: Fix CPLL setup issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a dirty patch to solve the RK3588 CPLL clock setup issue.
It's taken from the Rockchip U-Boot repository [1].
Any ideas on how to improve it?

[1] https://github.com/rockchip-linux/u-boot/commit/bd11beba4f997b62809d24eba30a8713c8bbeb81

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-pll.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 904d70d5d4..4b92639e1b 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -940,6 +940,13 @@ static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
 		}
 	}
 
+	/* Barebox addition */
+	if (pll->reg_base - pll->ctx->reg_base == 0x1a0) {
+		/* Determine CPLL clock and patch clk_bisrintf_pllsrc_en */
+		writel(HIWORD_UPDATE(BIT(1), BIT(1), 0),
+		       pll->ctx->reg_base + 0x84c);
+	}
+
 	/* set pll power down */
 	writel(HIWORD_UPDATE(RK3588_PLLCON1_PWRDOWN,
 			     RK3588_PLLCON1_PWRDOWN, 0),
@@ -971,6 +978,13 @@ static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
 	if ((pll->type == pll_rk3588) && rate_change_remuxed)
 		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_NORM);
 
+	/* Barebox addition */
+	if (pll->reg_base - pll->ctx->reg_base == 0x1a0) {
+		/* Determine CPLL clock and patch clk_bisrintf_pllsrc_en back */
+		writel(HIWORD_UPDATE(0, BIT(1), 0),
+		       pll->ctx->reg_base + 0x84c);
+	}
+
 	return ret;
 }
 
-- 
2.38.2




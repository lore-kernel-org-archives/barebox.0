Delivery-date: Mon, 29 Sep 2025 14:33:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3D4Q-002Pky-06
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 14:33:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3D4P-0007Hu-EL
	for lore@pengutronix.de; Mon, 29 Sep 2025 14:33:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VuEzh2Alufo2iE1a8w6CD0E9IhMjlw3tEOQwXRoxuho=; b=jZEk6gYLwBtGABwPn4I0OcXi7R
	rZEQfgHtc2jFRHTJonl12S8if4Ri0tuvoo8NbICqsqGl9XvkQC6yGoinf+nXsJV+fb73FsOmToCzb
	9rEVGD5aq6eiUwqvVpnynIDBQy0LXxAIa+48D0ke5Yikj/LKv2vdCnE8mqu/Gv7TNNfcbRrF7hBir
	kWnZ5+cXAJ6NAKmAfhfCNUfFqNZgpgno9+JKajWOqVLQf809muCVm/GOwW+e3TnR2yeF+mghTQdJY
	cRVZyUPtIPnflcrPxliWe7L9lRS8bPMK5FmAhqEpr28kaZBezxpX+Q4PT7a91ZnSOuMqtptQ2doVJ
	Q1thqJHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3D3o-00000002ThX-0fmE;
	Mon, 29 Sep 2025 12:32:56 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3D3l-00000002ThC-3CFX
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 12:32:55 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-36527ac0750so42695711fa.3
        for <barebox@lists.infradead.org>; Mon, 29 Sep 2025 05:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759149171; x=1759753971; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VuEzh2Alufo2iE1a8w6CD0E9IhMjlw3tEOQwXRoxuho=;
        b=QRxPQijpKKreOmVC56vnq5OtXnBrfxN1mda0mndKwfhdp1y0XjsQY8bq9w8TtZZM9x
         4LZPJoNjYAAz8IqIlEs4x8QDpocgzQZRqR6RcfP3orrfTKD1hxFrAWxtC8hEFuEKyYbq
         oReuBZQPJk3urQXwHJxr/MHGE08copoIddblr4/F4L5K4c1lOYC/r5jRPZ4ysGE6jDfN
         4VRoN/FVptVlIDcIxqmVC3ZFJxOWp8MG0y9y74+sDDsaqDvw19MLCbNim2LoIAx7JaSY
         AFMxRgucC0N0gDVQcJ37HdXImJBs6xW8SxCRJ79/uMJZoKvVYOMKvJVIz5xX4FSZlAho
         2n9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759149171; x=1759753971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VuEzh2Alufo2iE1a8w6CD0E9IhMjlw3tEOQwXRoxuho=;
        b=Vy1Txj/XlhcM3uBk6Wudr88jtx4oAZp41EVyLGi9FqI48tjnvllYayyNS3pXbESFc6
         3YykUSHJU7sU+AZpJduESF21dnvKuzLZsMyOsRekfXrEG2obtnmDDllfAtWODfA0bz3k
         ajb1GBT6OhLtMdV2tOCOjCjFIEEzxTP0wSjocwkObR8AXQoZ3K3u9O/kLHft8rVntfIN
         SINkWtA1QMrvNKPGUrZuoigqOGZAx2RNZexvtoU5AJfUvG2qmWVHb59FZddhQyAiMaCp
         IvL6x25ocetYCyEdsudNqaReenBVlwSVZAmyNLiQQPpfMrTd8lMc0bGa6eRjlu+9R+26
         nEEQ==
X-Gm-Message-State: AOJu0YzvQF6YlUqQyLxhyUyoCrug8SYEYINR+tbPOmWJMGWeSmcACUYB
	xRQOp+hJVTHSziz5svw0X4M4kyJgZDaszzePT5CVMSAzj9ULNLMZumiS16zTpJ2O
X-Gm-Gg: ASbGncvSEc0o+hvNHMlC9ZmxbaaGnl/bwuAhA/+tu9e91scklLR4P+ypjpARA3/sXrB
	fCEZj4nm/cFuygC+go+RCf13cRUIWRcegHJ9A/QCD9BcIVGO1gna6+qh7qNIaPddNYRmU6a6pLR
	hbYdRaPZ4aM0kwr74vuM16rAW8IX9CYh9cHOons25xoa8qNiCgsqduKEQHpCF0Stv5G7Nvqa23I
	oyE8Y5KSQSYxPVrjj+XY00CthCBC9QLVigioKRddW9tyoejocMHBkny1keeVzh5XWCDM+E8HM8X
	XoEwYc2cI2z8jLU6fOcHeVAKkUlfP2F6hhFAJt0+aqDMGUqRcbYxejx9IrWjPepFBlji975CX9N
	gMpFEamrcOXKRHto4UzqF0Cre7WUv/Xm+xuv9M3U3rMDCC60=
X-Google-Smtp-Source: AGHT+IEWaLRE7tWrBsfEoAnPtIgPAReEyUjQAfTNx3esajrSBay5hSbPKuFBPTDpkY8ylnniK82UOA==
X-Received: by 2002:a2e:bcc6:0:b0:36d:e147:3f34 with SMTP id 38308e7fff4ca-36f7cce0464mr42694561fa.2.1759149170789;
        Mon, 29 Sep 2025 05:32:50 -0700 (PDT)
Received: from localhost.localdomain ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb4772c97sm27311421fa.6.2025.09.29.05.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 05:32:50 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 29 Sep 2025 15:32:39 +0300
Message-Id: <20250929123239.838390-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_053253_819735_37CC16FE 
X-CRM114-Status: GOOD (  14.41  )
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
Subject: [PATCH] clk: rockchip: Fix CPLL setup on RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch fixes the CPLL clock setup issue on RK3588 SoCs by temporarily
disabling the PLL source during PLL configuration. The fix is ported from
Rockchip's U-Boot implementation [1].

The issue occurs because CPLL requires its source to be disabled during
configuration. We temporarily set the corresponding bit in the CRU
register before PLL setup and restore it afterwards [2].

References:
[1] https://github.com/rockchip-linux/u-boot/commit/bd11beba4f997b62809d24eba30a8713c8bbeb81
[2] https://github.com/rockchip-linux/u-boot/commit/7560cacdd3a68bb475f23b4249a98025c89064d4

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-pll.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 904d70d5d4..8ac052ee07 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -923,6 +923,7 @@ static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
 	struct clk_mux *pll_mux = &pll->pll_mux;
 	struct rockchip_pll_rate_table cur;
 	int rate_change_remuxed = 0;
+	bool is_cpll = false;
 	int cur_parent;
 	int ret;
 
@@ -938,6 +939,17 @@ static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
 			pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_SLOW);
 			rate_change_remuxed = 1;
 		}
+
+		/*
+		 * CPLL on RK3588 requires the PLL source to be disabled during
+		 * configuration. We temporarily disable it here and restore
+		 * the original state after PLL setup.
+		 */
+		is_cpll = (pll->reg_base - pll->ctx->reg_base == 0x1a0);
+		if (is_cpll) {
+			writel(HIWORD_UPDATE(BIT(1), BIT(1), 0),
+			       pll->ctx->reg_base + 0x84c);
+		}
 	}
 
 	/* set pll power down */
@@ -971,6 +983,17 @@ static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
 	if ((pll->type == pll_rk3588) && rate_change_remuxed)
 		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_NORM);
 
+	if (is_cpll) {
+		/*
+		 * Restore CPLL source clock setting after PLL configuration.
+		 * This ensures the clock source returns to its original state
+		 * now that the PLL is properly configured and can maintain
+		 * stability without the temporary disablement.
+		 */
+		writel(HIWORD_UPDATE(0, BIT(1), 0),
+		       pll->ctx->reg_base + 0x84c);
+	}
+
 	return ret;
 }
 
-- 
2.38.2




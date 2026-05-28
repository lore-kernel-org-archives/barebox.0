Delivery-date: Thu, 28 May 2026 14:17:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZff-004jdf-02
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 14:17:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZfe-0003cA-B4
	for lore@pengutronix.de; Thu, 28 May 2026 14:17:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wvWMrfLLx9GdmGZ9Ce/mIBA/UtijdcYAda9K24va3eE=; b=X+otB6qLl8zuZ/kScAqa1NBKdr
	ezx+l3OlvX7IylevTs9Dd+OwzvJrUYse6zgppx8rM9hD86PrX5v19PbPWkOnweAXOdGXNrwwmXnKd
	o/KyPEIghqizBsDEUht7W1aODQD+GkahQlCh3epHrCxkiXDjfv13ZDPIHty4pxRYnjrbXIj9LL1rQ
	RYb286FiInWC8ixMMM3e5yU4zgJHw2/O4d/0aCgh6coEgDVEjYNefegXPaZ+gpuhabiA8eH4XEwrt
	qKr7d5BbEQokQ2eWNdlpbeEImRZaW7rjR6rSNbvNjCN2IKoivQM1VTV9HOog5zYTJcxoy51f9Hdpm
	/nQhWr9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZeS-00000005hsq-26uS;
	Thu, 28 May 2026 12:15:52 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZeP-00000005hsA-34vV
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 12:15:51 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-393da8f389bso107479011fa.1
        for <barebox@lists.infradead.org>; Thu, 28 May 2026 05:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779970547; x=1780575347; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wvWMrfLLx9GdmGZ9Ce/mIBA/UtijdcYAda9K24va3eE=;
        b=d2sGLmx656ScYit1O2tcP3/SkMhJoGVFLc/ooLKMMsGzRSiD1SQ4I4WV36VfSTShma
         qADf1CYPHb8mprNHDrJeJpweHWCKa8pcoNoFXNLDYBKDpIPB7EFXxJpocSyZ0g3btGij
         LqvlHvGBD+tW52NvbL1q9lIlIjMp6d9dJiJs/bOCo/oJstCMmDTfgbJ5HydoBKfYxZwr
         C1IBCYnabXbqb0VTAD7LDwVJRBxGuu0tWuaeHtrGBM4U5jy1jMHkXIY9djYmW1lB15Lw
         Rh6ALf5DtDJRDwf+3n2n6XP5NwI8l5ed4/l5etxTvcUkKicWOwic83gRdKVbODaJ0GuF
         MTRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779970547; x=1780575347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wvWMrfLLx9GdmGZ9Ce/mIBA/UtijdcYAda9K24va3eE=;
        b=e+FyafMFehbO+XJBOqzfu+CwSK3mYCSgZ4/YmQM9BaYOFYDvyFBXAsALmBuYV0QOv9
         EbJiNgU5UOik42dGnqoWwLSuU/zhYfXEgH1f6TdQ0Ec9UHp6YdIHyVqOmEWC7OxZ1QIy
         QeaCIHDEjyWcsIQPfHX3u+m01ZsUU64nEY5C9dGGhbtk1gw51wpxgyVouRcwMCr1E714
         S2a33omw4MrBiFn+9SsQ6LG7yaAT+5QfqxJHagbdzA+3u0u4Jz02G1Qon2LWsVFc6iXv
         mnB8KMCrLinwmNjVXRo9jpZuviyDY0PJjg5b/2lf6M4VUs76mCKVPsPij7FljpO1EWS/
         SE1w==
X-Gm-Message-State: AOJu0Yw49D7e3qHQFDtmdPH52vrRwdDPrvr0/L/ZIfXgIyTOxIP2pTod
	beqTYke7t3VzesD0jU4FmsGTYoG6wcarFqbMPd/XnluCThq0YcurFmLPxZ5DoadcPqY=
X-Gm-Gg: Acq92OGByPe+jjreo8iWHu4D5TK1W6hy8ahe3sOR6paRwKxi1fEMtsuWUwAm2Hc0zT3
	rVxaUrheSnaXeO59oeXg6FFzBztPSUsXQ3DfH548AVzQd0jK9SnPLGllIY3eVghXXAxRfoBovMb
	RKKc9MyinxzaYjBDs7SuFDidQOv1BmbVlIJUGG5N8MTNX5INkmbn3/QRXEO3R0NSzUGt8DR3dU9
	QzRUy7XsMTrct7+SOKOJuAdTRro0gjGgW2DY+aUa9VBULvEpw/WX2R8YKYFTxr8Ysxk7BCoztCX
	uuStyUYaWfrKczEvOtXOxJuZ/nwhwxhi+M23cvVUpOyrVhg7bfN9Ap778AtPIBtIWQ+VXGU8EZW
	vMlxSNT8lq5eXGjC4k/ilhMxAakPJLgInEkLKhrRClCS8QU23Re4WLfwdJ/ks+hRDguanpgQr/v
	4whGeaiKlJt56uljgG0PN9CwWs4Ew1/LOVrddCzvuzpSZ5ejOHvA==
X-Received: by 2002:a05:6512:2113:b0:5a8:b92f:5471 with SMTP id 2adb3069b0e04-5aa3238e249mr6747244e87.23.1779970547260;
        Thu, 28 May 2026 05:15:47 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa462e54e4sm1898035e87.37.2026.05.28.05.15.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2026 05:15:46 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 28 May 2026 15:15:31 +0300
Message-ID: <20260528121532.1242489-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260528121532.1242489-1-eagle.alexander923@gmail.com>
References: <20260528121532.1242489-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_051549_811631_EF3124DD 
X-CRM114-Status: UNSURE (   9.59  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] clk: rockchip: rk3568: Add PCIe pipe clock gates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Shawn Lin <shawn.lin@rock-chips.com>

The PCIe pipe clocks are currently left as orphan clocks and remain
enabled indefinitely, which is suboptimal. Add the missing clock gates
so the PCIe driver can explicitly manage them when not in use. In order
not to break compatibility with old DTB, mark them as CLK_IGNORE_UNUSED.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Link: https://patch.msgid.link/1772799641-32164-1-git-send-email-shawn.lin@rock-chips.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 3b0cfdb865..12b3514afb 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -830,6 +830,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(12), 3, GFLAGS),
 	GATE(CLK_PCIE20_AUX_NDFT, "clk_pcie20_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(12), 4, GFLAGS),
+	GATE(CLK_PCIE20_PIPE_DFT, "clk_pcie20_pipe_dft", "aclk_pipe", CLK_IGNORE_UNUSED,
+			RK3568_CLKGATE_CON(12), 5, GFLAGS),
 	GATE(ACLK_PCIE30X1_MST, "aclk_pcie30x1_mst", "aclk_pipe", 0,
 			RK3568_CLKGATE_CON(12), 8, GFLAGS),
 	GATE(ACLK_PCIE30X1_SLV, "aclk_pcie30x1_slv", "aclk_pipe", 0,
@@ -840,6 +842,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(12), 11, GFLAGS),
 	GATE(CLK_PCIE30X1_AUX_NDFT, "clk_pcie30x1_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(12), 12, GFLAGS),
+	GATE(CLK_PCIE30X1_PIPE_DFT, "clk_pcie30x1_pipe_dft", "aclk_pipe", CLK_IGNORE_UNUSED,
+			RK3568_CLKGATE_CON(12), 13, GFLAGS),
 	GATE(ACLK_PCIE30X2_MST, "aclk_pcie30x2_mst", "aclk_pipe", 0,
 			RK3568_CLKGATE_CON(13), 0, GFLAGS),
 	GATE(ACLK_PCIE30X2_SLV, "aclk_pcie30x2_slv", "aclk_pipe", 0,
@@ -850,6 +854,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 			RK3568_CLKGATE_CON(13), 3, GFLAGS),
 	GATE(CLK_PCIE30X2_AUX_NDFT, "clk_pcie30x2_aux_ndft", "xin24m", 0,
 			RK3568_CLKGATE_CON(13), 4, GFLAGS),
+	GATE(CLK_PCIE30X2_PIPE_DFT, "clk_pcie30x2_pipe_dft", "aclk_pipe", CLK_IGNORE_UNUSED,
+			RK3568_CLKGATE_CON(13), 5, GFLAGS),
 	GATE(ACLK_SATA0, "aclk_sata0", "aclk_pipe", 0,
 			RK3568_CLKGATE_CON(11), 0, GFLAGS),
 	GATE(CLK_SATA0_PMALIVE, "clk_sata0_pmalive", "gpll_20m", 0,
-- 
2.52.0




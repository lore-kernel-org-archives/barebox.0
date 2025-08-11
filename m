Delivery-date: Mon, 11 Aug 2025 08:44:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGk-009Fgf-21
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 08:44:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGj-0002Wb-RU
	for lore@pengutronix.de; Mon, 11 Aug 2025 08:44:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zwhJUJc1RLo62AwsrKgYbBuC+TmNAG09g2KumcsGpQ=; b=36hchR8oWn9kqD
	d+4xv1uUZhC9u9yeTAShY03PaO0ESy1WTMlpAvUCntdeOZywsTp7BzjrxiOGfPAxQqXz+NxuOdZLL
	dDq4wOPCNkc7W9Df7BOd/Z3Vmo/rrKw8GTrL8Gi0jXOOXm0/OLdS4UenF220zKiEJZ6TdpurtBiiH
	L8z6wMJVdk/OS1Kd/OMXzApXG/AxhMe4G+6LyqybYGntg/0uUJBiIDYYTp2qCbG2vDOr528npymVb
	PQskXhYw+TbhWIwVh4hsqIRx3GuGszXtVLVG0cfje2ytqvZaKXbgKiab70jPesN1+U/IpyWhQ87Ej
	cxP3fil3W6QK29vM59hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMFz-00000006ci6-2VgN;
	Mon, 11 Aug 2025 06:43:43 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMD8-00000006cTL-0SS3
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 06:40:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=5zwhJUJc1RLo62AwsrKgYbBuC+TmNAG09g2KumcsGpQ=;
	b=sHBXsoSHMgp96mdgJ2jsl/7DrOLzd4dU9fq+kJh3VSHBb4OQqA361OCE7f42OP8Z3ZXnyPpdUgGUU
	 EflMwq3OKNMnbOszeR5KG+DaLscxETPK+SZV8wPOMYaW5grVCfZ5+9Uq9HJsEzj/80xbaRlyw3pAJP
	 vapUOppE9z7tKKtnHEo4o4tznXsDVOGVLrEO8a+BPpEZWYD7knog4JdkWindEhsqFTlRKMh0uTaarj
	 HwwiNfpDmXYM3eNjEEm3qldji0KwMT+zUMUI4Apv058cQzfFRHhMRZbTkLSZ1SxOur0TqUu36V2r8H
	 e6+ehQP3KdYpkqpoR9o9HwCR/QgRQzQ==
X-MSG-ID: 1928f8a0-767e-11f0-9d4b-00505681446f
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 08:40:19 +0200
Message-ID: <20250811064026.753776-2-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
References: <20250811064026.753776-1-david@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234046_492634_26ADEDC6 
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] clk: rockchip: clk-pll.c: Fix macro name confusion
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RK3399_PLLCON() and RK3588_PLLCON() are identical, but using the RK3399
name in an RK3588 function seems confusing.

Signed-off-by: David Jander <david@protonic.nl>
---
 drivers/clk/rockchip/clk-pll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 64f9e0dc5e..548cbe391a 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -943,7 +943,7 @@ static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
 	/* set pll power down */
 	writel(HIWORD_UPDATE(RK3588_PLLCON1_PWRDOWN,
 			     RK3588_PLLCON1_PWRDOWN, 0),
-	       pll->reg_base + RK3399_PLLCON(1));
+	       pll->reg_base + RK3588_PLLCON(1));
 
 	/* update pll values */
 	writel_relaxed(HIWORD_UPDATE(rate->m, RK3588_PLLCON0_M_MASK, RK3588_PLLCON0_M_SHIFT),
-- 
2.47.2




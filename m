Delivery-date: Mon, 31 Mar 2025 14:40:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzERQ-006ZCq-2F
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:40:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzERQ-0006iY-40
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:40:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IcYfB+2Hq8HuJ3Bk4b2TJNYx70jmGWgh34NsjeNQ6GE=; b=onkXDYzHyNY08Gy7itTZAVTcXV
	iCQ/PNSJXNgk/aXZyeNYXCUBb3Fx2RCBzDlzRLhHNfbcXVQARWCg4ALgp/COv69giNCBuhoIGyHvV
	K9BgmRcguJRlr5mKdlg/FgNZLND3aeO7qqajeRrRTLpyvc7dG1jeu1p5tlkCvY99DtGL1ys3IGXSF
	HV3UHzmy/B4mQgMem+4AzK77pC/lo6b2xz8hBDokvvILNowe/4bTW9VsstfeUp8KOwCq/iM92hFxU
	aPTPTapZB3Jnixqs/uKPC3/d88R2SjGAUsCG8C4gN44k06vSg6X9/MJlgsYGRx9XGTN3gWyDSqyzg
	2+Eh/tCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEQx-00000000Mwv-2iHD;
	Mon, 31 Mar 2025 12:40:07 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEQt-00000000MwG-1zlY
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:40:05 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-30761be8fcfso41489971fa.0
        for <barebox@lists.infradead.org>; Mon, 31 Mar 2025 05:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743424801; x=1744029601; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IcYfB+2Hq8HuJ3Bk4b2TJNYx70jmGWgh34NsjeNQ6GE=;
        b=aB4+smSGm87O8sM+EI6oSx/bdJB7+eXJhK2mZLnTketlsAboVgbjWqVKiS+hzZ/zVb
         EJDtzAQzeO9+cHItBY7uDyb01BbuI8Yweo1ZZ1ea3cVGBOl+4UkH5GufAZ9BksrFFTEl
         nQRSadRUUiU0pbxYQy61AH0ka+GdH0z9pIVEzj78H7IOV2pSpObi1VPDv+kYxNjyMI1e
         AapSFjQgi3jP5jxaEIt0ksBtlyUJVqWWO3kKaFTcxTMG/6giEskU7fQN3tAfeKr2mkcy
         lKDTGGSKQKpj5A6WhL4HDfl+xSyKNt+m8kJjgPOB+NU/5FHWwSZxjRxnz7R+wYRviO6w
         t0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743424801; x=1744029601;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IcYfB+2Hq8HuJ3Bk4b2TJNYx70jmGWgh34NsjeNQ6GE=;
        b=j6M8C5TxCOxjYLAIAcsC6sD3fqJ6aUISSkZqxP0Eda+/GLBIjmfCXRooS/Lr6yM/rX
         ZvevrQV9XSgFZRm0CcAuxGezrmqwJJiwLlRy1w5AxEj9UhjSMjaNK1iP/QD1/AzTHHtO
         Mb06xH1v6fquAUBOMHbjL805DG1Lk+Hv4VmI/c4eCBjHxfeAtjq0RrD2co7cytnpm5Y4
         wd5MHudP0a7Gu8JofDG9pMqbqjdNMAcos7/yuKVJLFqm9mbE16cDW7jMLx/VG6YdXzC9
         op0FB1hCp+HzzAAaaiVuH3xPzQeaSH5CFcpuIXJhqaECzmSOCYtPpi2zSVdugbzMdxPx
         2oig==
X-Gm-Message-State: AOJu0Yz2AMfhbENLcU4XbDX5MYh6PTsVfvbgcmxnQRfPtKImLClxHpAc
	0Rs+3DPkNkWoEK3AyVAQieHUSH2kTfxY3H4Y+jurqdIkWdwXQAA3N0ND3g==
X-Gm-Gg: ASbGncuEMG6EEjbdJ5sLLEub7KKSq6G0VpFyzilRQ0SqHEBVeAygfwtJmX7I3Qmn4gf
	F45OQH7Fps7fdVJ+yjAXU0Wynmx3w589yEFE9ZKbk5PYsEdC6GuwXJ+P4pQ4qYmDSvwQ3ioXv9q
	yDEjfYrxoHJC7/EtyvzUHcSiuhNf8yiblschleTwM8GdtmCicxQaGxeV24OZdXeMo6iQUIpedDm
	9N9x4Z1r/+lb9wP9rm/kLIFVw7rW7f1jBLLCXQ6vi6nSNMEJ1A6EAtsx/riFbElS5UD00RyG4sm
	NZtKvnI5VLvodaxpNDRkucRW+RLAbV9lYwie8s1iwc3efapgPmfcJW/bBCl6sOoHod/FLg==
X-Google-Smtp-Source: AGHT+IGcb2tIGLE+9SZWwI5vM1C39O4RU1vBUEInlLTRshqmQ1E3mooJrNbSF9ENSoKHTLsHeiSJLg==
X-Received: by 2002:a2e:9fcb:0:b0:30b:bdb0:f09d with SMTP id 38308e7fff4ca-30de030102amr31951341fa.32.1743424800581;
        Mon, 31 Mar 2025 05:40:00 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30dd2aa9124sm14119701fa.3.2025.03.31.05.39.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 05:39:58 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 31 Mar 2025 15:39:48 +0300
Message-Id: <20250331123948.337747-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_054003_517966_5C64EC7A 
X-CRM114-Status: GOOD (  12.23  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: rockchip: rk3588: make refclko25m_ethX critical
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Ethernet phys normally need a 25MHz refclk input. On a lot of boards
this is done with a dedicated 25MHz crystal. But the rk3588 CRU also
provides a means for that via the refclko25m_ethX clock outputs that
can be used for that function.

The mdio bus normally probes devices on the bus at runtime, by reading
specific phy registers. This requires the phy to be running and thus
also being supplied by its reference clock.

While there exist the possibility and dt-binding to declare these
input clocks for each phy in the phy-dt-node, this is only relevant
_after_ the phy has been detected and during the drivers probe-run.

This results in a chicken-and-egg-problem. The refclks in the CRU are
running on boot of course, but phy-probing can very well happen after
clk_disable_unused has run.

In the past I tried to make clock-handling part of the mdio bus code [0]
but that wasn't very well received, due to it being specific to OF and
clocks with the consensus being that resources needed for detection
need to be enabled before.

So to make probing ethernet phys using the internal refclks possible,
make those 2 clocks critical.

[0] https://lore.kernel.org/netdev/13590315.F0gNSz5aLb@diego/T/

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 736ce4a543..f6d16ed0cf 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -794,10 +794,10 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	COMPOSITE(MCLK_GMAC0_OUT, "mclk_gmac0_out", gpll_cpll_p, 0,
 			RK3588_CLKSEL_CON(15), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3588_CLKGATE_CON(5), 3, GFLAGS),
-	COMPOSITE(REFCLKO25M_ETH0_OUT, "refclko25m_eth0_out", gpll_cpll_p, 0,
+	COMPOSITE(REFCLKO25M_ETH0_OUT, "refclko25m_eth0_out", gpll_cpll_p, CLK_IS_CRITICAL,
 			RK3588_CLKSEL_CON(15), 15, 1, MFLAGS, 8, 7, DFLAGS,
 			RK3588_CLKGATE_CON(5), 4, GFLAGS),
-	COMPOSITE(REFCLKO25M_ETH1_OUT, "refclko25m_eth1_out", gpll_cpll_p, 0,
+	COMPOSITE(REFCLKO25M_ETH1_OUT, "refclko25m_eth1_out", gpll_cpll_p, CLK_IS_CRITICAL,
 			RK3588_CLKSEL_CON(16), 7, 1, MFLAGS, 0, 7, DFLAGS,
 			RK3588_CLKGATE_CON(5), 5, GFLAGS),
 	COMPOSITE(CLK_CIFOUT_OUT, "clk_cifout_out", gpll_cpll_24m_spll_p, 0,
-- 
2.38.2




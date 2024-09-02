Delivery-date: Mon, 02 Sep 2024 09:59:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sl1yZ-000SEX-1T
	for lore@lore.pengutronix.de;
	Mon, 02 Sep 2024 09:59:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sl1yY-0007oQ-Dx
	for lore@pengutronix.de; Mon, 02 Sep 2024 09:59:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/xWvSaLYpXq540CT6G4XgzDm0c/4dvwRDme/gRUCp4o=; b=dUTf2wQ38bX1pSgqK2Bhr2xIXU
	1bL4tIHTyoO5VohFrcMyNCcoHnuSlj+LlD/YiQH5NTpbR+4gtgenczkXr38A2Iqf2LsBJUlB7BXvl
	gV0GkDH87vD3bBu9wzdZ7RijThd6o784nrmZ+HaCUqa2+tWEaadT72C/P9CJVDO8hJWZ2kUQCKm4o
	pEbOwleLNMVj0OaTBJ5z3Kuold3YUJBO+ohOf+qV71rE2/BDVJcueEEEQOdniMS7lXsAJulW3RTWt
	5kOX8FGp5mhTGrK/5o6jjLZ+dmX/K8Se38JrzQEuZFW52FM+K14FonnCyyYBt1oR1/deNyv1QQv9M
	uh8IuTHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1y8-0000000DPKB-28W3;
	Mon, 02 Sep 2024 07:59:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl1y5-0000000DPJM-2qLU
	for barebox@lists.infradead.org;
	Mon, 02 Sep 2024 07:59:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sl1y4-0007Ya-I6; Mon, 02 Sep 2024 09:59:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sl1y4-004qrK-0I; Mon, 02 Sep 2024 09:59:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sl1y3-00AjBa-31;
	Mon, 02 Sep 2024 09:59:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20240830053839.4201-1-eagle.alexander923@gmail.com>
References: <20240830053839.4201-1-eagle.alexander923@gmail.com>
Message-Id: <172526395992.2556712.8620004843169150174.b4-ty@pengutronix.de>
Date: Mon, 02 Sep 2024 09:59:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_005921_749344_6634DD94 
X-CRM114-Status: UNSURE (   7.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clk: rockchip: clk-rk3588: Fix 32k clock name for
 pmu_24m_32k_100m_src_p
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 30 Aug 2024 08:38:39 +0300, Alexander Shiyan wrote:
> The 32kHz input clock is named "xin32k" in the driver,
> so the name "32k" appears to be a typo in this case. Lets fix this.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: clk-rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p
      https://git.pengutronix.de/cgit/barebox/commit/?id=00e7ccbee794 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




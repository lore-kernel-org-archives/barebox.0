Delivery-date: Mon, 04 Mar 2024 10:19:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh4UB-0086AP-2U
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 10:19:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh4UB-0004f5-8D
	for lore@pengutronix.de; Mon, 04 Mar 2024 10:19:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Y3nSJqM+IUA8BkwMAciw2ldhXwsSNC9Iufz0w8RwfE=; b=lDqHPPdyy4N3Pu9skGfntyf2Su
	oW8pE4H9Xim3wbh5v8rQKfS4811XzGGKRse1xEAfke79DPgKEvqhVTymlI+DRul/dbRSRkvRVT1Tn
	ypptHQ3VLP2ieOQOzc06NeNxM/kyaEshqGghW7Fb74ZTGDlLNz7ksElb/T+XyFfDu//yNvzVLHZ17
	HBPVYpaq9Djwg7jmXKtMy20Lyg99mZX3BMOGLb8YQ8bOb7OyBrjNAW2/K30UO3bJyXBg31+LcZtQf
	06A4tVE2RAAb8TYlIcwr2pMxbSx9vt6HXyu7oRDf9md5yqfPkl52iZg7ITcb8E0nicCryUM7SG6ae
	ui14q/Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4TI-00000008KP5-22sX;
	Mon, 04 Mar 2024 09:18:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4TE-00000008KLv-3Nmz
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 09:18:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4TC-0004L8-3e; Mon, 04 Mar 2024 10:18:50 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4TB-004K1k-IK; Mon, 04 Mar 2024 10:18:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4TB-00BVaL-1d;
	Mon, 04 Mar 2024 10:18:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalrayinc.com>
Cc: Jonathan Borne <jborne@kalrayinc.com>, 
 Julian Vetter <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20240301102119.17914-1-ysionneau@kalrayinc.com>
References: <20240301102119.17914-1-ysionneau@kalrayinc.com>
Message-Id: <170954392950.2743006.5473895971591940379.b4-ty@pengutronix.de>
Date: Mon, 04 Mar 2024 10:18:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_011852_903902_62257078 
X-CRM114-Status: UNSURE (   7.17  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] mci: dwcmshc-sdhci: add support for Kalray Coolidge
 v2 SoC eMMC controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 Mar 2024 11:21:19 +0100, Yann Sionneau wrote:
> Kalray Coolidge v2 SoC eMMC controller needs static tx delay tuning even
> for basic standard or high speed modes.
> 
> Add vendor specific callback mechanism for init and implement it for
> Coolidge v2 SoC.
> 
> 
> [...]

Applied, thanks!

[1/1] mci: dwcmshc-sdhci: add support for Kalray Coolidge v2 SoC eMMC controller
      https://git.pengutronix.de/cgit/barebox/commit/?id=8648400a46de (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




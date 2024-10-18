Delivery-date: Fri, 18 Oct 2024 10:52:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ij4-005owC-1n
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 10:52:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ij3-0001pt-R5
	for lore@pengutronix.de; Fri, 18 Oct 2024 10:52:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GP3iCBz629bqZGSUYNgJE8td8anB9k8hTzS3RvRNLyw=; b=u32xxh65S2gUchMLVmTzPRye+6
	J2I9PF2Z/ZKtUHjYBGdZq7v+RTtFwU0B0uErISq8PM5ilpceRzMM2Mv6Qwe8cT5AHFrPj6XAF3Ggz
	Pd18M3I0+WcTDYxQ2rQwZyeP3IDDvfTUu7bU7g6U9lfjbFSvyMO3rFGTORv9rNhRZxy/JsdSXlyhL
	hevjmklnVOEbX9LY0q/KgmMu/UAzph3SlxurXCXBYy5cDQLfewBsa/1WbkaQkbAQP3ek7qYWKCkOS
	uKgRIpRGBgw0DdHsy0grSyvJQkoTMcxm1+QjVbvQutypptI21TjIkjG4NsPpnUGPnKD3BdrlE038j
	LyG6S6rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iiY-000000003Oh-0ZyU;
	Fri, 18 Oct 2024 08:52:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ib4-000000001Ub-49cd
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 08:44:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1ib3-00018L-Bl; Fri, 18 Oct 2024 10:44:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1ib3-000BKZ-0Z;
	Fri, 18 Oct 2024 10:44:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1ib3-00CHgY-0O;
	Fri, 18 Oct 2024 10:44:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: rcz@pengutronix.de, mfe@pengutronix.de
In-Reply-To: <20241016085218.3961116-1-a.fatoum@pengutronix.de>
References: <20241016085218.3961116-1-a.fatoum@pengutronix.de>
Message-Id: <172924107312.2927749.9977079043609300335.b4-ty@pengutronix.de>
Date: Fri, 18 Oct 2024 10:44:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_014435_053808_2C15C850 
X-CRM114-Status: UNSURE (   6.47  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] optee: fix use of IS_ENABLED() on option without
 CONFIG_ prefix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 16 Oct 2024 10:52:18 +0200, Ahmad Fatoum wrote:
> IS_ENABLED() is meant to be used on options with their CONFIG_ prefix,
> fix that and while at it use the recently added more descriptive
> CONFIG_ARM32, CONFIG_ARM64 config symbols.
> 
> 

Applied, thanks!

[1/1] optee: fix use of IS_ENABLED() on option without CONFIG_ prefix
      https://git.pengutronix.de/cgit/barebox/commit/?id=b450dc13b43e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




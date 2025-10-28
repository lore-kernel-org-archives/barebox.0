Delivery-date: Tue, 28 Oct 2025 08:46:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDePj-00Cc4E-2I
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 08:46:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDePj-0006am-3O
	for lore@pengutronix.de; Tue, 28 Oct 2025 08:46:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ekxFY99IQKrpVu1sjxAXrpW7e5FAmWMstRoI5uBk6RQ=; b=3bpMUKDFAD/ZYuy7G918urJ0mx
	3/cuNURZNOOYGPQTqIJPRItcbFQeUVsoTLu8SkbjeW0Jt7qjokIkx8r3ZRJNuxN15pbeClNKkkPC0
	zh9Rlx9ZPBt9sIAPjzK3R0FDEKeZV4kW9Q1OO79iYXd98fnMPVaHEHcWGFow1SjSr0IjOBdgUSDNC
	xRBunLuPR5Wx2OtexCyVyF4eU0SU10MaWSri8DVVIZ9x2WA/FCmouQyjctcrGxGMPJnbgpwHTUj4k
	t3wrnx7ziB4ZC2mO1jxq+bayDzWW/CnolN7WNpFnVuHvEapNbpZ9r8L/LnlMx4phLSM3nsnq0QUy/
	FBeZmIKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDePB-0000000FTT8-07Wy;
	Tue, 28 Oct 2025 07:46:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeP8-0000000FTSj-0OxC
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 07:46:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDeP6-0006Tz-7e; Tue, 28 Oct 2025 08:46:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDeP6-005q3i-0C;
	Tue, 28 Oct 2025 08:46:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDeP6-0000000BgaS-1rod;
	Tue, 28 Oct 2025 08:46:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251027063902.2409435-1-a.fatoum@barebox.org>
References: <20251027063902.2409435-1-a.fatoum@barebox.org>
Message-Id: <176163756399.2785187.14020083855674376968.b4-ty@pengutronix.de>
Date: Tue, 28 Oct 2025 08:46:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_004606_384489_B5C8A28A 
X-CRM114-Status: UNSURE (   6.83  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pinctrl: support selecting states from command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 07:39:00 +0100, Ahmad Fatoum wrote:
> This can be useful for debugging to exercise pinctrl for nodes that have
> no driver yet. Example:
> 
>   setenv adc-joystick.of.pinctrl_state=default
> 
> 

Applied, thanks!

[1/1] pinctrl: support selecting states from command line
      https://git.pengutronix.de/cgit/barebox/commit/?id=27ae60915e43 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




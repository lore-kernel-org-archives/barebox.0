Delivery-date: Mon, 10 Nov 2025 09:40:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vINRT-00HJjE-20
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 09:40:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vINRT-0007VZ-3Z
	for lore@pengutronix.de; Mon, 10 Nov 2025 09:40:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qJl3rSebGLMzTkYnOrYrp/W3dxS8c9CzkoqWMffhTSY=; b=yL9KmyUgijHuZWW6OkmF2trwqm
	JxkyjI+P7DKC/KV57COo/vBT0S2Iw1XtRWHb7tXd0b/QRcfsbg+X4SxNTLVLWGotiYdDc/L7/zdE8
	aAMC4HjFywieaUf617iheiJhqzavz+TA+mBiisFGkgFmZvzyy6Q4n740JLD+Pt87hQLn+R6UoB36e
	SVhYthSFvb7cz1em/oVdJMfJP4jqlDcWNXXU1J3BHemJu3mFWvJWs7tzj0BWKo8G+laoXk6zuXgy7
	aJ8hrl7QmkoUcWZu2tUcdCAJO+0bm0pSJy2WFQ6oZEJhB98lwWzEYG2Tt5KeVtZ65KNHQhlXLkBo0
	QCqWPtJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vINR7-000000050EW-0xzy;
	Mon, 10 Nov 2025 08:39:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vINR4-000000050E0-0uL0
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 08:39:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vINR2-0007QB-Pw; Mon, 10 Nov 2025 09:39:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vINR2-007zWi-20;
	Mon, 10 Nov 2025 09:39:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vINR3-00000004AOJ-01Sn;
	Mon, 10 Nov 2025 09:39:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20251107132158.629348-1-m.felsch@pengutronix.de>
References: <20251107132158.629348-1-m.felsch@pengutronix.de>
Message-Id: <176276397655.993218.15612714522824798092.b4-ty@pengutronix.de>
Date: Mon, 10 Nov 2025 09:39:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_003938_260418_34C50B31 
X-CRM114-Status: UNSURE (   7.43  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: skov: add new 10" jt101tm023 variant
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Nov 2025 14:21:43 +0100, Marco Felsch wrote:
> Add new 10" JuTouch JT101TM023 board variant incl. the possible HDMI
> sub-variant.
> 
> Unfortunately HDMI variants have no dedicated revision encoding, instead
> HDMI variants are encoded via a sub-variant in SW via barebox-state. Add
> a dedicated Rev.C compatible so the compatible can be used by systemd
> services, albeit Rev.B-HDMI and Rev.C-HDMI don't differ.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8MP: skov: add new 10" jt101tm023 variant support
      https://git.pengutronix.de/cgit/barebox/commit/?id=0ed0594d6183 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




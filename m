Delivery-date: Mon, 04 Mar 2024 10:19:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh4UC-0086Ao-2k
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 10:19:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rh4UC-0004fr-9h
	for lore@pengutronix.de; Mon, 04 Mar 2024 10:19:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XZ04liaEv3jHeiMsV7fw+nD0Er7Su+F5XjKR9f2D4DM=; b=PHMExgVb1+30iEhn/UryCjmGy2
	mRLGnKicHheFK44jbZeE0gsQZYW9CVQLK/10sAjE8imFy/Hv2SZ8WZF/8aDmqolEBY5oJfsO0Rldq
	uP3eEXKoNQ1/GvJydNnSUtLaHyGhJsQh29NK1Urtp2M4Uly87IIU0Yf0cqkHZ45BIcIaql09fuvOy
	KExHcDMCQxZrsJmVTVNOnmQkmHlnWSzYJshyzSV1gbc7X2sctOwfJinjfXPBRN1wbqno74zvVmOgG
	43Lk54zgt7XrNE9ydWdwYIoTow4Oa7yc+Yiac2sb5WWmHGFog2fErmt601g1FI4omtalYcs93dbHA
	Lyn6xpBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4TN-00000008KPY-3ppH;
	Mon, 04 Mar 2024 09:19:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh4TE-00000008KLu-3VKc
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 09:18:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4TC-0004L7-3e; Mon, 04 Mar 2024 10:18:50 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4TB-004K1j-Hx; Mon, 04 Mar 2024 10:18:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rh4TB-00BVaL-1Z;
	Mon, 04 Mar 2024 10:18:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalrayinc.com>
Cc: Jonathan Borne <jborne@kalrayinc.com>, 
 Julian Vetter <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20240229155700.17443-1-ysionneau@kalrayinc.com>
References: <20240229155700.17443-1-ysionneau@kalrayinc.com>
Message-Id: <170954392948.2743006.2265400569951031813.b4-ty@pengutronix.de>
Date: Mon, 04 Mar 2024 10:18:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_011852_936975_CDB492BD 
X-CRM114-Status: UNSURE (   7.15  )
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
Subject: Re: (subset) [PATCH 1/4] mci: dwcmshc-sdhci: Remove superfluous
 call to sdhci_enable_v4_mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 29 Feb 2024 16:56:57 +0100, Yann Sionneau wrote:
> sdhci_enable_v4_mode is already called from dwcmshc_mci_init which is
> always called before using the controller from mci-core.c
> 
> 

Applied, thanks!

[1/4] mci: dwcmshc-sdhci: Remove superfluous call to sdhci_enable_v4_mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=932b51f4306b (link may not be stable)
[2/4] mci: dwcmshc-sdhci: Fix f_max computation
      https://git.pengutronix.de/cgit/barebox/commit/?id=c1d93168325e (link may not be stable)
[3/4] mci: sdhci: add register define for P_VENDOR_SPECIFIC_AREA
      https://git.pengutronix.de/cgit/barebox/commit/?id=8cada69e81be (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Wed, 13 Mar 2024 08:42:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJFi-0044h8-1O
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 08:42:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJFh-0006fL-TM
	for lore@pengutronix.de; Wed, 13 Mar 2024 08:42:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XcUtDqkYxtoyhAaHt3jVxZjIrCFASLtvI/Rfza0aXLI=; b=eozo1nVENisOSBsfMe08Cj+b1A
	BcusHiiV6axNV3nH8rMZD0SbPo+OuuCGbgNwB4wBL2DG0nzgR+rp19/PcdkY2/h+BBoYYRQu9TF51
	QADpsasPRZl4JB+sEeQWRHq12B8VZfc36KsBHxICXebgoj7SKjLcV9O3cIapNgmb1jRJZvgdkekoP
	pcqjelnSTjLvWaaBWyD0KcoD92yn4Z8jzZKD+JA40iEdHv6hlJ4caNQbdhFxrJzXgbamvB0sWGm9u
	4lLie7SwZwLgF0NKqSm6uPoRJA6RzzQsQfAYjRIZJ14u6aBab6WgJDPpBvGuCzUzQqjw4CPLGqSxZ
	bT91oHBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJFN-00000009E2e-00HV;
	Wed, 13 Mar 2024 07:41:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJFK-00000009E2G-19S6
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 07:41:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJFJ-0006Ls-39; Wed, 13 Mar 2024 08:41:53 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJFI-0064TF-My; Wed, 13 Mar 2024 08:41:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJFI-0043KN-25;
	Wed, 13 Mar 2024 08:41:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
Cc: Johannes Zink <j.zink@pengutronix.de>, 
 Juergen Borleis <j.borleis@pengutronix.de>
In-Reply-To: <20240311140455.3094462-1-rhi@pengutronix.de>
References: <20240311140455.3094462-1-rhi@pengutronix.de>
Message-Id: <171031571264.966086.18332453568327175359.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 08:41:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_004154_337211_DB9A490D 
X-CRM114-Status: UNSURE (   6.07  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: =?utf-8?q?Re=3A_=5BPATCH_v2=5D_ARM=3A_i=2EMX8MP=3A_add_K=C3=B6ni?=
 =?utf-8?q?g+Bauer_AlphaJet_board?=
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 Mar 2024 15:04:56 +0100, Roland Hieber wrote:
> Add basic support for König+Bauer AlphaJet, based on a Congatec QMX8MP
> SoM with an i.MX8MP SoC in the Industrial Temperature Grade 4GB Variant,
> no inline ECC used.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX8MP: add König+Bauer AlphaJet board
      https://git.pengutronix.de/cgit/barebox/commit/?id=f5d3f7e6e731 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




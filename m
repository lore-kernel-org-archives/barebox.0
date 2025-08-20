Delivery-date: Wed, 20 Aug 2025 14:01:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohVD-002bkO-2f
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:01:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohVC-0004an-Jk
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:01:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FBbtRxsikYkL+X/LqMO89FGQWCq9kHO9sTnM8petNXw=; b=zKQpNivzOTAXfDbDHMxaeiVcXT
	XPLKyfGqGpHK7S/YzdgYAqf1UTmS0qhiBFFqi6jnOnuJCkwMG7VLAhAQzvBDEvtZ8vjMRde5yOiiT
	hhb2vw/A929idjNN3k1fPQhmxNHYZi4TgLLhUHSaRkSmTsRzhUruusp+lRrhOLL6ZH5Np2z+MamfM
	ATx6j0v5q0LRZqLxkJ/KhHiv76uds5iJm7ym3e0aItO/hkAkEVP5Yr1HZnhKyOKFj3lBhyeUgUV0n
	Rf3IeLLmXx2+7v6kfeVfqLiSHxcJt39pAcReP4+l4aE3C5lg/SLcGTrLM5hjetpWZ35SsGxNSUICd
	7EEGKDow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohUf-0000000DUuj-2PxV;
	Wed, 20 Aug 2025 12:00:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohOl-0000000DTwF-07OG
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 11:54:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohOj-0003NG-6y; Wed, 20 Aug 2025 13:54:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohOj-001EuC-03;
	Wed, 20 Aug 2025 13:54:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohOi-00EzSj-2z;
	Wed, 20 Aug 2025 13:54:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240613125818.30499-1-m.felsch@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
Message-Id: <175569087291.3572423.14160985808576852357.b4-ty@pengutronix.de>
Date: Wed, 20 Aug 2025 13:54:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_045435_075144_944FA4E1 
X-CRM114-Status: GOOD (  10.23  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/11] Add FIT image overlay support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Jun 2024 14:58:07 +0200, Marco Felsch wrote:
> this series add the support to load FIT image supplied devicetree overlays.
> The v1 of this series can be found here [1].
> 
> The overlay loading wasn't coupled to bootm due to the following
> reasons:
>  - By making use of the common overlay handling we can specifiy a
>    different/separate FIT image which provides only overlays.
>  - It should be possible to apply FIT image overlay to the barebox
>    live-tree (not implemented yet).
>  - Loading a single overlay takes ~20ms (depending on the overlay size)
>    if the same FIT image is used to supply the kernel, initrd,
>    devicetree and devicetree-overlays. This is an improvement compared to
>    the v1 of this series which required ~1sec.
> 
> [...]

Applied, thanks!

[01/11] FIT: fix missing free in fit_open error path
        https://git.pengutronix.de/cgit/barebox/commit/?id=d7bcb5628f16 (link may not be stable)
[02/11] of: overlay: add of.overlay.fitconfigpattern param
        (no commit info)
[03/11] FIT: skip possible overlay config nodes
        (no commit info)
[04/11] of: overlay: make the pattern match function more generic
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e86141707fc (link may not be stable)
[05/11] of: overlay: make search dir/path more generic
        (no commit info)
[06/11] FIT: expose useful helpers
        (no commit info)
[07/11] of: overlay: add FIT overlay support
        (no commit info)
[08/11] of: overlay: drop unnecessary empty check in of_overlay_global_fixup_dir
        (no commit info)
[09/11] of: overlay: replace filename with an more unique name
        https://git.pengutronix.de/cgit/barebox/commit/?id=21df8e760d82 (link may not be stable)
[10/11] FIT: save filename during fit_open
        (no commit info)
[11/11] FIT: add support to cache opened fit images
        https://git.pengutronix.de/cgit/barebox/commit/?id=f3aadb274abe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




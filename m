Delivery-date: Tue, 01 Oct 2024 08:36:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svWVC-004rdx-10
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 08:36:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svWVC-0001HJ-Nh
	for lore@pengutronix.de; Tue, 01 Oct 2024 08:36:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0vhgO/AgsPRbZYU6gxSu4RcWOY+o4uVZqjUMTaCjt2Y=; b=Q8j0xMdo+jkGz3Thgx2rDRCDPt
	T0zyOEef44OBmi+8m3AhNZ6ETxDkpBExitaU9POwbsasWzVacN8cDcc0E35Ev7+XUVJKYDlOfSW0r
	HKDr+m8ocgHeYw9B2BqIddw7JtlgBxjA8MBvIRVR00cTLjl71jnBcFAmGC2aur1xY+ZDiP07Zto+c
	lkyLsfkRTkj9D76DJnXuQbVCa7XaJFUOF6fC0gN/EfVvVUIKmL//RVZdiXZLPEda2Fz+hO28BqOTL
	2r4Dhd/gzqZm2/o1kgg4HTboexh+on7htEQ//8mqGke7IZeg6lb/R3yqe0UGgthrEQDiGWY5RmeDv
	JIUr96mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svWUZ-00000001luC-19pA;
	Tue, 01 Oct 2024 06:36:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svWQh-00000001lUn-1b6d
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 06:32:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svWQf-00083M-8a; Tue, 01 Oct 2024 08:32:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svWQe-002oU0-SA; Tue, 01 Oct 2024 08:32:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svWQe-00GIbk-2e;
	Tue, 01 Oct 2024 08:32:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
Message-Id: <172776433281.3884710.9410543993061176952.b4-ty@pengutronix.de>
Date: Tue, 01 Oct 2024 08:32:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_233215_455496_9A6DBAD8 
X-CRM114-Status: GOOD (  12.00  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/15] video: Add Rockchip VOP2 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 27 Sep 2024 12:37:33 +0200, Sascha Hauer wrote:
> This series adds support for the VOP2 controller found on the newer
> Rockchip SoCs like RK3566, RK3568 and RK3588. It has been tested on a
> RK3568 based ROCK3a board using HDMI and a RK3568 based custom board
> using HDMI and RGB output.
> 
> The driver has support for a base plane and one or more overlay planes
> which makes it possible to have a background image and a transparent
> framebuffer console on an overlay.
> 
> [...]

Applied, thanks!

[01/15] clk: rockchip: rk3568: Fix HDMI clocks
        https://git.pengutronix.de/cgit/barebox/commit/?id=173586c0ec44 (link may not be stable)
[02/15] video: add videomode helpers
        https://git.pengutronix.de/cgit/barebox/commit/?id=7fc6f7b5daa0 (link may not be stable)
[03/15] media-bus-format: update from kernel
        https://git.pengutronix.de/cgit/barebox/commit/?id=0490a6f17a06 (link may not be stable)
[04/15] regmap: add regfield support
        https://git.pengutronix.de/cgit/barebox/commit/?id=d019b54e2c74 (link may not be stable)
[05/15] video: add include/video/drm/drm_connector.h
        https://git.pengutronix.de/cgit/barebox/commit/?id=08efc4a69abd (link may not be stable)
[06/15] fb: add fb_rect functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=fcabf0272e8b (link may not be stable)
[07/15] video: Add Sitronix st7789v panel driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=376c4f5dda4c (link may not be stable)
[08/15] video: add dw-hdmi driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=b4b4b5306376 (link may not be stable)
[09/15] video: i.MX ipuv3: switch to upstream hdmi driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=af676698e8a2 (link may not be stable)
[10/15] fb: Accept overlay framebuffers without modes
        https://git.pengutronix.de/cgit/barebox/commit/?id=7f8a305a1609 (link may not be stable)
[11/15] fb: print more information on devinfo
        https://git.pengutronix.de/cgit/barebox/commit/?id=ee014f61e18c (link may not be stable)
[12/15] fbconsole: Adjust fbconsole names for overlays
        https://git.pengutronix.de/cgit/barebox/commit/?id=de18118250b2 (link may not be stable)
[13/15] ARM: ARM64: implement dma_alloc_writecombine()
        https://git.pengutronix.de/cgit/barebox/commit/?id=00b6b7f39bd3 (link may not be stable)
[14/15] vpl: make vpl deep probe aware
        https://git.pengutronix.de/cgit/barebox/commit/?id=3e67c174e74f (link may not be stable)
[15/15] video: Rockchip: Add VOP2 driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=39b77b139ec7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




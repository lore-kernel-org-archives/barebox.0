Delivery-date: Mon, 23 Jun 2025 15:27:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThDE-00AH9S-07
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 15:27:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uThDD-0003X6-Dv
	for lore@pengutronix.de; Mon, 23 Jun 2025 15:27:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qkrxDnujREKZq9zGBz/3ZV3qQAAKzXG50B51Yf917Yc=; b=Ov/kA4ZxwDGeknYdhI6Rs2JTNK
	a6RVVfbJ3XKGHjaeLJullrK0USATglzV/trijh0ieoBWVa/0L2mNoFHCwP3JTWIYCfZSQOXA9iyTs
	AlvdKXp08bfSprDp6QlHI/bz6ICzXgw6LmH1tsCNO0q6lPn2wXxpXL9HqgbG3cuc1qGEXfg3kWFei
	TYAV9hA85+eAlDXBrVZBSJxeC6fGOYQAr6eA5YNgIaEAU8NK1qo0+2TweCUDp9Bki6zQ2wp/UKkSE
	RzIj5jBZXLsMR2HimDRQCxAE4MOZERV4fJr2oHp+y6928or0k1/dt/9P2lFbqO81sAEs53dhRG2q5
	IEHwjb/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThCn-00000002sE2-0j60;
	Mon, 23 Jun 2025 13:27:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfoZ-00000002aFK-3knu
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 11:58:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfoY-0008Ho-G6; Mon, 23 Jun 2025 13:58:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfoY-004wPd-11;
	Mon, 23 Jun 2025 13:58:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTfoY-00CjK6-0n;
	Mon, 23 Jun 2025 13:58:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250606055748.1990383-1-a.fatoum@barebox.org>
References: <20250606055748.1990383-1-a.fatoum@barebox.org>
Message-Id: <175067989824.3033819.13840012820878206443.b4-ty@pengutronix.de>
Date: Mon, 23 Jun 2025 13:58:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_045819_938099_D8348A8A 
X-CRM114-Status: UNSURE (   9.10  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/16] ARM: stm32mp: add MIPI DSI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 06 Jun 2025 07:57:32 +0200, Ahmad Fatoum wrote:
> This enables barebox to make use of the MIPI DSI display on the DK2.
> The RK35xx also has a Designware MIPI-DSI host and there's already VOP2
> support, so that will likely follow in future.
> 
> v1 -> v2:
>   - fix breakage for ACPI/EFI, because struct bus_type::dev
>     change
>   - add various header includes to fix allyesconfig sandbox
>     build. Now everything is green
> 
> [...]

Applied, thanks!

[01/16] driver: bus: embed bus driver node into bus
        https://git.pengutronix.de/cgit/barebox/commit/?id=157754820a9d (link may not be stable)
[02/16] driver: switch busses to device class
        https://git.pengutronix.de/cgit/barebox/commit/?id=1ed465e89247 (link may not be stable)
[03/16] driver: factor out bus definitions into separate header
        https://git.pengutronix.de/cgit/barebox/commit/?id=bc618db7c6ff (link may not be stable)
[04/16] driver: bus: add helpers for finding devices in busses
        https://git.pengutronix.de/cgit/barebox/commit/?id=74dfb8c554aa (link may not be stable)
[05/16] drive: bus: make use of new bus_find_device helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=4a5a9b58b568 (link may not be stable)
[06/16] of: implement of_alias_from_compatible
        https://git.pengutronix.de/cgit/barebox/commit/?id=3d2d5d762e21 (link may not be stable)
[07/16] video: vpl: fix potential read of uninitialized variable
        https://git.pengutronix.de/cgit/barebox/commit/?id=46c400664109 (link may not be stable)
[08/16] video: vpl: factor out vpl_for_each
        https://git.pengutronix.de/cgit/barebox/commit/?id=b7f62e5703cd (link may not be stable)
[09/16] video: vpl: handle missing struct vpl::ioctl gracefully
        https://git.pengutronix.de/cgit/barebox/commit/?id=0e8b1e6d6fec (link may not be stable)
[10/16] video: vpl: add vpl_bridge abstraction
        https://git.pengutronix.de/cgit/barebox/commit/?id=be3b7f293d88 (link may not be stable)
[11/16] video: factor out drm_mode_vrefresh
        https://git.pengutronix.de/cgit/barebox/commit/?id=2063c8262547 (link may not be stable)
[12/16] video: add base MIPI DSI support
        https://git.pengutronix.de/cgit/barebox/commit/?id=e24df7f66a58 (link may not be stable)
[13/16] video: add Designware MIPI-DSI support
        https://git.pengutronix.de/cgit/barebox/commit/?id=11331c15e5bd (link may not be stable)
[14/16] video: add STM32 MIPI DSI video driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=02b940436ca7 (link may not be stable)
[15/16] video: add support for Orise Technology otm8009a panel
        https://git.pengutronix.de/cgit/barebox/commit/?id=ba765ed64b42 (link may not be stable)
[16/16] ARM: stm32mp: dk2: enable MIPI-DSI display by default
        https://git.pengutronix.de/cgit/barebox/commit/?id=fd14266ab7d4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




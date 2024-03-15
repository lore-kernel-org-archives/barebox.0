Delivery-date: Fri, 15 Mar 2024 08:08:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl1gN-007OtJ-10
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 08:08:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl1gM-0006zv-NL
	for lore@pengutronix.de; Fri, 15 Mar 2024 08:08:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NPyCRXr3JMHlJZiV/cXvvMajMaTf07Qz1STyizwZ7MU=; b=OpXimkPSXwmhXxt811gybPCvIN
	Xt1PHr7Ul8H21/PsCdYe+kqjSYCmHLrzc6+z0ZLs/MG4f120Fay9FdqjPG8WGGCBL6L9jyQ668AC0
	DM0wsrBUZlNGM67A71kSty9Sh7qrcUoBQ3NP4NUdbtMNQefnkzypuocJgSd5IgHXD5sRQHGBOrQYo
	4ZLIVlPiZUmMLnSH1KYAkwtZOx+TmytUZ3k7lExHsFjLpE5bCUw+NoxAV3muuXpDc0+B2j/P6sBWx
	yUZIcoIx+1YbiK0vjuHDVc/Ht1f/d7ZPTf3as4YyPghesqsT+frX0DgRx8z6MXXoIwoWliuJcoAUJ
	+IYR/1Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl1ff-0000000GtxY-18YE;
	Fri, 15 Mar 2024 07:08:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl1fb-0000000Gtwv-3y4a
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 07:08:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1fX-0006aQ-U1; Fri, 15 Mar 2024 08:07:55 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1fV-006Sd4-LP; Fri, 15 Mar 2024 08:07:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1fV-008865-1w;
	Fri, 15 Mar 2024 08:07:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
Message-Id: <171048647359.1937712.16877569689655905446.b4-ty@pengutronix.de>
Date: Fri, 15 Mar 2024 08:07:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_000800_049743_5908A4B1 
X-CRM114-Status: UNSURE (   7.69  )
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
Subject: Re: [PATCH 00/12] hw_random: add 6 more RNG drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 11:56:19 +0100, Ahmad Fatoum wrote:
> While stack protector support can be used without HWRNG, it will
> print a warning about the fixed canary to alert to the fact that it
> requires a random canary to be able to withstand an attacker.
> 
> Linux HWRNG drivers are surprisingly easy to port to barebox though,
> so let's import 6 for commonly used platforms.
> 
> [...]

Applied, thanks!

[01/12] hw_random: support ctrlc()
        https://git.pengutronix.de/cgit/barebox/commit/?id=ee25397f700f (link may not be stable)
[02/12] ARM: io: read 32 bits at once for aligned I/O memcpy/memset
        https://git.pengutronix.de/cgit/barebox/commit/?id=8e006fa8a9cd (link may not be stable)
[03/12] driver: implement dev_platform_get_and_ioremap_resource
        https://git.pengutronix.de/cgit/barebox/commit/?id=c38ff416cbe1 (link may not be stable)
[04/12] hw_random: add struct hwrng::priv member
        https://git.pengutronix.de/cgit/barebox/commit/?id=d151afa2a6d5 (link may not be stable)
[05/12] hw_random: remove confusing left-overs from kernel help texts
        https://git.pengutronix.de/cgit/barebox/commit/?id=bceb7ba902ad (link may not be stable)
[06/12] hw_random: remove reference to undefined CONFIG_HW_RANDOM
        https://git.pengutronix.de/cgit/barebox/commit/?id=51bcfb1b5788 (link may not be stable)
[07/12] hw_random: add Atmel RNG driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=3aafb07324f6 (link may not be stable)
[08/12] hw_random: add BCM2835 RNG driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=3140bcb3f779 (link may not be stable)
[09/12] hw_random: add IPROC RNG200 driver for BCM2711
        https://git.pengutronix.de/cgit/barebox/commit/?id=233ae72300e5 (link may not be stable)
[10/12] hw_random: add Rockchip RNG support
        https://git.pengutronix.de/cgit/barebox/commit/?id=f9cd14f8ae30 (link may not be stable)
[11/12] hw_random: add timeriomem_rng driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=45080577a633 (link may not be stable)
[12/12] hw_random: add OMAP RNG driver
        https://git.pengutronix.de/cgit/barebox/commit/?id=276048a59a22 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Fri, 23 Feb 2024 09:51:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdRH0-002kBD-2H
	for lore@lore.pengutronix.de;
	Fri, 23 Feb 2024 09:51:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rdRGz-0000tb-UQ
	for lore@pengutronix.de; Fri, 23 Feb 2024 09:51:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dPjOVuETdWAw83ZxF6qeLBUjxTN3Z453CRpuDOpDvDY=; b=pIdbiT8SQuDFt7e+ulroMK3mkc
	IGipajfdscMq/A1vQAvI1KK01Y1wf5d1uDnkt8S5BH1CgkGYzSPiE1kf8rpKVLZGFlBv07pY/onzo
	i5L5rwaa868XcBxchxRZf7hacxapbAdFxzChvmxDw2ZfHFnueIHUXJkIure3+bR/1gMquNvE3Wf0F
	C7ExR5XbMAIzyYIVZP9zrIPWSGN7LUK3uEQHiUAf2xaPt+2cU37q0b/GuAp9A0s5QS9tlvLNMEvdk
	rI1fbHHCDOz7ETamRNEoNYp2lAg55cPd6WgKzMLkT+eilJxpUvCDH4xgyLqCvbSqH18GuFUqIqMqw
	05zpHAjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdRFo-00000008Z9Y-2fEP;
	Fri, 23 Feb 2024 08:50:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdQ3G-00000008J97-1okE
	for barebox@lists.infradead.org;
	Fri, 23 Feb 2024 07:35:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ3E-0000um-1x; Fri, 23 Feb 2024 08:32:56 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ3D-002Nfe-Ec; Fri, 23 Feb 2024 08:32:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rdQ3D-001FPv-1F;
	Fri, 23 Feb 2024 08:32:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
Message-Id: <170867357538.297406.10053197424359743990.b4-ty@pengutronix.de>
Date: Fri, 23 Feb 2024 08:32:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_233258_526668_CD021BAA 
X-CRM114-Status: UNSURE (   8.62  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 00/14] ARM: at91: skov-arm9cpu (SAM9263) first stage
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Feb 2024 10:30:46 +0100, Ahmad Fatoum wrote:
> SDRAM setup and SD-Card chainloading support were previously added[1]
> by Sam as well as a WIP patch to enable them for Skov ARM9CPU.
> 
> I reworked his final WIP patch and fixed some smaller and bigger issues
> that I ran into. Now barebox can replace at91bootstrap on this platform
> when booted from SD.
> 
> [...]

Applied, thanks!

[01/14] mci: atmel_mci: disable power save mode
        https://git.pengutronix.de/cgit/barebox/commit/?id=b9c420653af2 (link may not be stable)
[02/14] mci: atmel_mci: fix zeroing of block length on AT91SAM9263
        https://git.pengutronix.de/cgit/barebox/commit/?id=f6c56c2011c3 (link may not be stable)
[03/14] ARM: replace ENTRY_FUNCTION_HEAD with ENTRY_FUNCTION_WITHSTACK_HEAD
        https://git.pengutronix.de/cgit/barebox/commit/?id=8b95ed2a0f6b (link may not be stable)
[04/14] ARM: at91: use AT91 header instead of generic barebox ARM's
        https://git.pengutronix.de/cgit/barebox/commit/?id=7800d1136236 (link may not be stable)
[05/14] ARM: at91: implement SAM9_ENTRY_FUNCTION
        https://git.pengutronix.de/cgit/barebox/commit/?id=2807d3f3e341 (link may not be stable)
[06/14] ARM: at91: sam9263_ll: drop PLL charge pump initialization
        https://git.pengutronix.de/cgit/barebox/commit/?id=d0e17e91e6a5 (link may not be stable)
[07/14] ARM: at91: sam9263_ll: pass AT91_PMC_LL_AT91SAM9263 to PMC functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=ead3bd2c6db6 (link may not be stable)
[08/14] ARM: at91: sam9263_ll: refactor MCK switch to PLLA for clarity
        https://git.pengutronix.de/cgit/barebox/commit/?id=824801f1309e (link may not be stable)
[09/14] ARM: at91: sam9263_ll: support configuration of PLLB
        https://git.pengutronix.de/cgit/barebox/commit/?id=8761a451da82 (link may not be stable)
[10/14] ARM: dts: AT91: skov-arm9cpu: remove barebox environment on NOR
        https://git.pengutronix.de/cgit/barebox/commit/?id=6ef2a22a0b26 (link may not be stable)
[11/14] ARM: at91: skov-arm9cpu: Add SD-Card xload support
        https://git.pengutronix.de/cgit/barebox/commit/?id=e369be6b3276 (link may not be stable)
[12/14] ARM: at91: skov-arm9cpu: configure SMC for NOR flash use
        https://git.pengutronix.de/cgit/barebox/commit/?id=433b8dce29c7 (link may not be stable)
[13/14] ARM: at91: skov-arm9cpu: configure more appropriate hostname
        https://git.pengutronix.de/cgit/barebox/commit/?id=66e62c636f37 (link may not be stable)
[14/14] ARM: AT91: skov-arm9cpu: support environment on SD-Card
        https://git.pengutronix.de/cgit/barebox/commit/?id=7645601a1fb6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




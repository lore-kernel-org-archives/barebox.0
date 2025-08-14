Delivery-date: Thu, 14 Aug 2025 17:37:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma1C-000YHn-0N
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:37:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma1A-0004OP-OK
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:37:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EXp0OaJCc8+SdB+uhv6OkqyDRW40Q4HkjRKOOc6ww0o=; b=B9kHWgkxnx+CcSlVHmUI/bEo5I
	mOExAaDrS0/18Xc5Uvh6n0JNDLrFAej/Bxbh29HukAD+MG2GDstNuL5525Q3kPKsOIn+OhiTXaZFd
	3jWAiNoQgBEhD06FPoqPw+JpFPYaTH8x/7YFr4NDath0ePAuP0wHmvoLpIdY7VYU0EQ7Qm6/5NJLN
	d0mGYDQzX328j7Qw3c3nH5rUCH1KpadsBlcevRoIW5i6j9/OjKSJHjxBsOWrDZvgT5SRD5gqB+jth
	fgP298gspi4utlgDVZAPWqOJAg+ly1hyfmo/DLutUvcsJSHtDYV3x78t0TaGFMdDQmtBXAm+qaK9g
	LefuuypQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uma0m-0000000HTNX-2P7r;
	Thu, 14 Aug 2025 15:37:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVaY-0000000GfgG-25ie
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:53:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVaW-0001FJ-W2; Thu, 14 Aug 2025 12:53:41 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVaW-000Ext-2b;
	Thu, 14 Aug 2025 12:53:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVaW-004oBY-2P;
	Thu, 14 Aug 2025 12:53:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
Message-Id: <175516882074.1146067.18312255627914934057.b4-ty@pengutronix.de>
Date: Thu, 14 Aug 2025 12:53:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_035342_541520_470CCC99 
X-CRM114-Status: UNSURE (   6.84  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/13] commands: add bfetch/buds of command
 redirection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Aug 2025 16:33:32 +0200, Ahmad Fatoum wrote:
> See patches for individual changelog.
> 
> Ahmad Fatoum (13):
>   common: introduce structured I/O
>   ARM: cpuinfo: support structio output
>   commands: uptime: enable structured I/O
>   string: implement strv_length helper
>   ARM: psci: client: add PSCI version/method parameters
>   net: move netmask_to_prefix into header
>   optee: add revision info to tee devinfo output
>   tee: enable structured I/O in devinfo handler
>   security: blobgen: add easy way to check for existent providers
>   clk: implement clk_have_nonfixed_providers
>   commands: introduce bfetch command
>   configs: enable bfetch in some popular defconfigs
>   hush: structio: silence missing command error message
> 
> [...]

Applied, thanks!

[01/13] common: introduce structured I/O
        https://git.pengutronix.de/cgit/barebox/commit/?id=daf4eaa1527b (link may not be stable)
[02/13] ARM: cpuinfo: support structio output
        https://git.pengutronix.de/cgit/barebox/commit/?id=de6ccc772321 (link may not be stable)
[03/13] commands: uptime: enable structured I/O
        https://git.pengutronix.de/cgit/barebox/commit/?id=1e75939cd13d (link may not be stable)
[04/13] string: implement strv_length helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=93ea82677520 (link may not be stable)
[05/13] ARM: psci: client: add PSCI version/method parameters
        https://git.pengutronix.de/cgit/barebox/commit/?id=0923dc8ed0e7 (link may not be stable)
[06/13] net: move netmask_to_prefix into header
        https://git.pengutronix.de/cgit/barebox/commit/?id=4c135b49c5a4 (link may not be stable)
[07/13] optee: add revision info to tee devinfo output
        https://git.pengutronix.de/cgit/barebox/commit/?id=906eab8a61f1 (link may not be stable)
[08/13] tee: enable structured I/O in devinfo handler
        https://git.pengutronix.de/cgit/barebox/commit/?id=8eb7d6ca2c1a (link may not be stable)
[09/13] security: blobgen: add easy way to check for existent providers
        https://git.pengutronix.de/cgit/barebox/commit/?id=3eb0421f8d68 (link may not be stable)
[10/13] clk: implement clk_have_nonfixed_providers
        https://git.pengutronix.de/cgit/barebox/commit/?id=3f7728828231 (link may not be stable)
[11/13] commands: introduce bfetch command
        https://git.pengutronix.de/cgit/barebox/commit/?id=99285b2c3dfb (link may not be stable)
[12/13] configs: enable bfetch in some popular defconfigs
        https://git.pengutronix.de/cgit/barebox/commit/?id=ef09418cb4fa (link may not be stable)
[13/13] hush: structio: silence missing command error message
        https://git.pengutronix.de/cgit/barebox/commit/?id=2004145b5515 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




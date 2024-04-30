Delivery-date: Tue, 30 Apr 2024 07:45:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1gIa-009ZvG-1Z
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 07:45:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1gIZ-0007LF-S5
	for lore@pengutronix.de; Tue, 30 Apr 2024 07:45:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=obyM6edsACUTMN4HE8Kp5PkkYbwjP1m4yV0Xq5XXevI=; b=PtzsorKZ8lIstkHWEXzcEUmKPZ
	ZtXCdf5dvxtzORiQxbjz4O65CzmV7VbBdFF/dHKc5pUnlD5pqczpgPhFaImINomAJ16SulKKalDdm
	yrz4Fe1YKXOapYi2tpoeef/IRpxP0lrHABrtIE+Y8xYJuxRNIlV7QMKwqEHJkc6yySCiNrCn8Sb4s
	lwuEakU2I6Fj6Q70+dwBk7pGhMJt/+uNlN/ABGju5DNPrYsCmbAXBDt3+6J6aConCoH4gLcP5MjXs
	OGB3+XIwATyKeaOclr/C96EYEChmpZFgdStvaESKTl26tR883C6uvx0cx48kxay1U4TgPo6nfN/yb
	QDkj4sIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gIC-00000005B0Y-0NzK;
	Tue, 30 Apr 2024 05:44:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gI9-00000005Azu-1RYT
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 05:44:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gI0-0007C6-Ol; Tue, 30 Apr 2024 07:44:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gHz-00F6oo-M0; Tue, 30 Apr 2024 07:44:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gHz-00Dfji-1y;
	Tue, 30 Apr 2024 07:44:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, 
 Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, 
 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
Message-Id: <171445586760.3258187.16881943408368697225.b4-ty@pengutronix.de>
Date: Tue, 30 Apr 2024 07:44:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_224437_433199_BA999CF0 
X-CRM114-Status: UNSURE (   8.97  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/15] ARM: remove non PBL ARM boards and sub
 architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 25 Apr 2024 13:54:24 +0200, Sascha Hauer wrote:
> The ARM architecture support in barebox has become quite complicated
> over time.  Most SoCs use PBL and relocatable binaries, but some older
> ones still don't.  This makes the lowlevel ARM code hard to maintain and
> often hard to understand.
> 
> I've decided that it is time to make a cut and to abandon the old non
> PBL boards and sometimes the sub architecture with it. This series
> removes:
> 
> [...]

Applied, thanks!

[01/15] ARM: move HAVE_PBL_MULTI_IMAGES up to ARCH_MULTIARCH
        https://git.pengutronix.de/cgit/barebox/commit/?id=13c3c07e96e1 (link may not be stable)
[02/15] ARM: move OFTREE and OFDEVICE up one level
        https://git.pengutronix.de/cgit/barebox/commit/?id=45b30c8d801e (link may not be stable)
[03/15] ARM: remove uemd architecure
        https://git.pengutronix.de/cgit/barebox/commit/?id=a5681b18d47c (link may not be stable)
[04/15] ARM: remove ep93xx
        https://git.pengutronix.de/cgit/barebox/commit/?id=5418fd777d76 (link may not be stable)
[05/15] ARM: remove canon-a1100 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=b6e3e1d8dc3f (link may not be stable)
[06/15] ARM: remove davinci
        https://git.pengutronix.de/cgit/barebox/commit/?id=68da68c3b0f2 (link may not be stable)
[07/15] ARM: remove PXA boards
        https://git.pengutronix.de/cgit/barebox/commit/?id=d7d7a18304a3 (link may not be stable)
[08/15] ARM: remove nomadik
        https://git.pengutronix.de/cgit/barebox/commit/?id=32d76e3b9294 (link may not be stable)
[09/15] ARM: remove non PBL OMAP boards
        https://git.pengutronix.de/cgit/barebox/commit/?id=717deee50b3b (link may not be stable)
[10/15] ARM: remove non PBL Atmel boards
        https://git.pengutronix.de/cgit/barebox/commit/?id=e0ae81c736d9 (link may not be stable)
[11/15] ARM: move HAVE_PBL_MULTI_IMAGES to toplevel
        https://git.pengutronix.de/cgit/barebox/commit/?id=0e3cb435f7e5 (link may not be stable)
[12/15] ARM: drop non PBL support
        https://git.pengutronix.de/cgit/barebox/commit/?id=0a63711018eb (link may not be stable)
[13/15] ARM: drop barebox_arm_head()
        https://git.pengutronix.de/cgit/barebox/commit/?id=64627a98b6dd (link may not be stable)
[14/15] ARM: make relocatable mandatory
        https://git.pengutronix.de/cgit/barebox/commit/?id=9bca0e9adc70 (link may not be stable)
[15/15] ARM: drop TEXT_BASE
        https://git.pengutronix.de/cgit/barebox/commit/?id=8d0d0f9b67be (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




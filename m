Delivery-date: Tue, 30 Sep 2025 12:41:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3XnV-002kTc-25
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 12:41:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3XnV-0004Pp-3M
	for lore@pengutronix.de; Tue, 30 Sep 2025 12:41:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mBj8smYcUSoZYwYlVyWvL6vLje2EKsq56/kvj4TqD78=; b=ct+BTe9fmtr1YvzJeGoBPj83E+
	q7zbU02lpjSVDLFcVZLBCL0lVqihsfC7jL3N7+Vwyp902u0BGpM3+4S2TuNAnF5rK3Qqx5JwJplB2
	unO1cvWTT4UuOjnAzzgpWQx57qmWfE2dGmsp/dYh1Xh8WOCkk25KSCEzFxNfuk1vGOVEl4IG0aORc
	VH2l2vjeP0o/fLMO2QaH3tZb2lgd04hueHinRMZzAFJO60TmY1BtaJp3J36AGQOFGN8xjI3rs6jaA
	8r8vm1bhFqjnO7vgJGifYZ1iMG7XiSPr1upP+7L6ippawzJdfvLg2iMiwXnMXOmrbxLyCvDqeQ74I
	vGP1fhhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Xn0-000000052qe-2YsR;
	Tue, 30 Sep 2025 10:40:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Xmx-000000052p8-3NUY
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 10:40:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Xmw-0004FA-Bs; Tue, 30 Sep 2025 12:40:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Xmw-001ERw-0M;
	Tue, 30 Sep 2025 12:40:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3Xmw-0000000FFCw-0DPz;
	Tue, 30 Sep 2025 12:40:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 David Picard <david.picard@clermont.in2p3.fr>
Cc: Ahmad Fatoum <ahmad@a3f.at>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
Message-Id: <175922885404.3633259.17777224412857358925.b4-ty@pengutronix.de>
Date: Tue, 30 Sep 2025 12:40:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_034055_845195_013C8D49 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] ARM: boards: add support for Enclustra
 Mercury SA2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 25 Sep 2025 13:59:07 +0200, David Picard wrote:
> Add support for the Enclustra Mercury+ SA2, a Cyclone V based
> SoC FPGA.
> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-sa2/
> 
> The SoM provides a 64MiB NOR QSPI flash, DDR3, Ethernet PHY, RTC.
> 
> The Cyclone V features a hardware ARM core (aka HPS) that can boot
> from SD card (MMC), QSPI flash. This patch series focusses on MMC.
> 
> [...]

Applied, thanks!

[01/10] Add handoff files
        (no commit info)
[02/10] Add Enclustra Mercury+ SA2 module
        (no commit info)
[03/10] ARM: dts: socfpga: use upstream SA2 device tree
        (no commit info)
[04/10] ARM: dts: socfpga: adapt upstream SA2 device tree
        (no commit info)
[05/10] boards: enclustra-sa2: read MAC address from EEPROM
        (no commit info)
[06/10] boards: enclustra-sa2: configure SI5338
        (no commit info)
[07/10] boards: enclustra-sa2: enable SI5338
        (no commit info)
[08/10] lib: add crc16 support
        https://git.pengutronix.de/cgit/barebox/commit/?id=83865ed69b4d (link may not be stable)
[09/10] nvmem: add support for Atmel sha204(a)
        https://git.pengutronix.de/cgit/barebox/commit/?id=0837819622a2 (link may not be stable)
[10/10] boards: enclustra-sa2: read S/N from EEPROM
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




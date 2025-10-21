Delivery-date: Tue, 21 Oct 2025 20:02:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBGgg-00AKcv-0m
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 20:02:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBGgf-0000iA-Le
	for lore@pengutronix.de; Tue, 21 Oct 2025 20:02:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Subject:References:Cc:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gzjNfJrhaQuHYcrv04EvY1GbvzF9oRDyalgR6Fbr+hM=; b=xIZjK7677tQIWYAEAKfRkFbznL
	G7GeIQlidp7S6GTYdhZiKDUo8/2dXePv6iydwvKn4R0fEhmy0WRl3amtQAldsoYWi7iKZNwH+814z
	ZIIoyJNZWpr6kF5NZZd9zocXrxdgBb7LAsr+v6u8dHp1pxaA54j3ElPeYN16Mp/+qLIK+IDp2alKZ
	K3O14CgBCpW2GOMKfCLmtAmMOrwgA+6kIVNpD8QeuDuTZWxCMQkipWFZqWHGlXjdD+8Z/m+ha5HBK
	sh94+9wAycSzWr+sw/APM5gEfp76jMXA3cqMqgF1XP/xfcn+5drTNmFZoFfTET5Wupgbm5GQlkCJn
	5+ABLxkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBGfn-00000000JDB-2Sgm;
	Tue, 21 Oct 2025 18:01:27 +0000
Received: from mail2.ecloud.global ([135.181.6.248])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBGfk-00000000JCJ-2qlU
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 18:01:26 +0000
Received: from authenticated-user (mail2.ecloud.global [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail2.ecloud.global (Postfix) with ESMTPSA id F20DB7209CB;
	Tue, 21 Oct 2025 18:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io; s=mail2;
	t=1761069671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gzjNfJrhaQuHYcrv04EvY1GbvzF9oRDyalgR6Fbr+hM=;
	b=IPRv60khbwLJGDWPH4TWz6A6OmP/fkcMOu0cQynwtrLa02QYtDr4fbknhOf99P9bb1JAOs
	A3xGDGWtUYaFFw/GKMw9d7Uj6aprYuX5FmhXqyEahBO5fkUurOF9oiU1fO8pwS6p+on+wD
	wnJm+3uDV/wtJOIp/SWn+9rO2mwuKlU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io;
	s=mail2; t=1761069671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gzjNfJrhaQuHYcrv04EvY1GbvzF9oRDyalgR6Fbr+hM=;
	b=uZMMOLTWW5adesYVmc3bTW4TVr0Nq+r45QQiPsy17F2FFADEGJwpIdKzIUvEb40CmKN+bn
	tjw0yJLy1xGx8vPNcwjM8VcikdhiqERKEygVHQElKUJi8wBgdU9TDsPPb/l7V/Oc1qH6Q/
	oLrBE4R9r2Y3Ev245w38O0M0hWgL340=
ARC-Seal: i=1; s=mail2; d=murena.io; t=1761069671; a=rsa-sha256; cv=none;
	b=LPdCgTKCFKmL22dh373cUXIyc4FsT33F+J5HCxwUpMcv6Hu4GbRTLCWqnLbKOk4UdTgCu7
	5eKURDiIXIv1QWSy/nSqKyDcxZMYome9YSkIcPi50oFG4ldPnGroiPOMbeBwi0qCxHLKeB
	Jv2lch7bBTGUpr82khbBX0aJsz2fR54=
ARC-Authentication-Results: i=1;
	mail2.ecloud.global;
	auth=pass smtp.mailfrom=maud_spierings@murena.io
Message-ID: <ef5f3716-ce61-448a-8a33-2e09aaed4749@murena.io>
Date: Tue, 21 Oct 2025 20:01:10 +0200
MIME-Version: 1.0
To: f.pflug@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251021110149.1151936-1-f.pflug@pengutronix.de>
Content-Language: en-US
From: Maud Spierings <maud_spierings@murena.io>
In-Reply-To: <20251021110149.1151936-1-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_110125_243924_9583D27F 
X-CRM114-Status: GOOD (  11.02  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> Add support for the i.MX93 FRDM board from NXP
>
> v2:
> - remove init from board.c
> - use iomem in lowlevel.c
>
> Fabian Pflug (2):
>    common: deep-probe: include of for of_device_id
>    ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
>
>   arch/arm/boards/Makefile                      |    1 +
>   arch/arm/boards/nxp-imx93-frdm/Makefile       |    2 +
>   arch/arm/boards/nxp-imx93-frdm/board.c        |   12 +
>   arch/arm/boards/nxp-imx93-frdm/lowlevel.c     |   46 +
>   .../nxp-imx93-frdm/lpddr4x_2gb_timing.c       | 1907 +++++++++++++++++
>   arch/arm/dts/Makefile                         |    1 +
>   arch/arm/dts/imx93-frdm.dts                   |  534 +++++
>   arch/arm/mach-imx/Kconfig                     |    9 +
>   images/Makefile.imx                           |    4 +
>   include/deep-probe.h                          |    1 +
>   10 files changed, 2517 insertions(+)
>   create mode 100644 arch/arm/boards/nxp-imx93-frdm/Makefile
>   create mode 100644 arch/arm/boards/nxp-imx93-frdm/board.c
>   create mode 100644 arch/arm/boards/nxp-imx93-frdm/lowlevel.c
>   create mode 100644 arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c
>   create mode 100644 arch/arm/dts/imx93-frdm.dts
>
> -- 
> 2.47.3
Works great, Awesome work!

 >NOTICE:  TRDC init done
NOTICE:  BL31: v2.12.0(release):v2.12.0
NOTICE:  BL31: Built : 19:41:38, Oct 21 2025
 >

barebox 2025.09.0-00167-g3b319bc15915-dirty #38 Tue Oct 21 19:46:00 CEST 
2025


Board: NXP i.MX93 11X11 FRDM board
imx9: Detected IMX9352X (-40 - 125C)
ele: Current lifecycle: OEM Open
ele: Event 0x0287eed6:
ele:   IPC = MU APD (0x02)
ele:   CMD = ELE_OEM_CNTN_AUTH (0x87)
ele:   IND = ELE_NO_AUTHENTICATION_FAILURE (0xee)
ele:   STA = ELE_SUCCESS (0xd6)
netconsole: registered as netconsole-1
pca9450-i2c pca9451a0: PMIC Chip ID: 0x9
imx-esdhc 42850000.mmc@42850000.of: registered as mmc0
regulator-fixed regulator-usdhc2.of: probe permanently deferred
imx-esdhc 42860000.mmc@42860000.of: Failed to get 'vmmc' regulator 
(ignored).
imx-esdhc 42860000.mmc@42860000.of: registered as mmc1
mdio_bus: miibus0: probed
mdio_bus: miibus1: probed
imx-usb 4c200000.usb@4c200000.of: USB EHCI 1.00
malloc space: 0xbfe80000 -> 0xffcfffff (size 1022.5 MiB)
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.

Hit m for menu or any to stop autoboot:    2

Tested-by: Maud Spierings <maud_spierings@hotmail.com>

Kind regards,
Maud




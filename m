Delivery-date: Fri, 04 Sep 2026 11:39:26 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2QOM-00Ag9j-0O
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 11:39:26 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kcJlO8Zl;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B0679200F53
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 11:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jyg3I8Tg3RagGtMu6zbXKMcAP5ZP7uDLvMrCfhJN+h0=; b=kcJlO8Zl1xQEAf
	U9p1lewt6wcqco0h6/h6CibCcREi81fpJ8xrwWpvDWQZBnFdq53MobjYYOZJAGUqxIkNdYXPsCkNr
	1XDxMeWMw2UEXlbOZYk7gKj0ol1BckuuaTkJnqCfZ5S4Bw0/2ACe8jAs1IrvZss/kzoRgAkhNkyZB
	L/Ihy0i2q9ylwbJqA+OuYZWPiiwr1L7uhaK80W35DgX5fidgRZie8kCqj91UiPKEU9QuIALjMipL/
	nOup62JO/hE2djTIexkqYUu1Oa6aQmofeKUEY9q4oJsC6xO0Dwncq3mO+zjVHkDgTK1D/SnJiNKDU
	HLolH0X3xq6feitk/s4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2QNF-00000001Yi2-3jSZ;
	Fri, 04 Sep 2026 09:38:17 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2QNC-00000001YhB-0Nnd
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 09:38:16 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 693E0202454;
	Fri, 04 Sep 2026 11:38:12 +0200 (CEST)
Message-ID: <7412fd8e-bd3f-4945-a75b-209f097e64a9@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [RFC PATCH 0/6] Add Raspberry Pi 5 initial support
To: "Andrei Lalaev" <andrey.lalaev@gmail.com>
Cc: barebox@lists.infradead.org, "Andrei Lalaev" <andrey.lalaev@gmail.com>
In-Reply-To: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 04 Sep 2026 09:38:11 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_023814_273136_49C81F21 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Andrei, The series looks all good to me. You sent it as
    RFC so I won't apply right away. So my only C would be: do you want me to
    apply it? Sascha 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: kd44zh7t3778it7w6ogopfimi5exqa4f
X-Rspamd-Queue-Id: B0679200F53
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrey.lalaev@gmail.com,m:barebox@lists.infradead.org,m:andreylalaev@gmail.com,s:lore@pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

Hi Andrei,

The series looks all good to me. You sent it as RFC so I won't apply
right away. So my only C would be: do you want me to apply it?

Sascha

On 2026-09-01 17:12, Andrei Lalaev wrote:
> This patchseries adds initial support of Raspberry Pi 5.
> Since the most peripheral is routed though RP1 south bridge,
> only debug UART and SD card are supported.
>=20
> Boot log:
>   NOTICE:  BL31: v2.6(release):v2.6-240-gfc45bc492
>   NOTICE:  BL31: Built : 12:55:13, Dec  4 2024
>=20
>   barebox 2026.08.0-00096-g549bcd6aa802 Tue Sep 1 07:54:36 CEST 2026
>=20
>   Board: Raspberry Pi 5
>   ERROR: regulator-fixed sd-vcc-reg.of: probe permanently deferred
>   WARNING: sdhci-bcmstb 1000fff000.mmc@fff000.of: Failed to get 'vmmc' re=
gulator (ignored).
>   sdhci-bcmstb 1000fff000.mmc@fff000.of: registered as mci0
>   ERROR: regulator-fixed wl-on-reg.of: probe permanently deferred
>   malloc space: 0x1fd00000 -> 0x3f70ffff (size 506.1 MiB)
>   mci0: detected SD card version 3.0
>   mci0: registered disk0
>   environment load /boot/barebox.env: No such file or directory
>   Maybe you have to create the partition.
>   barebox@Raspberry Pi 5 Model B Rev 1.0:/
>=20
> Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
> ---
> Andrei Lalaev (6):
>       mci: add driver for Broadcom SDHCI
>       ARM: rpi: add Raspberry Pi 5 support
>       Documentation: bcm283x: add Raspberry Pi 5 support
>       arm: dts: bcm2712-rpi: specify clock frequency for uart
>       arm: dts: bcm2712-rpi: disable wifi SDIO
>       bcm283x: debug_ll: add Raspberry Pi 5 UART support
>=20
>  Documentation/boards/bcm2835.rst          |   4 +-
>  arch/arm/boards/raspberry-pi/lowlevel.c   |   3 +
>  arch/arm/boards/raspberry-pi/rpi-common.c |  11 ++
>  arch/arm/configs/rpi_v8a_defconfig        |   2 +
>  arch/arm/dts/Makefile                     |   1 +
>  arch/arm/dts/bcm2712-rpi-5.dts            |   4 +
>  arch/arm/dts/bcm2712-rpi.dtsi             |  14 +++
>  arch/arm/include/asm/system_info.h        |   3 +
>  arch/arm/mach-bcm283x/Kconfig             |   6 ++
>  arch/arm/mach-bcm283x/core.c              |   4 +-
>  common/Kconfig.debug_ll                   |   8 ++
>  drivers/mci/Kconfig                       |   5 +
>  drivers/mci/Makefile                      |   1 +
>  drivers/mci/bcmstb-sdhci.c                | 165 ++++++++++++++++++++++++=
++++++
>  include/mach/bcm283x/debug_ll.h           |  10 ++
>  include/mach/bcm283x/mbox.h               |   1 +
>  include/mach/bcm283x/platform.h           |   1 +
>  17 files changed, 240 insertions(+), 3 deletions(-)
> ---
> base-commit: 42e510a258d7c276c35f06c103e685c80d376eab
> change-id: 20260901-add-rpi5-support-8bfa43e1c9b7
>=20
> Best regards,
> -- =20
> Andrei Lalaev <andrey.lalaev@gmail.com>
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




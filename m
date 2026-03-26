Delivery-date: Thu, 26 Mar 2026 08:29:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5fAF-005GdH-14
	for lore@lore.pengutronix.de;
	Thu, 26 Mar 2026 08:29:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5fAE-0000uJ-NO
	for lore@pengutronix.de; Thu, 26 Mar 2026 08:29:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:From:To:Date:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=klOh0G9DeFtQF5toKDUjnzZIh+DoB46Gy9wI7o4/vX0=; b=vo1vCPcNZHkqjrL6v8Lia7ybja
	X6V2zSdrHoq+OIoiZBUIGJFs0HfJPaoRVM1WG8oSVnwPAYfwIMRKQuOiCXJKLUCRRwvZvyRS1cshy
	mF+1DICoDgdHXiirQRIl8pnTVzTioz65qbkFs0nNwQPQgEUHiZpenTkUwkgV3ypRG0IujOiYmaNFw
	EtJ2btPIB7U4ZnHwnGUFHrKWxgH8QnELRqaKtCc+r83GLjorIT9rHUtSSVsQDMpnpvdBupSC0ECZC
	mfBWYjBhlrQjRSjzuZBg7t15DRdt8DqaYg0ycbjGYbIqBR7yPtPg1WIt5ClgrtmPpSOuZMH7+853a
	yPCEIl+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5f9o-00000004wPf-0W67;
	Thu, 26 Mar 2026 07:29:32 +0000
Received: from mail-106103.protonmail.ch ([79.135.106.103])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5f9l-00000004wO2-0FqC
	for barebox@lists.infradead.org;
	Thu, 26 Mar 2026 07:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1774510166; x=1774769366;
	bh=klOh0G9DeFtQF5toKDUjnzZIh+DoB46Gy9wI7o4/vX0=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=baAdYjQscjBkorD0sTAT0d+Hnc4aDLSFkhy6pFjC0WRYBrO0ELWvxgeF8/mfMet7g
	 ojtFFdlp8d4jUDGQVUDbDsUDzDaIXARTvK4mKkpxXiAnSGHIMFvc0ZUzBgs9HJ3iId
	 aBb625S7DPHlR5mGBZZwt229h17RJdzLCAY4brgzDJTJrQLK10CDqNpTG3iK0AhDBQ
	 9gtWhgF4yCTwzsYpDTouMFX5C4xGKqSl7P1QZqr81FjBWUTBO8JhiRUS9CJmXiBxCz
	 UdF/gSr+6Ex3EfHPFH7E6zi7r4MvEX+1MwIbo57KuyYkHiw64Gtvae0IkNMgIolj8A
	 Ne9czGrIZUDYA==
Date: Thu, 26 Mar 2026 07:29:22 +0000
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: =?utf-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Message-ID: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com>
Feedback-ID: 2463531:user:proton
X-Pm-Message-ID: f0df0bf12fda923202ae44fd387f4439e086b371
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_002929_928886_D9DFBD7A 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Compiling barebox without PBL and using dts from Linux dts upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

I try to boot Linux using barebox on the MYiR Z-turn board (Xilinx Zynq SoC=
).
I have generated the default configuration using `make zynq_defconfig`.
After compiling and trying to boot nothing works.
I am not surprised at all.
I started digging, and here are a few things that are not clear to me.

Issue number one.
Barebox consists of 2 bootloaders, the Pre-BootLoader (PBL) and Second-Stag=
e BootLoader (SSBL).
However, in my case I use the First Stage BootLoader (FSBL) compiled by Vit=
is.
The FSBL does all the required hardware initialization.
In such a case, the PBL is superfluous.
I would like to disable it.
However, I can't disable PBL_IMAGE in menuconfig, it is forced to Y.
It is selected by PBL_MULTI_IMAGES [=3Dy] && HAVE_PBL_MULTI_IMAGES [=3Dy].
Moreover, I can't disable HAVE_PBL_MULTI_IMAGES, it is forced to Y by selec=
ting ARM.
Disabling ARM of course makes no sense.
Is it even possible to configure barebox as a SSBL-only for the Zynq SoC?
How to achieve this?

The second issues is that the MYiR Z-turn board is not supported directly b=
y barebox.
However, there is a valid dts description in the dts directory (Linux upstr=
eam device tree directory).
How can I tell barebox to use a dts from the Linux dts upstream directory?
I looked for some config in menuconfig but without success.

The third issue is that I can't compile dts in the dts directory.
The make help message says:
>   src/<ARCH>/<DTS>.dtb   Build a single device tree binary
However, when I try I get:
  [user@host] make src/arm/xilinx/zynq-zturn-v5.dtb
    DTC     src/arm/xilinx/zynq-zturn-v5.dtb
  /bin/sh: 1: -Wp,-MD,src/arm/xilinx/.zynq-zturn-v5.dtb.d.pre.tmp: not foun=
d
  make: *** [Makefile:148: src/arm/xilinx/zynq-zturn-v5.dtb] Error 127
Of course the ARCH and CROSS_COMPILE are exported.

Regards,
Micha=C5=82 Kruszewski





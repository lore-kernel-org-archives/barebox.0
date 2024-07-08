Delivery-date: Mon, 08 Jul 2024 12:54:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQm0a-002kaB-39
	for lore@lore.pengutronix.de;
	Mon, 08 Jul 2024 12:54:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sQm0a-0004Cv-D4
	for lore@pengutronix.de; Mon, 08 Jul 2024 12:54:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fy686GA/EIVi6LCty9goG627MtR0V6YDQkIZ/QNWxhE=; b=pgXJBtmUPXUatr4stqx51ROk6b
	gvPFbVfkegbpg1/AjZJfOJRd4vQG8GwpwY3+DhKZysUyGmwXS1ypCb/yBgv2qiBeVnLc9TL+rBqAE
	tbkPx0ZSdn9UKyx6QE6nLxQUFN3E8A/Q6to+D5r/4ZL2gASiY3bk5/2RyigJB3P/cvOtTkhVHUG9o
	Iw64FE/N36Cg8rbT7tBHt5jzgauqO2uM7ihiksKSEJfR9lLfo7YjmiT2bEEBeeQmJC6IPAiRshgXP
	iJwQ2XgU8yawbjg3D859HdjZIEuaVU6SpUZjYVpW44mjpgSWuq2oHF3Rg5syaGCWLF0Cb5SRo+TZQ
	s6GPtMkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQm03-00000003VIY-0wmN;
	Mon, 08 Jul 2024 10:53:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQlzo-00000003VEq-17XO
	for barebox@lists.infradead.org;
	Mon, 08 Jul 2024 10:53:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sQlzk-00047m-Jw; Mon, 08 Jul 2024 12:53:20 +0200
Message-ID: <5c3923960eb059b2edc64a73cf53a75c5a28476c.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>, 
	barebox@lists.infradead.org
Date: Mon, 08 Jul 2024 12:53:20 +0200
In-Reply-To: <lyjzhwxjwj.fsf@ensc-pc.intern.sigma-chemnitz.de>
References: <lyjzhwxjwj.fsf@ensc-pc.intern.sigma-chemnitz.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_035324_329853_167BFE9E 
X-CRM114-Status: GOOD (  15.00  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Major memory performance decline from u-boot to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Enrico,

Am Montag, dem 08.07.2024 um 12:22 +0200 schrieb Enrico Scholz:
> Hello,
>=20
> I have a karo tx6s module (imx6s, 512 MiB RAM) which is shipped with an
> ancient u-boot 2015 bootloader.
>=20
> barebox 2024.07 works out-of-the box on it. But under the booted linux
> system a see a major regression in memory performance.
>=20
> E.g. u-boot has
>=20
> > # hdparm -tT /dev/mmcblk3
> >  Timing cached reads:   1236 MB in  2.00 seconds =3D 618.46 MB/sec
>=20
> while barebox shows only
>=20
> >  Timing cached reads:    574 MB in  2.00 seconds =3D 287.08 MB/sec
>=20
>=20
> Running tinymembench[1] shows that pure memory read operations are not
> affected; e.g. both variants report around
>=20
> >  NEON read                                           :   1398.5 MB/s
>=20
>=20
> But write operations differ by a factor of 4-5:
>=20
> > standard memset                                      :   2054.4 MB/s
>=20
> on u-boot vs. barebox with
>=20
> > standard memset                                      :    472.7 MB/s
>=20
>=20
> I modified barebox to use the same DCD like u-boot; resulting MMDC
> registers are nearly identical[2].  /sys/kernel/debug/clk/clk_summary
> is also nearly the same (only LVDS1_SEL (unused) has another parent).
> TZASC is not used.  GPRx registers are identical.
>=20
> Systems are running with linux 6.6 and master on an initrd.
>=20
> Disabling L2 cache in linux slows down things, but the relative results
> are similar (no difference in read, memset 322.3 MB/s -> 728.5 MB/s).
>=20
> Building barebox with CONFIG_MMU disabled makes no difference.
>=20
>=20
> Looking at another iMX6 system shows similar bad numbers for barebox.
> E.g. an iMX6QP has a memset rate of 613.6 MB/s.  But I do not have
> u-boot available for comparision.
>=20
>=20
> What could be the reason the u-boot is so much faster?  Which memory
> related settings are carried over from the bootloader to linux?  What
> could I test else?

The most likely cause is that Barebox applies the workaround for ARM
erratum 845369, which has a major impact on streaming writes and thus
both memset and memcpy performance. The old U-Boot probably does not
include this workaround.

You may check this theory by removing the call to
enable_arm_errata_845369_war in imx6_cpu_lowlevel_init.

Regards,
Lucas



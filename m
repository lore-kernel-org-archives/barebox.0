Delivery-date: Tue, 12 May 2026 08:25:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMgZ3-000oG2-1U
	for lore@lore.pengutronix.de;
	Tue, 12 May 2026 08:25:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMgYy-0007FI-Qb
	for lore@pengutronix.de; Tue, 12 May 2026 08:25:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=JNRvlUtcQKrbGL8tPSBss1Ov3rMu+IbeKxju3f8oSt8=; b=GMKtEZ9V9Yo7I0NO1TfCKMqjq2
	Mg35QbXoF14eK9NdldCyZrMBG0ZNFB+2wBMq6jROcuNcT/ryaCwmw+HuCD8RXnQyKUVAD9G0O0Iof
	qnDBQyYvkkJZMKt/Ya6JEg22jvBiiEdmBnw2Sl8f23Q2pO1Aedz71rAgOB1qgvoHve6ei2Tu6GOz8
	PCOQ71iBHvuay2v/8/ZueMOXYZPu/HJrZ4M1ezw1L1wi5uUQ5hH1BiIrh0LIABP6eM5Fnqt8/MOps
	yXWIVTXFEFpvvMuxHtL1c1cHVindPIUhD5i7YTFtIn6gB9OMTi3kt4pfhJSS45xKmgiCteq1l/hXi
	Nd14uldQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgXi-0000000FlU9-0uNS;
	Tue, 12 May 2026 06:24:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgXf-0000000FlSQ-3GsM
	for barebox@lists.infradead.org;
	Tue, 12 May 2026 06:24:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wMgXc-0006rI-R9; Tue, 12 May 2026 08:24:28 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wMgXb-000NRQ-2x;
	Tue, 12 May 2026 08:24:28 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wMgXc-0000000HaqW-2JlO;
	Tue, 12 May 2026 08:24:28 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <fbe6e09e-4b21-4638-8254-1c46a75b5c91@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 06:24:28 +0000
Message-Id: <E1wMgXc-0000000HaqW-2JlO@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_232431_815600_6064F1CC 
X-CRM114-Status: GOOD (  19.85  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Fabian Pflug <f.pflug@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: i.MX: riotboard: switch to
 imx6q_barebox_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-11 15:48, Ahmad Fatoum wrote:
> Hi,
>=20
> On 5/11/26 3:32 PM, Fabian Pflug wrote:
> > Make use of the imx6q_barebox_entry instead of calling
> > barebox_arm_entry directly, which allows us to profit from optional
> > OP-TEE loading in this function.
> > Always setup UART, in case OP-TEE gets integrated, which will crash if
> > the UART is not configured correctly and debug is enabled.
> > Since now a bit more functions are called, we use
> > relocate_to_current_adr instead of get_runtime_offset.
> >=20
> > This should not change behaviour of current implementations, but makes
> > way for OP-TEE implementations.
> >=20
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
>=20
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>=20
> Minor comment below:
>=20
> > -ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
> > +static noinline void continue_imx6s_riotboard(void)
> >  {
> > -	void *fdt;
> > +	void __iomem *iomuxbase =3D IOMEM(MX6_IOMUXC_BASE_ADDR);
> > =20
> > -	imx6_cpu_lowlevel_init();
> > +	writel(0x4, iomuxbase + 0x016c);
> > +
> > +	imx6_ungate_all_peripherals();
> > +	// if uart ist not set-up, then OP-TEE will fail if debugging is enab=
led.
> > +	imx6_uart_setup(IOMEM(MX6_UART2_BASE_ADDR));
> > =20
> >  	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>=20
> This if claude can be removed.

Fixed while applying.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Fri, 08 Sep 2023 17:38:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qedYf-008Nz8-GX
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 17:38:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qedYd-00062D-Ln
	for lore@pengutronix.de; Fri, 08 Sep 2023 17:38:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V0FJQq9KOFouwVMTHjMYYZKUfAyo+5yVEJAgctSQD0A=; b=b4Wx8sGIQeqmBM1UxjHW2/ku0R
	pOdAZEene6cTTtvBFXzQc5QEFwWT5knYDwy8DrCeAhusXNenGlQkj57BX9NIY9dWyaXT+uQjOD9U5
	1TrDsL8Ks60PidWmvCb7naN+CBKtm//wRoASj3FH5oBruPGaBNrhWXMBYl7kZzlij6q3dvpDzbixi
	i8qxc+KKbhzEPsr09boT90q7DQwUMxGw/rE00IcxljJK0T8unUVMP1p9/HqONhjcAdsb/Pa2m2GhM
	e8BCChMrNkpzGXPa8mzG7uYZ4Je68YFf6fijX85sk4P6+JWlX9KH/CJueJzl65GipTSxXDTnuSDvE
	K13pL+6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qedXH-00E15w-37;
	Fri, 08 Sep 2023 15:36:43 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qedXD-00E15J-2T
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 15:36:41 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 524D9E0008
	for <barebox@lists.infradead.org>; Fri,  8 Sep 2023 15:36:33 +0000 (UTC)
Date: Fri, 08 Sep 2023 17:36:31 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
User-Agent: K-9 Mail for Android
In-Reply-To: <20230908132023.GJ637806@pengutronix.de>
References: <20230907152047.102747-1-jmaselbas@zdiv.net> <ZPo6pGwAwVJr5b7U@tour> <20230908132023.GJ637806@pengutronix.de>
Message-ID: <B4B0C086-EE4A-4CBB-85FB-3499F8DE42D6@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_083639_962738_B2B6A4D4 
X-CRM114-Status: UNSURE (   8.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_1/3=5D_decompressors=3A_Up?= =?US-ASCII?Q?date_xz_to_include_ARM64_BCJ_decoder?=
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On September 8, 2023 3:20:23 PM GMT+02:00, Sascha Hauer <sha@pengutronix=
=2Ede> wrote:
> On Thu, Sep 07, 2023 at 11:03:32PM +0200, Jules Maselbas wrote:
> > > +config XZ_DEC_ARM64
> > > +	bool "ARM64 BCJ filter decoder"
> > I've just noticied that this string makes this config entry visible
> > in menuconfig, while all others are not=2E
> > It should be only: `bool` without anything else afterward=2E
>=20
> Fixed that while applying=2E
thanks
>=20
> Thanks
>  Sascha
>=20



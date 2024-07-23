Delivery-date: Tue, 23 Jul 2024 15:19:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWFQU-0029UF-38
	for lore@lore.pengutronix.de;
	Tue, 23 Jul 2024 15:19:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWFQU-0002nG-Cu
	for lore@pengutronix.de; Tue, 23 Jul 2024 15:19:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J3P6JfSRmLPXJqr2mvfQleEbNBAqWvTDYDj7+twu4G0=; b=Jb6cWuVxKi9xkYVYC/ffDJUEkH
	8uBwcfqRh9+SGL2vbdiTtRxtY+TmHQzvNMKHWKIA4CRvpwbAbkV46EEL1Rbxb8mmkQ3Sh0qtZEHjD
	Pzlj/dz/l6rj64dUb212BL4q63qMRNdBa8PB93mG9p1xXYmRXOgKE6AqkXnEvSp6aRoKkfr4Rjrp3
	77+wrvwAf5IVV8ZhEAhUIXIoUFXl6NajRmjUWySrnUBBLoHkkP0Nae/Y8t42lTXFgmMbaTC1Y3ZCs
	v4nLwyJdcR1TcESMhNrqbHfInOq2dairyXXSz+8nnAZs5t6TyV/AxTdN3YM/Fzgx6uN4+nTh5eE8O
	kMGU3U0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWFPq-0000000CVDy-36nG;
	Tue, 23 Jul 2024 13:18:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWFPo-0000000CVDa-22nd
	for barebox@lists.infradead.org;
	Tue, 23 Jul 2024 13:18:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1sWFPn-0002ix-3K; Tue, 23 Jul 2024 15:18:51 +0200
Message-ID: <ba1febb9b457f5876959f093f866b680e266f987.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
Date: Tue, 23 Jul 2024 15:18:50 +0200
In-Reply-To: <8f4d5c086afb381b17a2289bdc7e22129a51d9e7.camel@gmail.com>
References: <CANn9nbgEYhJEPCZs4oQ-TBLM5OFz-076yiwRCYzewPJVfoiKMw@mail.gmail.com>
	 <c91faed04802d13072ac42b233216fc5cb414d4f.camel@pengutronix.de>
	 <8f4d5c086afb381b17a2289bdc7e22129a51d9e7.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_061852_546699_C8354901 
X-CRM114-Status: GOOD (  15.61  )
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
Subject: Re: HAB warning on imx6sx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 2024-07-23 at 14:44 +0200, Stefano Manni wrote:
> Hi,
>=20
> On Tue, 2024-07-23 at 14:24 +0200, Rouven Czerwinski wrote:
> >=20
> > This is a common warning on some i.MX6 devices which indicates a
> > CAAM
> > RNG self-test failure, see the description in
> > drivers/crypto/caam/rng_self_test.c which should be run by the
> > bootloader to ensure that the RNG part of the CAAM is not faulty.
> > This requires the CAAM driver within barebox to be enabled.
> >=20
>=20
> after enabling CAAM I see:
>=20
> =C2=A0 rng_self_test: RNG software self-test passed
> =C2=A0 caam 2100000.crypto@2100000.of: Instantiated RNG4 SH1
>=20
> but the HAB warning is still there.
>=20
> I read from drivers/crypto/caam/rng_self_test.c that the warning is
> a false positive due to an incorrect implementation of the RNG
> self-test procedure in the boot ROM.
> So running the RNG selftest in the bootloader shoul help find
> real RNG failures that may be obfuscated by this false positive.
>=20
> Is correct my understanding?

Yes, this is correct. You'll probably want to send a patch to modify
the habv4_known_rng_fail_events[] array in drivers/hab/habv4.c, this
should prevent it from being displayed as an error.=20

Best regards,
Rouven Czerwinski



Delivery-date: Tue, 18 Mar 2025 11:57:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUdH-0010ST-0K
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 11:57:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUdG-000175-1g
	for lore@pengutronix.de; Tue, 18 Mar 2025 11:57:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2lWfS4Cyx6fud2zE3eWt0ht1TEDj/f0+KzKi4VSpkgM=; b=bYnGCNsyOd1hdQEOErIDaqK8ZM
	CMTsn0Uyx4uERnvELvcSV6krxdFK/mkfoMDMsb80VoY813wvR4u8jq/p2uhB/Y1gPOMUS6e6TMISV
	aAXWr1UEwN//8gTICkgYhmnu6xjRnqIAyjpyAbUoXBIxd0/sFtzSm3UnPCmumHRiNCSmtZhhLY5xA
	NuGzftrSnVGilyVOA5JuJGbD8B2fffADSNQXVUI4Nyj6z5v5ymorNAd0m869bmxkU9A/F0xwOcb2g
	3T1LktqMIuwLqZ7npNYxUP4NVLT7NOPe212zdyX95apzOLblbK0pBTRj/SZz6mYIUdan1SMDADGQu
	V0iVDG8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUcl-00000005cAq-2aZC;
	Tue, 18 Mar 2025 10:56:43 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUZV-00000005blt-0RU1
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 10:53:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742295198;
	bh=2lWfS4Cyx6fud2zE3eWt0ht1TEDj/f0+KzKi4VSpkgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZTVah94cbCiwZ1MPo9skBMzeiOp1ByMoDQZwiA1QJS7ot6MTdjRsp/khHiyx5QPMp
	 nHe0JDrDGWO5hT171w5jIEV8WXFAn8+ENh1stqBroOXiieBbVihq3Y8pasbL73rqFb
	 7KcMtNxPCLUJRfmesdiUD8Qs0SGlUyZH9SNSklEyNnQhfIsSTBp7yPbLw9tNZy36JL
	 OHcWHWMDU9OnSzSYT3Cp8x1z2ZXcctPPBzHprH6Kch8CvRBOSryy8ieQrMS5U3h8rr
	 4TXIA/QZB69iWaH+NHMyRBPsoXSSMfAiUGr3ddMZ3YJ+Nfb/qU3/xJDNBGHI4Lp2Ou
	 rcqnswyPelcKg==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id DF1F7FC50B5; Tue, 18 Mar 2025 11:53:18 +0100 (CET)
Date: Tue, 18 Mar 2025 11:53:18 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <vh6zygee2p4sc7karvch2n7mxqeo2e2253fjvtegtrbrv4vxvs@ujnozm5kxxbn>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
 <20250318082507.419785-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cv7ooaoc2wxklagm"
Content-Disposition: inline
In-Reply-To: <20250318082507.419785-2-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_035321_315391_299C09D7 
X-CRM114-Status: UNSURE (   5.35  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] amba: drop unused hepers for creating AMBA devices
 outside OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--cv7ooaoc2wxklagm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 2/4] amba: drop unused hepers for creating AMBA devices
 outside OF
MIME-Version: 1.0

Hello Ahmad,

$Subject ~= s/hepers/helpers/

Best regards
Uwe

--cv7ooaoc2wxklagm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfZUJsACgkQj4D7WH0S
/k4WCggAgtiDE1txS3aEwWiQGt42kNgsa/QW/QjULU8KIgHX85MBcvrE3YR4Vwr4
jq9aolf1PlxL9c2jOqfiICQlw2yZVVa07gQ1eG5viQ8TZlA4OcmkiHR8MAAeaZZS
kL1IB2u4ifSmvOOaYL/jDem1aPnFbHGCoZDkMNFwddhrwfpDd+3G6gGX6lVQ2vHw
pg1YJuA9HhKXUFyJvA19PD7x6OFfOFxnRUcy5erTbgDrPHDTHoFkbA7rKLEBuK40
Uwj3PVppXldoO6VMCrfZ+Og9dxPxiMYSaZ72bnGuQzfgJtSbLmBKfEhDOjJX6B1w
hck0PwtQGg0jn9bf6wVUPhPulXaacg==
=fNxD
-----END PGP SIGNATURE-----

--cv7ooaoc2wxklagm--



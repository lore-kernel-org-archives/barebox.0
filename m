Delivery-date: Tue, 21 Mar 2023 18:22:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pefgj-009S6l-0m
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 18:22:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pefgi-0000YE-Iv
	for lore@pengutronix.de; Tue, 21 Mar 2023 18:22:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D47LLeP8AOtlBfSei4c9Cz1VTUbB7q7MhfYhxUd2vS0=; b=NTv4XEaZJm6YIVqiYddEyvxhsT
	PwnXC0vysfdA1WVtxkTQ0NpsqdzCS+VLjtjG4TBuliAyzF+kAfwJmIZt6psG+jfN/pRMrphHV8fwq
	WgTkqSwdloMAB02Bk+0pmHo+BVu/tVO/WPW3/I06GxZEVhNDZ2dXJhPux+rv66hQwiIUp3GSv2tlj
	UAB08o+O5wqOrAjiCzpNXnv46R654t0Wwap1KAjUI0UpaXkbggh1o29cAlaPGMGWMMe0DMqcbVvOI
	LvxwN2Gqt/cJ9PyzHETltDy4mayzu5iZ6ryHMP+Mr//z6t80JpwZYIxFJI8ON21lK8K0CEJ2uoBZM
	HCUVS+fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peffN-00DCzH-2C;
	Tue, 21 Mar 2023 17:20:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peffJ-00DCyn-0T
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 17:20:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1D0CFB818FF;
	Tue, 21 Mar 2023 17:20:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A5BAC433EF;
	Tue, 21 Mar 2023 17:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679419249;
	bh=ACxgUHi+E9lPzkuf32zSt/dSuagdEnh2TKYbTEIokUE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bhidx+E0I4biSEDk7PVm2gwCQG6r7t8bphwOjSOYgPEno8tnwinZroRdFk6VFs+PX
	 +01xA6+SKCfxSihPWBXl8C/d1LYku6wwBOh6OZljHY0/VPLpn5k9Bmf3eRdTguQ/IK
	 vZPPmxoM9KInYFjplFmVKJ/gMC5N3De43KMBZYAUwL4QIe5W+ZacvObTDSqF15kOKO
	 BLJfkDvCgLwVcbu8lCF/h4evW1h7+BD1E5w70WcFz67/WGARmZCqC8qa1ZI+29Mc4L
	 hwlUC8CZjvGZc45X3HTwRugNlFesyC8/hPyAhMa4lkgqhQRbk3fQCGtuz9XgstuHLw
	 WDzZhUfirdV4w==
Date: Tue, 21 Mar 2023 18:20:45 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
Message-ID: <ZBnnbU1SUkNm4ryz@sai.fritz.box>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Sascha Hauer <sha@pengutronix.de>, Sam Ravnborg <sam@ravnborg.org>,
	barebox@lists.infradead.org
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
 <20230321085848.GI7446@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6d0tE3Mz7ndImtLq"
Content-Disposition: inline
In-Reply-To: <20230321085848.GI7446@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_102053_499286_07FD906D 
X-CRM114-Status: GOOD (  18.28  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--6d0tE3Mz7ndImtLq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sascha!

> Nice to hear from you here ;)

Yeah, it has been only 10 years... :)

> I have no idea how the SDRAM setup is done on the USB-A9G20. There seems
> to be SDRAM setup code for the USB-A9263, but not for the USB-A9G20. Is
> there some AT91Bootstrap required?

Yes. There is a bootstrap required: https://github.com/linux4sam/at91bootstrap
However, an old version is needed. I am still fighting the details.

I accidently erased it, so my journey for unbricking the device began.
at91bootstrap, openocd, barebox - they all once supported A9G20, but
nowadays all of them were broken. Well, I fixed openocd and barebox
mostly so far, the bootstrap is still the missing piece.

Super interesting about the A9263 setup code. I missed it so far. Does
that mean that barebox can replace the at91bootstrap?

> Anyway, what's really missing is DT support. I scribbled a patch to get
> you started in case you are motivated. Basically it's: Compile in the

Motivated? No way ;) Obliged? More so. But first, I want to unbrick my
device. First make it work, then make it beautiful.

That being said, the two patches from this series are okay? I'd think
they are still needed for other legacy systems even if I convert A9G20
to DT in some ages.

Thanks for your help!

   Wolfram

--6d0tE3Mz7ndImtLq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmQZ520ACgkQFA3kzBSg
KbaNbhAAsGv7fq+YBq2AcHXNTJRm37rvlNOE4SX9gsoB01lTHrkJt5grsKI9vNLe
ibfgIFSU9Yqg9GGMZNrdwbZg3xlcix8ZBkMh4x5CoCYWcTT9XQ3CA/Q2cfyoenlU
Fc816nE2pOdoZX35cBipWGuAAEdOSGcvZo7OnvM0ct5t3hoJqUjGAiRtt37DKYS3
Z7VKEcTz7rHl27EztFK2SrkGtLhxvCtk8T7bmNW025X/744J41AoOyE5qJ4z6uQx
xQ2kSCzaEfKNHokbuODY/HFhEQOVQw239mAHUwppkNRYG4RXoMyDz05UxbdY1f5Z
1FF9sirDb8OkQiIsruCQPB3dH63HYlYhh42Ewqz5rvdUv17J2mJseOQZ1oSTVVM6
ruJr9IfkWhix4YOKLfqzyyI4GnGx3IeXkuhvPcItvCYuPUcJV8It6HqetYnqYlZO
nBtPXSxuR60dRD3GMfebQvItv+4BOqJYNfYU+qb488ZhHzmXfnxAIa06PItLuDet
BhgYHoME4/d7tmhCTCv6oqPlAjm2XulBmhn+UfuYnTvHrSLnf8Wgib71rJ+8EXT8
s/FXaCvN0JwP6YMtmvZAkbZc5s+QOrgh0rGWOKq11I75PuIZvKMaUGFERzIje5Xt
3xnhQ1L+8MB8ndHyg4wl4Uz2ywDcy85GgKcVWoVDySSbUwPDn0U=
=VMbY
-----END PGP SIGNATURE-----

--6d0tE3Mz7ndImtLq--



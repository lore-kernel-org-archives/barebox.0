Delivery-date: Thu, 27 Apr 2023 19:27:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps5P2-002Woq-2U
	for lore@lore.pengutronix.de; Thu, 27 Apr 2023 19:27:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps5P2-0004N4-0p
	for lore@pengutronix.de; Thu, 27 Apr 2023 19:27:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u+LiMaOu0PoQ60IVpPy5oQkkeP4yvSMKUjIZs9hbqVI=; b=GEfNzivNJteoUdSVDGzSVHTJxO
	wfljky6/LKMS9tOPMZTsmBzLrkKGbLz4s+T+9byF+4LcOVJeoO2UZ1Ur5jLe4b6JC4p5hUT8HBYaU
	2EIg85I4sbv/Bn00VjfnKCgm8FUF6/87r0mILZYbnQPp53b+uW++5tvHbjCZF4vfSlo4rC2I3GJEf
	1TxguQNAiWkNrjHZxRbTD1jtiPvvJdmO3XP+BF56GDBkfndiVti4O70/+rzh/0Oz/A75gwNJi3PrS
	Py241IeTt7xTmdXHvdXl6Xa0+UfJb2zG4aYpnjsVx+RHzfZzdkfP+nsCjbWhgZEj0b2YQkkX45dVK
	AavtT/1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps5O0-0076tl-1s;
	Thu, 27 Apr 2023 17:26:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps5Nx-0076t3-2I
	for barebox@lists.infradead.org;
	Thu, 27 Apr 2023 17:26:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 204A060A55;
	Thu, 27 Apr 2023 17:26:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 141F9C433D2;
	Thu, 27 Apr 2023 17:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682616384;
	bh=AGaPZ/2yocKgtDgl3cvVbDi+HN3vEo7Ru5hXhuigKFg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CgQmn7dexOpdfDwkvLEaOR++9FAXi9yn23Y0RiiF4LC3uIib48fTAA7qS85FCdJiU
	 U6Jw9qmxVVapFPUBeVZZkcV32Q+EiyNWrLFUUhc8YgT1TSK1p0lBI3Yt9RIyUfAqZ3
	 +i3n666nfJGxOIITccZIJxNPzDWMEnMGqEDLFpumGLnGgwnt0y3zMYLKO7DBmVjoip
	 saRVi/ir1FBaOrio2MOkKidXWBFcLymle+EeeO49jtEAgJuJ5xLVBh0rUtFrekEFUN
	 h/zxaIYf3IGW+h8dXeOohRq7SBN7UZ2pDWA91WLt8ENFX+B1MNCMBM6c69nXMSnBS2
	 Oc9ZDg24eoekw==
Date: Thu, 27 Apr 2023 19:26:21 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
Message-ID: <ZEqwPa5hQFnpE584@sai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Sascha Hauer <sha@pengutronix.de>, Sam Ravnborg <sam@ravnborg.org>,
	barebox@lists.infradead.org
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
 <20230321085848.GI7446@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3igJwN1cKEACm813"
Content-Disposition: inline
In-Reply-To: <20230321085848.GI7446@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_102625_785706_79AA6A3E 
X-CRM114-Status: GOOD (  14.10  )
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
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] mtd: nand: atmel: legacy: fix boot on USB-A9G20
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--3igJwN1cKEACm813
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sascha,

> Anyway, what's really missing is DT support. I scribbled a patch to get
> you started in case you are motivated. Basically it's: Compile in the
> device tree, throw away all the device registration from the board code,
> see where it gets you and fix the fallout ;)

So, I tried this patch and if the fallout was just some errnos or
devices missing, I would have fixed it. Sadly, the actual fallout is
that the board doesn't boot without any printing. This needs more
debugging than what I am willing to invest currently. But I can bring
the device to Prague if someone from PTX wants to try.

All the best,

   Wolfram

--3igJwN1cKEACm813
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmRKsD0ACgkQFA3kzBSg
KbZYhA//cgq2qEMnbnujCeuwj0nICkFwshaM5Q6XejF1ajHyvPhN7mRslTIcGosm
y+Dwdnfu2sBfsI+aNMWUDTB4qzp9mJ7G+QH2A9Q5MLJY+NXegx0lnNcAJTWtyzNu
Umwq66KVmFR8VsFWKgYSTwLV/MtOUlkifzeRFRCBP0xhAE+JMMoIpIdm3CTUCv5F
hm54kg/PS36V5yLquuP9tMivISTfcZnXGpDUGTgwUFRmkKw2gQkQEOq0JywnOXk5
rYkNLQRaDY9p5Omx+do7WUMNpl/4ipEG9m6nSLAupT+L8ziShs8vyeCV09HboHrC
Kaqf08Zqt72QakdnNCcezRb4zs2PxzjwNH0EHHTo5yci5YSrJ3NdDXSj7BMHNi3o
XSJUNW/U+iK4iZsa/8Om2W+dME4nCtnuNVttrkfllBCVwma0OBbJ847B5j150Oao
LXLFjGLi5AgEoLS+kCS3oZQIQcfVR4ohzswn/FclnGcQ5bj/F+n6GhfrBVUPtf2c
UVcJKdvhtdNNG53AjgUw5RbWSxFYal0SSBgzav54+a1thBkSjeKTcoDTBPhUZLT/
n64g4FnV9MdGtZ0GwMFN+zn6OV71jySL6CHjwIY1NDrLH9sUZJpoJ48GvQHkPn+f
l2jc91v6IneIhBgfi8uNCM/EIueDCjIz33xHegJcNXZoI3G6pd8=
=cuB2
-----END PGP SIGNATURE-----

--3igJwN1cKEACm813--



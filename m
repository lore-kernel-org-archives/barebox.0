Delivery-date: Thu, 27 Apr 2023 19:27:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps5Oy-002WoV-DQ
	for lore@lore.pengutronix.de; Thu, 27 Apr 2023 19:27:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ps5Oy-0004MP-92
	for lore@pengutronix.de; Thu, 27 Apr 2023 19:27:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4BBpx1NMTr3QYGg+P/DyiWuAS52GhWrl2SsCk7W+5Ws=; b=pK+2D7ZTXy7zstDRG2guOdQsd/
	bxvgJ/jlAN31h+XKHO/A5JgZ7SFDelQyssd9/inANChxudBw9brHdZwb9sDySoVbdB8NvWK8qHaMv
	Iaog4MiTBMk1/5/EQYrozZt/9ggirXhvOFsq6maCwG8S6wb1Q8F6sBjYjmT90gwEyUxgtPBgTRk+9
	tmiK9JyX9GLorGgHVINKWB7aPCN1PUHSLFw5VWns7oYyhVl771RmpAQ9tXzsqorflZCHjKRAoW05H
	NmBI66a0jNyMfYwAQZHlN7cMjlGWVZ2I8v7yw4xjI8x3VghicxMWICU1A3dhQm+H1l6qOyM4kJvJ5
	ZnLYf+Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps5NX-0076nW-18;
	Thu, 27 Apr 2023 17:25:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps5NU-0076mt-0v
	for barebox@lists.infradead.org;
	Thu, 27 Apr 2023 17:25:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2737460A55;
	Thu, 27 Apr 2023 17:25:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0701C433EF;
	Thu, 27 Apr 2023 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682616354;
	bh=4BBpx1NMTr3QYGg+P/DyiWuAS52GhWrl2SsCk7W+5Ws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tQfpBPnZIdoE3iHB8kZG+XsyWoAPBZBthWpa5/GvXXT49bAGcqQM2Lplt/ZGbeZLg
	 AsuO9AAr2zAZMT8hzV5XPMdJr9WgSj98rxaMcL0hvo1jQWojnARZ6FhfBWvWUu3u8r
	 GFWUwCLnWY6Y3hJmaFlfA/EvL5qJPxkSmDTuMfmOhQah11deUbwi/jlbCP+rLYFSjr
	 atRBgxWb86sPzm/77JAklwVmfMNqj3xg9mxvvN6GQ+nPfIBFpGF0v5f509vQ7gc57z
	 4JqMUxi79+r5yXA2md/TOjV+dSWGToetRppgJzVTASYhrmMDX8QhPOEgPQeB1xOzaK
	 7x88P8p309WgQ==
Date: Thu, 27 Apr 2023 19:25:50 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <ZEqwHm8i8z+wueOz@sai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>, Sascha Hauer <sha@pengutronix.de>,
	barebox@lists.infradead.org
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
 <20230321085848.GI7446@pengutronix.de>
 <ZBnnbU1SUkNm4ryz@sai.fritz.box>
 <ZBn/ShAwKik7TdvZ@ravnborg.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qVJvpy3vpmXSaBNU"
Content-Disposition: inline
In-Reply-To: <ZBn/ShAwKik7TdvZ@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_102556_382382_23AD5857 
X-CRM114-Status: GOOD (  13.25  )
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


--qVJvpy3vpmXSaBNU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > I accidently erased it, so my journey for unbricking the device began.
> > at91bootstrap, openocd, barebox - they all once supported A9G20, but
> > nowadays all of them were broken. Well, I fixed openocd and barebox
> > mostly so far, the bootstrap is still the missing piece.
>=20
> You may be hit by the newer gcc optimize the delays in
> the sdram init code in at91bootstrap.

The issue was something else: SAM-BA failed to flash the bootstrap
because it couldn't get the SDRAM initialized before. I still didn't
figure out why. Flashing the bootstrap with barebox never got it
executed. I now found out that SAM-BA is modifying one vector at runtime
before flashing. What is 'endaddress of blob in RAM' becomes 'filesize
of blob'. If I modify my binary bootstrap like this, I can flash it with
barebox and finally have a working device again. Phew!


--qVJvpy3vpmXSaBNU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmRKsBoACgkQFA3kzBSg
KbYvRxAAoB1gT6PxQiduDwh6Nar6UYpyeqO16kWdaPsAhDIPaBoSHYbTbyjvGf38
sjaKZ5QfIzq+z+nZlRCNS8ZkqHD/HslJC9P2i3xVwRCZ0d5lBJ0VgqSXxsZSOzdw
rXOjSt34SMCKFoEeypSfG+aolhYWfAHNab9uyNkCcV8kbGspsKLv50a7rW1iEnSM
k8XP0E/VFLqXvTmQKtSDD8b3SvvcHBKmSZ8oxvy+YS+7C5g0KvTwzNckVsvHyrGX
mZDRcZjI0DlYfZfzG0QIBLWfnKOBtQEJHzRfUs+qpCjafjsR/Fth7hdv/rLapZjF
Zg4raHuMKlIMaX8w5VXtnFWlO48B3hjDjViuJh6zqB0ESELhHVp7vdDqD8g2rhuI
xH4/1sD83rqq/UQCfnCYcQl4oQRIm+MNIc52KnYjkfJnGwWdmNxzIYfKltsiyBUA
JjuvSbZ+VAnEZI1OIRvvPDtu276SUHcAGBXa6ByN13K7OGICXW7tskMi2MULDefo
AzV1fEtLTssS+ZgUsdpc5wo5uoTkbdi5dAifDdlGVAEIiIWtqEKmnFIIVB5ig5dh
+CSdkiUav6051MiIXgQ0Iz7QEu2mTbOzCH+kHoh78UB25juSD2qMkjZcuWK58dEW
Iyfmt3NMywmokjOOsX5eeC2oqh0zjFAsoG0JbjaJaUDz7WlVz5M=
=EpWW
-----END PGP SIGNATURE-----

--qVJvpy3vpmXSaBNU--



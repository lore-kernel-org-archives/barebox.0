Delivery-date: Sun, 19 Mar 2023 22:29:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pe0ax-006zRY-R8
	for lore@lore.pengutronix.de; Sun, 19 Mar 2023 22:29:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pe0ax-0004m3-Kr
	for lore@pengutronix.de; Sun, 19 Mar 2023 22:29:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FoNZFPZ+kONWei+kJ5RLs7dRMeP7oy2G9b7Igr9c3bY=; b=AK389+xOooevM88+XNzaPB858r
	O4zouS4VBaskWkcH8NSpyOodgsg0vBCyrUsDwcZY1KmcCLNbO6AYsqdU7E9uYEUxFByNMI5dar7hf
	x7V6XQFXqsf6WtgvAsHJh0MHzFdLqwMNSwaqx8PLlytElX3xGllCQwKZrOyZaL0oBomQgR7j2/t+F
	GLKgy3auZHHl9zEunrAXgIO7VHRZ8dKlKjqjAEaaNBS9n5FiXY9GXT4flw50dxTgbSk0CyK89pv/h
	AaY37+IGquKKBvfwU1kIk1R88AUN8Ah2+LSyBANAdtJ9N66H4J//VQpBTStTcDSMq9JpHQGXLJMuv
	9K0gwaHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe0Zc-007U61-2R;
	Sun, 19 Mar 2023 21:28:16 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe0ZY-007U5B-2A
	for barebox@lists.infradead.org;
	Sun, 19 Mar 2023 21:28:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 570F1B80D0B;
	Sun, 19 Mar 2023 21:28:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7095C433D2;
	Sun, 19 Mar 2023 21:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679261290;
	bh=N9h6fh9eodMvYN/OxXEXkF9xbLZmagDqr5bNGkcFEm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MZzsWCWIeBhqLOJywMbN5aQZcKa9cbmkSrMk1W972IcSHBuT9sOQhSeVN0YxKN1zo
	 q4N3i+yhskmEfJgy62XqWR3BHUfWI7zMKNT3K4leelwzsPNXItqzuKNQwIAHMXpI2c
	 anO7T0q/K/L4KS91+9JvGwuY380j7490/By5/JEtZRCdexi40x3jjcW/PZyZqasR2V
	 71jk07qNJYS7bqPQ9KwnkqyKVh2LBej37FN5F1z82FhazxmvF0MvTvCcP+ESGZX56t
	 cE7yBPA1kIXezoqjYzQ2Z3WepLZeUws1vafwLkhiz30Ih3WpQmJybiLLog1H1bQqQ8
	 4edqHQGemYCvA==
Date: Sun, 19 Mar 2023 22:28:07 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
Message-ID: <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7iSgTpFDKj+5GbHh"
Content-Disposition: inline
In-Reply-To: <ZBdZxskg+JPzUY0t@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_142812_855635_F074D3E2 
X-CRM114-Status: GOOD (  14.76  )
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


--7iSgTpFDKj+5GbHh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sam,

> It is only a few weeks ago I argued that there was no users of the older
> at91sam* boards, and then you prove me wrong here.

At your service ;)

> I will try to remember that you may be able to test should someone
> decide to move the barebox support for qil_a9g20 to DT and add PBL
> support in the process.

I am still new to at91 and barebox, but AFAICS the PBL support is only
for MCI currently? I have an USB-A9G20-C01 and this one does not have SD
exposed. The later version A9G20-LPW has it, but I don't own such a
device, sadly. I really like the Calao USB form factor.

Happy hacking,

   Wolfram


--7iSgTpFDKj+5GbHh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmQXfmMACgkQFA3kzBSg
Kba88w//Vh0H2V1ugQwdchljM6ZeM1R6UHDmdI6BGksqFrhCQHwIOwZEuhzUmL7m
zUfT2KlglZMGwHJOITG99PQtarxRhYyDqaIzyjIhAN1uSlu7NTq4VjnhTSRSoJ41
twWg/B4CC48UYUIWoJBf4p3JSTxndLM/jB+fp19zziXmKMnr8XTI4mrwpFkVZTxw
c04BK5V7iro60FEu3xwN+11VszlDcBPncSsJyTtRJ2PVB0hu1u2WZwFYOFKY8AGu
pg1JE8Qxhsm4d0lruk3BRVtaJLMl2aFsiPIhTTGxv/SqTOEF4gF0FTK52XNpcTtc
+UM6DGYn5FrxkxmdGafQbFLhzSqgMqySta50qiEIig+JkxXWu6b1TRQzkf/EqAhO
JdMXinJuI5W2F+nFQc3S8hHrKlFAf7GuDaP2Lvm1Cnok5x8rOlr9OF4WpRSXDbwt
lKbf55BeXfplpNzKv/MxVybY5m3n3FeBPzVTqifU9k1xGN+0C5Z7dJ80VpovOAlj
JGSjealEmraJOh0Owqy8jTamYD50SthhSWZVOXhLjVj6FZm2+7ulcgEv3WshEQqE
BfEogEqBOXq7kvJIxvvbWIwy6sFLuBTUi5VIISeGGn5HCl16kAelB49Nlo0s7Dj5
p/F02pIleK/v6JHPVhJvJBOQfGGMvtV0EJYDmwOIoIj7W63Zeng=
=BDhG
-----END PGP SIGNATURE-----

--7iSgTpFDKj+5GbHh--



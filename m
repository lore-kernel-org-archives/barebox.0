Delivery-date: Tue, 21 Mar 2023 22:43:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pejlk-009etG-HJ
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 22:43:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pejlk-0001H5-Aa
	for lore@pengutronix.de; Tue, 21 Mar 2023 22:43:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8lMb+u93hcW/tVVxgQ9ut2sR+co/BDvfs/U+Y7EulQU=; b=AvTKVAbMRqx4dcOFGWSD8C8D7h
	n6SVt1umM35s9NnxcIiGTvF5ItAQB2sJqno5zfMvLuBTRSx9DKFuiWiiGrLAz72s1KMWCk1zt5OoL
	SSoBt0uhmzByRPZ+z74G0ORMmN5N0QigdVOyvNOoW0kwS8+iY0o8yjDdUDy07V8Pjz4C2myT/TOtF
	XlUt1lBVVyo7u+wWTxVpVnOjqcBtuhIjiSN5eOP00a3MW97ikB7Ktdx6hF5al9kp2teQepdijh7XJ
	MTYgnbl5JC98aWa9KK+ysEz8hVyJejhCuwta6qB3Is1j8MBJVUgvcKS+av4IS81dA/9yLGFr0HsRV
	ZD3Jci+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pejkU-00Dqke-3B;
	Tue, 21 Mar 2023 21:42:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pejkR-00Dqk4-2N
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 21:42:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1DA6461E6F;
	Tue, 21 Mar 2023 21:42:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED536C433D2;
	Tue, 21 Mar 2023 21:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679434946;
	bh=q+zCPPLJ5BSH2ozymQ6uY+VoqWmpeZuYCNOUGYBDRy8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pPt4J0CqMndj8fGOyst9anmtMb3AwYb9yeoOUVnPU5fxi50vOEIseWK5tV0ews1vZ
	 Nuo5xXwLTQlmPpoRmIuC5gs0jJ2lpgY+6RdD3leV/ebnhaj3/fYLEHyxnUjp27Zang
	 uj8a2kskZabgCR/5E9zdW9hTpnzdR3T+UZwpwmylUejHSIF8SnFCyN4dka4K8QuLyk
	 nmo7OzEgnyUBMrSbs35YY6Whuaa6SxTtta71+X2HlthTLv0/ba3yVTl0LTNgnfU9OV
	 bEx7jTJ/mPsIUHF3PhNuVPaDM6eNhWWxAwrZkiDB0bqLAdlao9sChyDDZvOatud649
	 0tHntpxvovQAw==
Date: Tue, 21 Mar 2023 22:42:21 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <ZBokvckXSyV6/ihp@sai.fritz.box>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>, Sascha Hauer <sha@pengutronix.de>,
	barebox@lists.infradead.org
References: <20230319154909.24047-1-wsa@kernel.org>
 <ZBdZxskg+JPzUY0t@ravnborg.org>
 <ZBd+Z+qn9rjuvp6S@sai.fritz.box>
 <20230321085848.GI7446@pengutronix.de>
 <ZBnnbU1SUkNm4ryz@sai.fritz.box>
 <ZBn/ShAwKik7TdvZ@ravnborg.org>
 <ZBoZUZaqUVwlxH/B@ravnborg.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="awaNGOQSLYla6R8W"
Content-Disposition: inline
In-Reply-To: <ZBoZUZaqUVwlxH/B@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_144227_832568_30EC75E8 
X-CRM114-Status: GOOD (  11.94  )
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


--awaNGOQSLYla6R8W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

> > It is a direct replacement for at91bootstrap and loads barebox as the
> > next step bootloader.
> The above is entirely correct - as the barebox variant supports booting from
> SD card only, where at91bootstrap support additional boot sources.

So, I quickly built the bootstrap for A9263 and it was ~71KB in size.
This is OK for the A9263 with 96KB of SRAM, but the A9G20 only has
2x16KB. So, I think I'll need to update at91bootstrap to unbrick my
device. at91bootstrap is ~4-5KB from what I observed. But thanks for the
inspirtation!

Happy hacking,

   Wolfram


--awaNGOQSLYla6R8W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmQaJLgACgkQFA3kzBSg
KbbJthAAn2EYvvbYp5yfgF6Wh7Ov0U/hyKAf6ZUMQRE6rLtwbe4g9s4tl4jpdNs5
1esqpu4utlhSiX+rt11RttK5Wcow8qDOxHMtCyv+o4JpEToXdycxm6LS2v/iyKYn
IMaDvJtBuGkPcFQ7qEqvYvbqlrKDIJuIuUqfnyiMIQoheoAaFwk9AMrYo9QZEHJT
1guaG/SjH4WSPdocQHXRy+MxKlHlFRGP2zGwuPa6ttu3kShuE4nYiHHuxmwSQkJa
9ad2g2H0+xc9uFPVmykX4C2pJtgZ0TX78UQ9xOKwaSnGre5acsWa5BTq26auvl9y
993NSrvVB8UbatZj4jY6M+JKE7QPJzZLlSEKnDt/s0g3nmKwCgPAsgKcGMHk5tBL
g6Jj517+fLpCVqlibdyA6pe3P4tDVSWkF+ZrZekonWGmxEPVlfUAgI1bpyDcs1nF
qeXf+Nuw9/vhbxgHWYJLVoSBWQoLK+fjOiHMMN4mAUwnMUcToW1y2PBrZvgMuZAK
uAberCMULVX2cuj+ZAJsOYlP2jQPcWjP6yJ8RiJ6HDsAoVdocIk9cvCr9M01d4M/
VOdS3ZL7ezZutCK3TDhbgKu/Q+H68y5ELtwM+73uLaHgb9yDDkQhcOVMiDwFOiuP
z9MXnp+j1KjVDpHFBbjCtk6+z+uPi60TKrVIIX5EdYa1W6EFX9U=
=A6TT
-----END PGP SIGNATURE-----

--awaNGOQSLYla6R8W--



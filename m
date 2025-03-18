Delivery-date: Tue, 18 Mar 2025 12:33:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVCG-0011Du-26
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:33:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVCF-0007dT-HG
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:33:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rxd1GdhfIipkzVhRifMe42iHJ34TxnmObQZwSekqYB4=; b=Jo5nVxUCc/WxEnmQ7ldqeYDQWu
	hQd/AUOXFhNBqJ47WXIsD5L0K2ac9VxdMkg2RvTjx3UpL0zxRUL9uXu3JM8Hnwb9G0cJu3NXHrjD0
	kxB0eGpUKMasuaN4brChzQE/od2dNeK51Em5IJ990Ri6EbbNVJJ5jp7qY5WleB97SdfMznCH1ld5C
	GsT5wGW3O+3semobKUFEuXBNuxww+jrAhg0PT9TXdXamzcXQOFPSJGlCebqKfdWRPh3OD5goOmNzM
	kn2FSMjCIFOv/TEnVibY84fDKvNs9WO0vTl/nVQUfZmmYvWXuHxu0IM8o5Xy9m6dAsrtilKhLCY6y
	kYFKr9Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVBm-00000005jfc-2tdd;
	Tue, 18 Mar 2025 11:32:54 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVA8-00000005jWu-28L4
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742297471;
	bh=nfLavy8dJZrVw508C3ZkmIy4t03w9srIa86tebOHKJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TaiZTTmo4Np2bU2dhYYxVDnf09giJsiYafY3kftc+F7TdMWdU4Vpa+28tkjvgksPL
	 fAkLljQTfaAjUpi9xHDYYXSmgvZJrZxc3ZBO2Z0l10+qg/yXOYFrEiSf3PlyAgvd/R
	 pxgcjoEmtGinMzmso2eCyxdSqiJaeis+OvqEtZ945ZIMfowis9Iy/oWMHTAOpoAusy
	 Hj+KW+C7DDYAkG092XxXazk4c2vehgfl8NHcINdjQNlQnIz3zJDYNUCe7a/M8SjvaO
	 IN5u6U4SNVRS0p5cizsXJN/wvL/dgLlvhRFzxb82fOc6DxChMoeRU6B9J7VyRrKiA+
	 G9ORnI8kjosYQ==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 14BD5FC5173; Tue, 18 Mar 2025 12:31:11 +0100 (CET)
Date: Tue, 18 Mar 2025 12:31:10 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ulltkotowmwcbpxito2puglexqq3diyjc23mmjp3ylputzy74c@6hsepfjsalpr>
References: <20250318082435.419053-1-a.fatoum@pengutronix.de>
 <p6sahp32nei5iesre27rbtdbsatui24ce53f3fx6sovbe2mis7@lkei2stdndjo>
 <f66973ec-4516-4dd3-92d3-214fab6c035e@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rz4tr4p76ctph422"
Content-Disposition: inline
In-Reply-To: <f66973ec-4516-4dd3-92d3-214fab6c035e@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_043112_698041_C9102B7D 
X-CRM114-Status: GOOD (  12.63  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] partition: fix reference to wrong cdev in warning
 message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--rz4tr4p76ctph422
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH master] partition: fix reference to wrong cdev in warning
 message
MIME-Version: 1.0

Hello Ahmad,

On Tue, Mar 18, 2025 at 12:23:19PM +0100, Ahmad Fatoum wrote:
> On 3/18/25 12:16, Uwe Kleine-K=C3=B6nig wrote:
> > This improves the error messages on my ts433 from
> >=20
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> >=20
> > to=20
> >=20
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.2
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.3
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.4
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.5
> > 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.6
> >=20
> > I still don't understand why barebox intends to create mmc0.primary for
> > all these partitions, but still it's an obviously right improvement.
>=20
> Thanks for testing. I still suspect that you have multiple on-disk
> partitions with the same label. What does lsblk -o name,label,partlabel
> say?

indeed:

	# lsblk -o name,label,partlabel /dev/mmcblk0
	NAME        LABEL          PARTLABEL
	mmcblk0
	=E2=94=9C=E2=94=80mmcblk0p1                uboot
	=E2=94=9C=E2=94=80mmcblk0p2 QTS_BOOT_PART2 primary
	=E2=94=9C=E2=94=80mmcblk0p3 QTS_BOOT_PART3 primary
	=E2=94=9C=E2=94=80mmcblk0p4                primary
	=E2=94=9C=E2=94=80mmcblk0p5                primary
	=E2=94=9C=E2=94=80mmcblk0p6                primary
	=E2=94=94=E2=94=80mmcblk0p7                primary

Best regards
Uwe

--rz4tr4p76ctph422
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfZWXwACgkQj4D7WH0S
/k4m1Af+OLbduA5cs+sLuxZ6G8/ZvKCoTYRyzyhwmRfugOmM5KiNR82dIyJuK3pH
DXWFAzAYMpT+rNZRgxnR7Xzbv5hB3NV1iNHYARN8HyHTdN2lJwgNNBUL0CJG6Uh5
sHDGNxNWDMN+JqKvW3Vs+lCJHZneaq53UPuIeQkdUF4wLXeOHjoNL8yWKJKIOJp4
oaH/QeDocnSVcnjm5VDR5CQ1/zMWtfAy7i5sSoZ1SIAQbOnx2z0swbQIYjAXpB9k
zrcvBZ+9JoNy3fdEhTMJsnzrv8D/DnFm/uSAOIjuaoApxxzJ/zxM3hxJTFhPT9Dq
8qQHjqfEQXkLE/u3z0QXT50IEpjESQ==
=pE4e
-----END PGP SIGNATURE-----

--rz4tr4p76ctph422--



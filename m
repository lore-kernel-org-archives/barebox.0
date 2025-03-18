Delivery-date: Tue, 18 Mar 2025 12:34:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVCt-0011FR-1b
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:34:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVCs-0007oh-Bl
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:34:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+cZJ1+Nw7sAgMxV4XFHL9yBZFTxwPvszzmFEM+iGeS8=; b=UuqDVPbrj2rEEMpTDzEfyM2pmc
	YX8KD6wS57iMse55/s0FJPpvx5bzwBVthpa0xDvy48P0tK9CtY0+/sB/q0FhHw0ANBy5bB1rjb4e/
	o7l50UxDwcVPbz/HmGBqYaDCB1T7jd8vmEEYKuJoofk5/epRN/68qLihlXCbdsUXST2mAnkSOgdqM
	EZLrgRo7N/Ly2MCQB6b768gITx0FK9risoyAK3vvfacsjkFyVcrtbnGlqxQtThqFhtER/iIZfj77P
	klmRJW4RmEipxtvj8+k8hjj9JdDLQfKx5/q9yNhCOoWDfi/FBnlwp90bk+sh+EGg1taPXK1yix31y
	0aN6W1KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVCQ-00000005jwJ-3adW;
	Tue, 18 Mar 2025 11:33:34 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVCO-00000005juy-0Ehx
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:33:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742297610;
	bh=L7qwlYAfauYv9Oy5kl1Budd59CjyofOt5FkkeL0iCgs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CJxxvWkMktEzkkm9J+8O3QMh+8xcXnrmP0rEIRbtmEdkET0NVBfg99ynlfhpC2TdF
	 7l6LxRSfqKgvNa7kO3fDfv9pYcbOMKfqI7RaZ9Mzf4utuxl4CUCjqadZ5ZJLr7VFqN
	 iecVxhoyZ2NnabSPXrBgEBzNtrIh0GJUrjUGdxpquEpk57sJ8LlzVwsGwm5Dm9P7q+
	 WfUtnt9G9InpiloqG6TpLMvoqz6N/yR/BPr7BkazhnogmtPZE5scbCwywIE713mRS1
	 qCRtCVujtK8O5nCog/ZToPMpnv7WmhLsdlkYSJ/enK+qCtv+dHGk/ylXIpIZdn6tBU
	 IwmA+W3UMfe6Q==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 9742FFC5177; Tue, 18 Mar 2025 12:33:30 +0100 (CET)
Date: Tue, 18 Mar 2025 12:33:30 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <7gm47as3wubmlxwg3o64zh2w4sgi3zwzpog5z6vuxdhctykks4@nrpltcjzdcsk>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
 <v4s2tw2pg3o7ougore4dvhuzpfqz4lgehiskaopfw5gllpyptb@2fjhiqk36mqo>
 <a3235700-b02b-4870-ba19-b401d6e36600@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n2si47zsp3iujwgc"
Content-Disposition: inline
In-Reply-To: <a3235700-b02b-4870-ba19-b401d6e36600@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_043332_239599_6BD4B336 
X-CRM114-Status: GOOD (  15.79  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] scripts/make_fit: factor dtb file name into
 configuration name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--n2si47zsp3iujwgc
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/4] scripts/make_fit: factor dtb file name into
 configuration name
MIME-Version: 1.0

Hello,

On Tue, Mar 18, 2025 at 12:27:26PM +0100, Ahmad Fatoum wrote:
> Hello Uwe,
>=20
> On 3/18/25 12:03, Uwe Kleine-K=F6nig wrote:
> > On Tue, Mar 18, 2025 at 09:25:04AM +0100, Ahmad Fatoum wrote:
> >>      fsw.end_node()
> >> -    seq =3D 0
> >>      with fsw.add_node('configurations'):
> >> -        for model, compat, files in entries:
> >> -            seq +=3D 1
> >> -            with fsw.add_node(f'conf-{seq}'):
> >> +        for dtbname, model, compat, files in entries:
> >> +            with fsw.add_node(f'conf-{dtbname}'):
> >=20
> > Funny/surprising semantic of fsw.add_node (i.e. fsw refers to the new
> > node in the with-body?)
>=20
> Yes. I suspect it's to ensure that a node end tag is inserted
> after the properties.
>=20
> >> -        entries.append([model, compat, files_seq])
> >> +        dtbname =3D os.path.basename(fname)
> >> +        ndtbs_seen =3D len(dtbs_seen)
> >> +        dtbs_seen.add(dtbname)
> >> +        if len(dtbs_seen) =3D=3D ndtbs_seen:
> >> +            raise RuntimeError(f"Duplicate file name '{dtbname}' duri=
ng FIT creation")
> >> +
> >> +        entries.append([dtbname, model, compat, files_seq])
> >=20
> > 	dtbname =3D os.path.basename(fname)
> > 	if dtbname in dtbs_seen:
> > 	    raise RuntimeError(...)
> > 	dtbs_seen.add(dtbname)
> > 	entries.append(...)
> >=20
> > looks more pythonic (to me).
>=20
> I dislike iterating twice over the dtbs. I wrote it this way,
> because I assumed calling len on the set is O(1).

I would expect that both `dtbname in dtbs_seen` and
`dtbs_seen.add(dtbname)` is O(1) (in the absense of hash collisions).

Best regards
Uwe

--n2si47zsp3iujwgc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfZWggACgkQj4D7WH0S
/k7Ewwf/e/5Bymj/OY2KSB8UxdjytuenmbiwHZLKdA2W2Sfb4sdEadgK1ptVbHyP
E6UCRbSx8ggkmbaLuWwxhDL2V7cF1G18RSdhCqjKbblT1yIibLnftS52EYdthu+4
0BF1Kum9x4KVIXbDuJoe+3qfxfeyREU53e1YkDK2Hi57xAtJ6ijP/eJQuZ7Dwaf6
/6448NXyoIUd6b26w7x+0Xigony1P/Rs8PTDZ7cyYK7azrKIoNWm662BraSElVPX
60outUAg2FKv1WsoWlyzjrqhcLeqg1hzIfRc1QmUNNhntj0A/cECyGxnHllwO7vh
IvhNp4sEGqcqwfbevJuhpfydMWdUvA==
=Je2f
-----END PGP SIGNATURE-----

--n2si47zsp3iujwgc--



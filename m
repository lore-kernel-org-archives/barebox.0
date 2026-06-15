Delivery-date: Mon, 15 Jun 2026 10:54:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ35t-0064x8-1L
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 10:54:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ35s-0005UE-LV
	for lore@pengutronix.de; Mon, 15 Jun 2026 10:54:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=UmDVKCBVf2enoylYXkgTwu+34ZRNzPHcG7mJmZnbzwk=; b=DnD3BDtjzplYedcupxcV0A/vXJ
	eYh70l8B34JE2n1w8Tq0v93Uy+kua5eCyVTcL0ikL7vY9De4TWmzYV8YrtYhcSVi5G0JcXw3wlAb2
	ijY+ibbDcgijrcTZgy8njI3hbw1MXp2aXvGqk6vp+VoaZQOuE2AxRofr0K2yORE9l5bDae4rywYM2
	6ql+HKb1lIz6TKKC81OEnfXFe5Q1xb0r+0wus8XRN/56nJY0zJbSlzXBVfDlckwXJrlxqOXpcbROy
	4brHnMik7orrGwHqkQc4hhkWwgYy6E/RhEk0Sazy7qhkbu2Fi08h2n+L4r5N8ZFe7HmSzxnEOd/Sr
	Wv8E/wMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2JG-0000000DpnS-2Ksp;
	Mon, 15 Jun 2026 08:04:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2JD-0000000Dpmr-2GMm
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 08:04:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ2JB-0001HE-Lc; Mon, 15 Jun 2026 10:04:37 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ2JB-002pPz-1z;
	Mon, 15 Jun 2026 10:04:37 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ2JB-00000006GFE-2BDA;
	Mon, 15 Jun 2026 10:04:37 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, mtr@pengutronix.de, "Ahmad Fatoum" <a.fatoum@barebox.org>
In-Reply-To: <20260610124916.2629105-1-a.fatoum@barebox.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 08:04:37 +0000
Message-Id: <E1wZ2JB-00000006GFE-2BDA@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_010439_578800_D4CC69C3 
X-CRM114-Status: GOOD (  19.75  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFT] defaultenv: boot/devboot: add a devboot boot target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-10 14:49, Ahmad Fatoum wrote:
> Executing devboot without arguments instructs it to use
> "$global.boot.default" and thus leaves no way to use devboot as default
> boot target easily.
>=20
> Address this by adding a new devboot boot target that internally uses
> ${global.boot.devboot_default} instead of the default
> ${global.boot.default}.

Have you considered using bootentry_register_provider() instead of doing
this entirely in shell? That way we might be able to configure the
devboot boot target as "devboot.system0"

Sascha

>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  Documentation/user/devboot.rst            | 11 +++++++++++
>  defaultenv/defaultenv-2-base/boot/devboot | 10 ++++++++++
>  2 files changed, 21 insertions(+)
>  create mode 100755 defaultenv/defaultenv-2-base/boot/devboot
>=20
> diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.=
rst
> index 550ab9120576..f8b2c8ec684e 100644
> --- a/Documentation/user/devboot.rst
> +++ b/Documentation/user/devboot.rst
> @@ -200,6 +200,17 @@ script is loaded. Make them persistent with:
>  ``global.hostname`` is typically derived from the device tree, but can be
>  overridden.
> =20
> +devboot boot target
> +^^^^^^^^^^^^^^^^^^^
> +
> +Using the ``devboot`` boot target, the ``devboot`` script can be set
> +as default boot target.  Example usage:
> +
> +.. code-block:: sh
> +
> +   nv boot.devboot_default=3Dsystem0
> +   nv boot.default=3Ddevboot
> +
>  Forwarding a remote build directory over the internet
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> =20
> diff --git a/defaultenv/defaultenv-2-base/boot/devboot b/defaultenv/defau=
ltenv-2-base/boot/devboot
> new file mode 100755
> index 000000000000..ec75cf2f274c
> --- /dev/null
> +++ b/defaultenv/defaultenv-2-base/boot/devboot
> @@ -0,0 +1,10 @@
> +#!/bin/sh
> +
> +if [ "${global.boot.devboot_default}" =3D "" ] ||
> +   [ "${global.boot.devboot_default}" =3D "devboot" ] ||
> +   [ "${global.boot.devboot_default}" =3D "/env/boot/devboot" ]; then
> +    echo "Set global.boot.devboot_default to your eventual boot target!"
> +    exit 1
> +fi
> +
> +devboot "${global.boot.devboot_default}"
> --=20
> 2.47.3
>=20
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



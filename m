Delivery-date: Wed, 16 Apr 2025 12:33:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u505c-001QIt-0z
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:33:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u505b-0002c7-Gy
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:33:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f5wZIV8icoSPvSyIsQGAykWGiJyDcmEyPlTl9fikKz0=; b=i2dcP2FiQS+vX7AijFnYslVSwk
	sm15zFTxcwXsLYDIQNy7UApAOWa6e+f2gEAepd4wIjcxD/ZHlZByrdE1ZCAC33Jc6ggPNMf7fkXb9
	Y7oTK7RdpT6KLcRl5xQiavzNO05+zJTHQgWclwei98huP5veK/iRPIKyDhytUw5rfpjzaK34yxh5E
	5iPhRfmRGJqw3pnaBwGkj2tkIdbR8H7jr6fRiCX492bpM/Jjk4ayWLVdjMMM01Y9jAvTdUo+xJtTZ
	WwutGgmz6Cj4/fUQOMJG2R9s0pz5f/7I3tl+L+UptlPdhv0cri/l8gGb+eUlxSstlcz6Bkg61nK6y
	3g0y5WWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5055-00000009CUh-1quj;
	Wed, 16 Apr 2025 10:33:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4zVa-000000093bU-3um4
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 09:56:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1u4zVY-0005t5-2J; Wed, 16 Apr 2025 11:56:40 +0200
Message-ID: <33b610003e4c9cf6f9517f3c24508647aa4cc501.camel@pengutronix.de>
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: ejo <ejo@pengutronix.de>
Date: Wed, 16 Apr 2025 11:56:38 +0200
In-Reply-To: <20250416093526.93723-1-a.fatoum@pengutronix.de>
References: <20250416093526.93723-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_025642_970126_473BDE80 
X-CRM114-Status: GOOD (  24.80  )
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
Subject: Re: [PATCH 1/2] Documentation: document querying of barebox version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Mittwoch, dem 16.04.2025 um 11:35 +0200 schrieb Ahmad Fatoum:
> We have a short reference to barebox-version fixup in the device tree sec=
tion
> of the manual. Expand on this by adding a proper documentation section.

Many thanks for documenting this!

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> =C2=A0Documentation/user/user-manual.rst |=C2=A0 1 +
> =C2=A0Documentation/user/versioning.rst=C2=A0 | 57 ++++++++++++++++++++++=
++++++++
> =C2=A02 files changed, 58 insertions(+)
> =C2=A0create mode 100644 Documentation/user/versioning.rst
>=20
> diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user=
-manual.rst
> index 83ba9e4c3505..b8272b2235e4 100644
> --- a/Documentation/user/user-manual.rst
> +++ b/Documentation/user/user-manual.rst
> @@ -33,6 +33,7 @@ Contents:
> =C2=A0=C2=A0=C2=A0 reset-reason
> =C2=A0=C2=A0=C2=A0 system-reset
> =C2=A0=C2=A0=C2=A0 state
> +=C2=A0=C2=A0 versioning
> =C2=A0=C2=A0=C2=A0 random
> =C2=A0=C2=A0=C2=A0 optee
> =C2=A0=C2=A0=C2=A0 debugging
> diff --git a/Documentation/user/versioning.rst b/Documentation/user/versi=
oning.rst
> new file mode 100644
> index 000000000000..0eb04158efd3
> --- /dev/null
> +++ b/Documentation/user/versioning.rst
> @@ -0,0 +1,57 @@
> +.. _versioning:
> +
> +barebox Artifact Versioning
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> +
> +In addition to the usual barebox release (e.g. ``v2025.03.0``), the
> +version number can be extended to encode integrator specific version

s/integrator specific/integration-specific/

since I hope it is more a question of the environment than the individual p=
erson =F0=9F=99=82.

> +information:
> +
> +=C2=A0 * When built from git, ``scripts/setlocalversion`` will factor in
> +=C2=A0=C2=A0=C2=A0 git revision information into the version string.
> +=C2=A0 * The ``EXTRAVERSION =3D `` in the top-level ``Makefile`` can be =
used
> +=C2=A0=C2=A0=C2=A0 to add a suffix to the version. This is useful if pat=
ches are applied
> +=C2=A0=C2=A0=C2=A0 on top of the tarball release.
> +=C2=A0 * The build host can set the ``BUILDSYSTEM_VERSION`` environment =
variable
> +=C2=A0=C2=A0=C2=A0 prior to executing ``make`` to encode a board support=
 package version.
> +=C2=A0=C2=A0=C2=A0 This is useful to encode information about built-in e=
nvironment
> +=C2=A0=C2=A0=C2=A0 and firmware.
> +
> +Query from barebox
> +^^^^^^^^^^^^^^^^^^
> +
> +When ``CONFIG_BANNER`` is enabled, the version information will be print=
ed
> +to the console. From the shell, there is the
> +:ref:`version command <command_version>` for interactive use and the
> +``global.version`` and ``global.buildsystem.version`` :ref:`magicvars`
> +for use in scripts.
> +
> +Query from OS
> +^^^^^^^^^^^^^
> +
> +The barebox version (formatted as ``barebox-$version``) can be queried
> +after boot by different means:
> +
> + * If the OS is booted with device tree, barebox will fixup a
> +=C2=A0=C2=A0 ``/chosen/barebox-version`` property into the kernel device=
 tree with
> +=C2=A0=C2=A0 the version string. Under Linux, this can be accessed at:

Not fully sure about the markup here, but this might require an empty line.

> +=C2=A0=C2=A0 * ``/sys/firmware/devicetree/base/chosen/barebox-version``
> +=C2=A0=C2=A0 * ``/proc/device-tree/base/chosen/barebox-version``
> +
> + * If the system is booted through barebox as EFI application (payload),
> +=C2=A0=C2=A0 a ``LoaderInfo`` EFI variable with the systemd vendor GUID =
will
> +=C2=A0=C2=A0 be set to the version string. Under Linux, the string is sh=
own in
> +=C2=A0=C2=A0 ``bootctl`` output
> +
> +Query without booting
> +^^^^^^^^^^^^^^^^^^^^^
> +
> +If the barebox boot medium is known, ``bareboximd`` can be used
> +to read the barebox :ref:`imd`, provided that barebox was
> +compiled with ``CONFIG_IMD=3Dy``::
> +
> +=C2=A0 linux$ bareboximd /dev/mmc2.boot0 -t release
> +=C2=A0 2025.03.0-20250403-1
> +
> +=C2=A0 barebox$ imd /dev/mmc2.boot0 -t release
> +=C2=A0 2025.03.0-20250403-1

Might CONFIG_IMD_TARGET required here, too?


Regards, Enrico

--=20
Pengutronix e.K.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Enrico J=C3=B6rns=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|
Embedded Linux Consulting & Support=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| https://www.pengutronix.de/ |
Steuerwalder Str. 21=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| Phone: +49-5121-206917-180=C2=A0=C2=A0|
31137 Hildesheim, Germany=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Fax:=C2=A0=C2=
=A0=C2=A0+49-5121-206917-9=C2=A0=C2=A0=C2=A0=C2=A0|



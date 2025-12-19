Delivery-date: Fri, 19 Dec 2025 11:03:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXL5-00DA32-1c
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:03:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXL4-0000kA-R3
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:03:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=64DFvGVknnXpyReC++ygzpQe7i6RCcqMqGUPO5lyXMM=; b=XDGQlYb7w5Ic7YlZdA6IgKeOWa
	gJwE+OA1mHAp84OobEgOmBw/TyZ+Q+marE+/pb3EqEk2+fnxRezaMzsXiBtqvwaHnDVUwNuSh52ax
	ev7QgImQlLYkdzlKL24N6Ezy7BIKiQNYp/uXQGrI+QFvASRVrKaA7gcuVoeJr4vuMK++e4Bazhvka
	TeAV4cStlAIM0yB5AhMBVBMEtJXjErwawBftQKvG8M2xZWHU6J2n9nuRPt0AgoivOr2SaYbAVfq9l
	QX4s7E5xzpcwjPyX2zCmEGglfqCD1bsu/TVsPUPPkSTvcSNUh5X+5ZuU9r6HKzxDMPpQFUpvTtGSJ
	zBKbOJww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXKa-0000000A0QR-0CJE;
	Fri, 19 Dec 2025 10:03:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXKX-0000000A0Q3-3WuO
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:03:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1vWXKU-0000e2-Qo; Fri, 19 Dec 2025 11:03:22 +0100
Message-ID: <c48ea48c64f4cd653e1f77f90377f82aa4b8c198.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>, Marco Felsch
	 <m.felsch@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Date: Fri, 19 Dec 2025 11:03:22 +0100
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v2-4-2696ac61ae2d@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
	 <20251219-v2025-11-0-topic-imx6-field-return-v2-4-2696ac61ae2d@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_020325_883606_7E14B96E 
X-CRM114-Status: GOOD (  22.23  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/4] commands: hab: extend by field_return fuse burn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Freitag, dem 19.12.2025 um 10:06 +0100 schrieb Fabian Pflug:
> Extend hab command with an additional parameter to burn the field return
> fuse.
> Since there is now a convenient way to burn the field return fuse, give
> a hint at the Kconfig option about this, as it already describes what to
> do in order to burn the fuse to make it complete.
>=20
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig |  6 +++++-
>  commands/hab.c            | 24 ++++++++++++++++++++----
>  2 files changed, 25 insertions(+), 5 deletions(-)
>=20
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 5f50d1a823..5fea0bbbca 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -926,13 +926,17 @@ config HABV4_CSF_UNLOCK_UID
>            feature. This value must match the per device UNIQUE_ID fuses.
> =20
>  	  The below example shows the expected format. The UNIQUE_ID is
> -	  queried by Linux via:
> +	  printed during boot by barebox:
> +	    i.MX___ unique ID: 7766554433221100
> +	  or it can be queried by Linux via:
>              - cat /sys/devices/soc0/serial_number
>  	      7766554433221100
> =20
>  	  So this value have to be set:
>  	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
> =20
> +	  Afterwards, the `hab -p -r` command can be used to burn the fuse.
> +
>  config HABV4_IMG_CRT_PEM
>  	string "Path to IMG certificate"
>  	default "../crts/IMG1_1_sha256_4096_65537_v3_usr_crt.pem"
> diff --git a/commands/hab.c b/commands/hab.c
> index 8ae943a4c8..1e168af4b9 100644
> --- a/commands/hab.c
> +++ b/commands/hab.c
> @@ -16,9 +16,9 @@ static int do_hab(int argc, char *argv[])
>  	char *srkhashfile =3D NULL, *srkhash =3D NULL;
>  	unsigned flags =3D 0;
>  	u8 srk[SRK_HASH_SIZE];
> -	int lockdown =3D 0, info =3D 0;
> +	int lockdown =3D 0, info =3D 0, field_return =3D 0;
> =20
> -	while ((opt =3D getopt(argc, argv, "s:fpx:li")) > 0) {
> +	while ((opt =3D getopt(argc, argv, "s:fpx:lir")) > 0) {
>  		switch (opt) {
>  		case 's':
>  			srkhashfile =3D optarg;
> @@ -38,12 +38,15 @@ static int do_hab(int argc, char *argv[])
>  		case 'i':
>  			info =3D 1;
>  			break;
> +		case 'r':
> +			field_return =3D 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
>  	}
> =20
> -	if (!info && !lockdown && !srkhashfile && !srkhash) {
> +	if (!info && !lockdown && !srkhashfile && !srkhash && !field_return) {
>  		printf("Nothing to do\n");
>  		return COMMAND_ERROR_USAGE;
>  	}
> @@ -94,7 +97,19 @@ static int do_hab(int argc, char *argv[])
>  		printf("Device successfully locked down\n");
>  	}
> =20
> -	return 0;
> +	if (field_return) {
> +		ret =3D imx_hab_field_return(flags & IMX_SRK_HASH_WRITE_PERMANENT);
> +		if (ret =3D=3D -EINVAL && IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RET=
URN))
> +			printf("Field-return burn failed, check HABV4_CSF_UNLOCK_UID!\n");
> +		else if (ret =3D=3D -EINVAL && !IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIE=
LD_RETURN))
> +			printf("Field-return burn failed because CONFIG_HABV4_CSF_UNLOCK_FIEL=
D_RETURN=3Dn\n");
> +		else if (ret)
> +			printf("Field-return burn failed\n");
> +		else
> +			printf("Field return fuse successfully burnt\n");
> +	}
> +
> +	return ret;
>  }
> =20
>  BAREBOX_CMD_HELP_START(hab)
> @@ -105,6 +120,7 @@ BAREBOX_CMD_HELP_OPT ("-x <sha256>",  "Burn Super Roo=
t Key hash from hex string"
>  BAREBOX_CMD_HELP_OPT ("-i",  "Print HAB info")
>  BAREBOX_CMD_HELP_OPT ("-f",  "Force. Write even when a key is already wr=
itten")
>  BAREBOX_CMD_HELP_OPT ("-l",  "Lockdown device. Dangerous! After executin=
g only signed images can be booted")
> +BAREBOX_CMD_HELP_OPT ("-r",  "Field Return. Dangerous! After executing s=
igned images are disabled forever.")

Not an expert on this, but IIRC after the field return fuse is blown
the ROM still accepts signed images, just all access to SoC device keys
is disabled.

Regards,
Lucas

>  BAREBOX_CMD_HELP_OPT ("-p",  "Permanent. Really burn fuses. Be careful!"=
)
>  BAREBOX_CMD_HELP_END
> =20
>=20




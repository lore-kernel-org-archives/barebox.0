Delivery-date: Mon, 11 Jul 2022 10:32:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAoqh-002Fpc-9O
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 10:32:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAoqe-0008DT-Pi
	for lore@pengutronix.de; Mon, 11 Jul 2022 10:32:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b9KxiNUb7Z/NVArV7ecF8oTWVa8Ed4fyxWeyDG6oKIM=; b=Q6iKisxnaebVR4bxcDW984gxeg
	kwA0r0S69RmBGSSX0o+Nc1RcCr3P84akdnYOweJGuEIdZG8UtACNPvmqWjIGwkTboQsAsv8Qvbo/D
	vi9N7VnpKawmQ4vOFpr7RD//gd+D8kOBAPkEnagwJ0W+IFgi7e/r7XJJd09yphgEYtWkdcWoWdXQf
	2A0bDk0dhOqZ8vNDBFHg5C9TuaNtXzZsta5KdU7z6viCGzb1ArgxSb3lE2V9cUuFy7TwXbQIuvLqs
	dP6F+qg9xW6nmAv+AeI8D8jBnHraIHOgTatEkc34/EJiQgIr/6AnfdOjyPm44FBMzKapKbytyLEzQ
	6HKl5ZJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAopP-00HEM1-RF; Mon, 11 Jul 2022 08:31:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAopI-00HEIO-QE
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 08:31:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1oAopF-00081R-MS; Mon, 11 Jul 2022 10:31:29 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oAopE-000GyJ-W3; Mon, 11 Jul 2022 10:31:28 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1oAopE-004TqM-DI; Mon, 11 Jul 2022 10:31:28 +0200
Date: Mon, 11 Jul 2022 10:31:28 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220711083128.kwazqb2wbmqqvdub@pengutronix.de>
References: <20211011073025.4187545-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cvw2ytnezb4urnfk"
Content-Disposition: inline
In-Reply-To: <20211011073025.4187545-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_013132_878799_FC5D7574 
X-CRM114-Status: GOOD (  32.66  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] devfs: Do not create overlapping partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--cvw2ytnezb4urnfk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 11, 2021 at 09:30:25AM +0200, Sascha Hauer wrote:
> Until now it has been possible to create overlapping partitions. Go away
> from that and allow to create partitions only in unallocated areas of a
> device. This lowers the risk of having inconsistent partitioning and
> increases the chance that inconsistent partitioning is recognized by
> the user.
>=20
> We had explicit overlap checking for the environment partition which
> becomes unnecessary with this change and is removed.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This is now commit 7f9f45b9bfef2ce8706f25c46dcbd109e4181164. Still some
feedback:

> ---
>  common/startup.c | 70 +-----------------------------------------------
>  fs/devfs-core.c  | 34 +++++++++++++++++++++++
>  2 files changed, 35 insertions(+), 69 deletions(-)
>=20
> diff --git a/common/startup.c b/common/startup.c
> index f72902fc53..f53b73f81a 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -68,70 +68,6 @@ static int mount_root(void)
>  fs_initcall(mount_root);
>  #endif
> =20
> -#ifdef CONFIG_ENV_HANDLING
> -static bool region_overlap(loff_t starta, loff_t lena,
> -			   loff_t startb, loff_t lenb)
> -{
> -	if (starta + lena <=3D startb)
> -		return 0;
> -	if (startb + lenb <=3D starta)
> -		return 0;
> -	return 1;
> -}
> -
> -static int check_overlap(const char *path)
> -{
> -	struct cdev *cenv, *cdisk, *cpart;
> -	const char *name;
> -
> -	name =3D devpath_to_name(path);
> -
> -	if (name =3D=3D path)
> -		/*
> -		 * no /dev/ in front, so *path is some file. No need to
> -		 * check further.
> -		 */
> -		return 0;
> -
> -	cenv =3D cdev_by_name(name);
> -	if (!cenv)
> -		return -EINVAL;
> -
> -	if (cenv->mtd)
> -		return 0;
> -
> -	cdisk =3D cenv->master;
> -
> -	if (!cdisk)
> -		return 0;
> -
> -	list_for_each_entry(cpart, &cdisk->partitions, partition_entry) {
> -		if (cpart =3D=3D cenv)
> -			continue;
> -
> -		if (region_overlap(cpart->offset, cpart->size,
> -				   cenv->offset, cenv->size))
> -			goto conflict;
> -	}
> -
> -	return 0;
> -
> -conflict:
> -	pr_err("Environment partition (0x%08llx-0x%08llx) "
> -		"overlaps with partition %s (0x%08llx-0x%08llx), not using it\n",
> -		cenv->offset, cenv->offset + cenv->size - 1,
> -		cpart->name,
> -		cpart->offset, cpart->offset + cpart->size - 1);
> -
> -	return -EINVAL;
> -}
> -#else
> -static int check_overlap(const char *path)
> -{
> -	return 0;
> -}
> -#endif
> -
>  static int load_environment(void)
>  {
>  	const char *default_environment_path;
> @@ -143,11 +79,7 @@ static int load_environment(void)
>  		defaultenv_load("/env", 0);
> =20
>  	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
> -		ret =3D check_overlap(default_environment_path);
> -		if (ret)
> -			default_environment_path_set(NULL);
> -		else
> -			envfs_load(default_environment_path, "/env", 0);
> +		envfs_load(default_environment_path, "/env", 0);
>  	} else {
>  		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
>  			pr_notice("No support for persistent environment. Using default envir=
onment\n");
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 30ad0e0508..3715e543e6 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -301,6 +301,37 @@ int devfs_remove(struct cdev *cdev)
>  	return 0;
>  }
> =20
> +static bool region_overlap(loff_t starta, loff_t lena,
> +			   loff_t startb, loff_t lenb)
> +{
> +	if (starta + lena <=3D startb)
> +		return 0;
> +	if (startb + lenb <=3D starta)
> +		return 0;
> +	return 1;
> +}
> +
> +static int check_overlap(struct cdev *cdev, const char *name, loff_t off=
set, loff_t size)
> +{
> +	struct cdev *cpart;
> +
> +	list_for_each_entry(cpart, &cdev->partitions, partition_entry) {
> +		if (region_overlap(cpart->offset, cpart->size,
> +				   offset, size))
> +			goto conflict;
> +	}
> +
> +	return 0;
> +
> +conflict:
> +	pr_err("New partition %s (0x%08llx-0x%08llx) on %s "
> +		"overlaps with partition %s (0x%08llx-0x%08llx), not creating it\n",
> +		name, offset, offset + size - 1, cpart->name,
> +		cpart->name, cpart->offset, cpart->offset + cpart->size - 1);

The first cpart->name should be cdev->name.

This warning wrongly triggers for a machine after updating 2021.07.0 ->
2022.05.0 here:

bootloader: echo $nand0.partitions
1M(barebox),1M(environment),80M@4480k(root),44672k(var)

bootloader: addpart /dev/nand0 0x260000@0x00200000(history)
nand0: __devfs_add_partition:422: offset=3D200000, size=3D260000, name=3Dna=
nd0.history
New partition nand0.history (0x00200000-0x0045ffff) on nand0 overlaps with =
partition nand0.root (0x00000000-0x04ffffff), not creating it
cannot create nand0.history: Invalid argument
addpart: Invalid argument

The problem seems to be that for mtd partitions(?) the offset is 0 while
in reality the offset of the "root" partition is 4480*1024 =3D 0x460000
(relative to the master mtd device at least).

I didn't test, but I guess

-	if (cenv->mtd)
-		return 0;

in the old check_overlap function made this problem not appear before
7f9f45b9bfef2ce8706f25c46dcbd109e4181164.

Do you have a suggestion how to best fix this?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--cvw2ytnezb4urnfk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLL39gACgkQwfwUeK3K
7AltzAf9EMy6mQN3Fchwa9uDEd/9GXI3RCJrO+K6R3xOb51g8fMBlTQ2YBh343vl
1tWaRs8EDjvFV9aG+qzAWk4Cy1srV5mDpmjEJVAdm0s1MOBXxEjSYMxvV8ZWJfHE
0WPomEm2WhwnQH1vTH/qdDmwMlUGZnVFa/lmolNKvHSbJuYeIOVpISfpe5jKqhsT
7dsJnqk+fgcYtSAxlD+sO0K96FweZZD6mr6Do768KP2MF6cMaxU24fNPh4CUx9ta
lxGCrA5dW6GA8Q1wfI5rS39z//uE7PWu/bhlf6MU1kPioM1Pf7TTgJn0VtTrpAam
46dmwb23g3jglrhJe464Yy09nwQGNQ==
=w3RG
-----END PGP SIGNATURE-----

--cvw2ytnezb4urnfk--



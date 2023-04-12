Delivery-date: Wed, 12 Apr 2023 13:33:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmYj2-0013jH-Jg
	for lore@lore.pengutronix.de; Wed, 12 Apr 2023 13:33:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmYj1-0002SO-Ic
	for lore@pengutronix.de; Wed, 12 Apr 2023 13:33:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o6Fit7T7p6Go+rffyyM2Qq7mIc5BKjB4XmqaAFnzdFI=; b=HHU/oXWMaOPbMp/hwb6kkO+oSh
	zQk3Tlmd1I1zJUYrzd2x4WMlEK8bZjla2JBW8j9adXyx70nWLw3/LSxntK8n2S+dddxvj6FerH8X9
	7BMnt6z+3WCaJvQ0c318Jobu+34Lt4myoXXHs3fZKxXQhYNmMIXeQdtXo24ryDr67tmt/jxl3VUdv
	9k7fuYiVrcbZXlmPz5NqUGkCuiD6OPxi7vvR8LN/Q35xIPEfu7CL5fDzROUMtA9h8v2rKQbsLP6C7
	cgTzAzaL654MZ9wKsBj8VUGkCFGCxwNRhr4BhY9NaBAWH7HfR4TctKU3/e/0uTUAXfkOuEhk3hWbu
	zTdO7R9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYhl-002rZY-2W;
	Wed, 12 Apr 2023 11:32:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmYfe-002pRQ-1E
	for barebox@lists.infradead.org;
	Wed, 12 Apr 2023 11:29:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pmYfb-0000oS-3m
	for barebox@lists.infradead.org; Wed, 12 Apr 2023 13:29:47 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pmYfa-00AiyT-H2
	for barebox@lists.infradead.org; Wed, 12 Apr 2023 13:29:46 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pmYfZ-00CXHs-La
	for barebox@lists.infradead.org; Wed, 12 Apr 2023 13:29:45 +0200
Date: Wed, 12 Apr 2023 13:29:45 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20230412112945.2fvnj7d7wnf7ybzv@pengutronix.de>
References: <20220714164118.56761-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qwcv7qumyglnydc4"
Content-Disposition: inline
In-Reply-To: <20220714164118.56761-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_042950_465040_BEC01460 
X-CRM114-Status: GOOD (  26.49  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] hush: Fix a memory leak in run_command()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--qwcv7qumyglnydc4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, Jul 14, 2022 at 06:41:18PM +0200, Uwe Kleine-K=F6nig wrote:
> parse_string_outer() calls initialize_context(), too. As the latter
> allocates memory make sure to only call it once.
>=20
> This fixes
>=20
> 	automount -d /mnt/foo true
> 	ls -l /mnt/foo
>=20
> dying with a failure to allocate memory. Now it results in an endless loo=
p,
> which admittedly is only a little bit better :-)
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  common/hush.c | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/common/hush.c b/common/hush.c
> index 6a089fabf11d..117b273ea4e2 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -1887,8 +1887,6 @@ int run_command(const char *cmd)
>  	struct p_context ctx =3D {};
>  	int ret;
> =20
> -	initialize_context(&ctx);
> -
>  	ret =3D parse_string_outer(&ctx, cmd, FLAG_PARSE_SEMICOLON);
>  	release_context(&ctx);

Just a heads-up, looking at 6bd5212b3d431d4fdc2a0022a06c68939b145c52: I
tried to evaluate the alternative approach, i.e.  relying in
parse_string_outer that ctx is initialized. Then a call to
initialize_context() is required in run_shell().

However dropping the initialize_context() from parse_stream_outer()
breaks things. So adding release_context(ctx); before it would be an
option.

Also shell_expand() should get a call of release_context(&ctx);

So the prototype patch with some printfs looks as follows:

diff --git a/common/hush.c b/common/hush.c
index 5138a1a45ae9..1c654b126305 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1177,6 +1177,7 @@ static void initialize_context(struct p_context *ctx)
 	ctx->pipe =3D NULL;
 	ctx->child =3D NULL;
 	ctx->list_head =3D new_pipe();
+	printf("%s:%d: ctx=3D%p, list_head=3D%p\n", __func__, __LINE__, ctx, ctx-=
>list_head);
 	ctx->pipe =3D ctx->list_head;
 	ctx->w =3D RES_NONE;
 	ctx->stack =3D NULL;
@@ -1188,6 +1189,7 @@ static void initialize_context(struct p_context *ctx)
=20
 static void release_context(struct p_context *ctx)
 {
+	printf("%s:%d: ctx=3D%p, list_head=3D%p\n", __func__, __LINE__, ctx, ctx-=
>list_head);
 #ifdef CONFIG_CMD_GETOPT
 	struct option *opt, *tmp;
=20
@@ -1701,6 +1703,8 @@ char *shell_expand(char *str)
 	free_pipe_list(ctx.list_head, 0);
 	b_free(&o);
=20
+	release_context(&ctx);
+
 	return res;
 }
=20
@@ -1714,6 +1718,13 @@ static int parse_stream_outer(struct p_context *ctx,=
 struct in_str *inp, int fla
=20
 	do {
 		ctx->type =3D flag;
+
+		/*
+		 * parse_stream_outer() is always called with an initialized
+		 * *ctx.  Before reinitializing it, release the old state to not
+		 * leak memory.
+		 */
+		release_context(ctx);
 		initialize_context(ctx);
 		update_ifs_map();
=20
@@ -1954,6 +1965,7 @@ int run_shell(void)
 	do {
 		ctrlc_handled();
 		setup_file_in_str(&input);
+		initialize_context(&ctx);
 		rcode =3D parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
 		if (rcode < -1) {
 			exit =3D 1;


Then I get in the sandbox:

	barebox@Sandbox:/ for i in 1; do echo $i; done
	initialize_context:1180: ctx=3D00007ffcde6bfb90, list_head=3D00007ff63c7df=
c90
	initialize_context:1180: ctx=3D00007ffcde6bf920, list_head=3D00007ff63c7e1=
3b0
	release_context:1192: ctx=3D00007ffcde6bf920, list_head=3D00007ff63c7e13b0
	initialize_context:1180: ctx=3D00007ffcde6bf920, list_head=3D00007ff63c7e1=
470
	1
	release_context:1192: ctx=3D00007ffcde6bf920, list_head=3D00007ff63c7e1470
	release_context:1192: ctx=3D00007ffcde6bfb90, list_head=3D00007ff63c7e0660
	initialize_context:1180: ctx=3D00007ffcde6bfb90, list_head=3D00007ff63c7e0=
660
	barebox@Sandbox:/ for i in 1; do echo $i; done
	initialize_context:1180: ctx=3D00007ffcde6bfb90, list_head=3D00007ff63c7df=
c90
	initialize_context:1180: ctx=3D00007ffcde6bf920, list_head=3D00007ff63c7df=
c30
	release_context:1192: ctx=3D00007ffcde6bf920, list_head=3D00007ff63c7dfc30
	initialize_context:1180: ctx=3D00007ffcde6bf920, list_head=3D00007ff63c7df=
c60
	1
	release_context:1192: ctx=3D00007ffcde6bf920, list_head=3D00007ff63c7dfc60
	release_context:1192: ctx=3D00007ffcde6bfb90, list_head=3D00007ff63c7e0660
	initialize_context:1180: ctx=3D00007ffcde6bfb90, list_head=3D00007ff63c7e0=
660

So there is still some inbalance, each command triggers 4x
initialize_context but only 3x release_context.

The further details are unclear to me, e.g. how and when a ctx changes
the list_head and how list_head is freed (that doesn't happen in
release_context()).

So while I think parts of the above patch are correct, I don't
understand the whole picture. The time that I planned to take looking
into this is over now. So here come just a few notes for someone (maybe
a future me) to pick it up later.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--qwcv7qumyglnydc4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmQ2ligACgkQj4D7WH0S
/k5qrQf9Flvoa3NZZ8mhgLkd3xUInjT6nXwmPVVuqjqbNJpPKBIrUcfX5C81NubH
/furslXGdbDKJlsAMA3p0I5M2kxHkTjT0ur7MUdLCvIJnAkywdvdhqAbHII3mPJ2
bkth0TCZBYxxcNCoiOPAzj7DiKw3qSOfvDu50Ri2VIjYZaFJ/ow/l+HgZoYn9bF1
8fewbdSBE5ftcnm9OipYb2gtKb4KVIfousNXBvUMKXIHVI76LwZsgEKjm7vPyqe1
I0+/MdbqPN23Ln1wDvlVtMNDxyYw4ZxEWd9WZb+sFSnN5BVGdNKUPtqWNtGLjTM0
G/l8Qf9gA8Jvu8BKra2RjYSdGk4OBw==
=IFp3
-----END PGP SIGNATURE-----

--qwcv7qumyglnydc4--



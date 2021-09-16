Delivery-date: Thu, 16 Sep 2021 12:53:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQp1j-00008K-II
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 12:53:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQp1i-0007gw-3o
	for lore@pengutronix.de; Thu, 16 Sep 2021 12:53:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9frFwq+/71D0bAZ6W1pE8XsoSisIs98t+WhyYA0eO0=; b=gt+NvnQJh1AdW5tZ69zGSK0MmQ
	0ZWJwCXrxmbKFSg9kGc5cNSoIkrQ8ocVwsY2Jh6lrP+InfnqV1vOkDSD7zmxXuFrdjEdWsi8Ql3gl
	2f+BVilLf4DT4Ns9V0tVOHSPprPpbil+Yv2UPUceabADfJk6kA1JvVaXVig7gcMZQowxQ186/DZ6I
	1/cxXVnM78RALw3wzaNWLBKgXKZhrECA7zfPCdUzmQXTougHLlPyQS4QdPRdFaLLuwPSQu491xc9K
	SrQspMvQGPECdWNVFy+JsjylXLkSRrBrSEWt+YKwaxeOy49VcCMn+RmVIBNzv/1xSlVF88R8fCJCF
	L/lnknmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQowq-00AtBU-QO; Thu, 16 Sep 2021 10:48:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQowl-00AtAG-3U
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 10:48:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQowj-00073z-6R; Thu, 16 Sep 2021 12:48:49 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQowi-0003q8-B5; Thu, 16 Sep 2021 12:48:48 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mQowi-0008Sz-9j; Thu, 16 Sep 2021 12:48:48 +0200
Date: Thu, 16 Sep 2021 12:48:48 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20210916104848.yz7lxfbxr3rvdgms@pengutronix.de>
References: <20210916093753.23433-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20210916093753.23433-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_034851_200515_AE9786D2 
X-CRM114-Status: GOOD (  36.32  )
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
Content-Type: multipart/mixed; boundary="===============7383626590363033189=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: document arm_setup_stack() pitfalls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============7383626590363033189==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fpbce6ejnz2z2b77"
Content-Disposition: inline


--fpbce6ejnz2z2b77
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 16, 2021 at 11:37:53AM +0200, Ahmad Fatoum wrote:
> Many arm32 board entry points use arm_setup_stack() to set up
> the stack from C code. This necessitates using __naked, which
> probably has been our most frequent cause of misscompiled C code.
>=20
> GCC is quite clear that:
>=20
>   Only basic asm statements can safely be included in naked functions
>   While using extended asm or a mixture of basic asm and C code may
>   appear to work, they cannot be depended upon to work reliably and
>   are not supported.
>=20
> But some boards use it anyway, because it's nice to avoid writing
> assembly. Reading generated assembly to spot compiler miscompilation
> isn't that nice though, so add some documentation, comments
> and compiler diagnostics to hopefully reduce future porting effort.
>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - fix commit message title
>=20
> Cc: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  Documentation/devel/porting.rst | 21 +++++++++++++++++++++
>  arch/arm/include/asm/common.h   | 22 ++++++++++++++++++++++
>  2 files changed, 43 insertions(+)
>=20
> diff --git a/Documentation/devel/porting.rst b/Documentation/devel/portin=
g.rst
> index 97b787327c9a..699badbec672 100644
> --- a/Documentation/devel/porting.rst
> +++ b/Documentation/devel/porting.rst
> @@ -169,6 +169,27 @@ Looking at other boards you might see some different=
 patterns:
>     needs to be done at start. If a board similar to yours does this, you=
 probably
>     want to do likewise.
> =20
> + - ``__naked``: All functions called before stack is correctly initializ=
ed must be
> +   marked with this attribute. Otherwise, function prologue and epilogue=
 may access
> +   the uninitialized stack. If the compiler for the target architecture =
doesn't
> +   support the attribute, stack must be set up in non-inline assembly:
> +   either a barebox assembly entry point or in earlier firmware.

s/either/Either/

> +   The compiler may still spill excess local C variables used in a naked=
 function
> +   to the stack before it was initialized.
> +   A naked function should thus preferably only contain inline assembly,=
 set up a
> +   stack and jump directly after to a ``noinline`` non naked function wh=
ere the
> +   stack is then normally usable.
> +
> + - ``noinline``: Compiler code inlining is oblivious to stack modificati=
on.
> +   If you want to ensure a new function has its own stack frame (e.g. af=
ter setting
> +   up the stack in a ``__naked`` function), you must jump to a ``__noret=
urn noinline``
> +   function.
> +
> + - ``arm_setup_stack``: For 32-bit ARM, ``arm_setup_stack`` initialized =
the stack

s/initialized/initializes/

> +   top when called from a naked C function, which allows to write the en=
try point
> +   directly in C. The stack pointer will be decremented before pushing v=
alues.
> +   Avoid interleaving with C-code. See ``__naked`` above for more detail=
s.
> +
>   - ``__dtb_z_my_board_start[];``: Because the PBL normally doesn't parse=
 anything out
>     of the device tree blob, boards can benefit from keeping the device t=
ree blob
>     compressed and only unpack it in barebox proper. Such LZO-compressed =
device trees
> diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
> index d03ee6273fe5..88e2991c9324 100644
> --- a/arch/arm/include/asm/common.h
> +++ b/arch/arm/include/asm/common.h
> @@ -1,6 +1,8 @@
>  #ifndef __ASM_ARM_COMMON_H
>  #define __ASM_ARM_COMMON_H
> =20
> +#include <linux/compiler.h>
> +
>  static inline unsigned long get_pc(void)
>  {
>  	unsigned long pc;
> @@ -46,8 +48,28 @@ static inline unsigned long get_sp(void)
>  	return sp;
>  }
> =20
> +extern void __compiletime_error(
> +	"arm_setup_stack() called outside of naked function. On ARM64, "
> +	"stack should be setup in non-inline assembly before branching to C ent=
ry point."
> +) __unsafe_stack_setup(void);
> +
> +/*
> + * Sets up new stack growing down from top within a naked C function.
> + * The first stack word will be top - sizeof(word).
> + *
> + * Avoid interleaving with C code as much as possible and and jump

s/and and/and/

> + * ASAP to a noinline function.
> + */
>  static inline void arm_setup_stack(unsigned long top)
>  {
> +	if (IS_ENABLED(CONFIG_CPU_V8)) {

For configs that have CONFIG_CPU_V8 and CONFIG_CPU_V7 it might be legal
to call arm_setup_stack when running on a v7 SoC. Not sure how relevant
this is though, maybe just add a comment?

> +		/*
> +		 * There are no naked functions on ARM64 and thus it's never
> +		 * safe to call arm_setup_stack().
> +		 */
> +		__unsafe_stack_setup();
> +	}
> +

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--fpbce6ejnz2z2b77
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmFDIQ0ACgkQwfwUeK3K
7AnYzwf9EaE9zQJn3yhLW1CS00c9sSr4u0TSKuWOAsZCQxmAou/Z6WY+9eTx9Y55
QhE8JLNx1XQIMJchU8TVqTcSnoACEAykpnn1cB3lsFmuz0rs2GuwNoxtdZkjdA+I
MDK4YDbnJYCtqD4diDMkeoZBv5fx19GU7QqpxarSpeUmva/DYm0/qC1xsGLNJxrk
roItOcH+FQm09bgPGmKPv2CjmaSARoVEsZa6e4ozGo/IZtb5gF2lLO9KWdZpq6Ci
MxNrrYXneJ1+hq4waTcUvom6iJDeJIJuphMvMUPfl5zPoCZN0S1AhiCFwekPQDVJ
tqowl6eI7sja8VHkJSb/IyDjdSrdSw==
=cP/P
-----END PGP SIGNATURE-----

--fpbce6ejnz2z2b77--


--===============7383626590363033189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7383626590363033189==--



Delivery-date: Thu, 10 Sep 2026 12:18:05 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4br3-000XKQ-23
	for lore@lore.pengutronix.de;
	Thu, 10 Sep 2026 12:18:05 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=X3kaUmeF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 20DBC2059AA
	for <lore@pengutronix.de>; Thu, 10 Sep 2026 12:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TsL7fmbs2Lkq55XU558zHpbEAZPK5+I1O8n4O4sJrl8=; b=X3kaUmeFXM83Ju67LdJoJtAqQv
	XkpObeFNXUBdj9t2kGWB6hpzMzY8YVZAbeuNumutdV995We4sQ3pOBtgaTcEEOZBODjhAAnEUDoSu
	dP251CZ7u1FHvOcPLBL8I7YwSnsynhd5LGFbRBqVFFcPKkUpA/aV7m4JgRoHQR2JtMhf19SGd9sTk
	gXURjh7whNlVB+TE5FO7axUa5VpM3ssxqQWaDTF6rqRQzJJkFBbyDBUZH352xWeyx/tDyt8th9axr
	LsVEBO8j6XJ2byew/XMssA8FtSRjUhGvTi2jUu1RaRlWrHz0xiqkPNHVhRWGxM9FquxzUQxSB8yty
	LtmMc7fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bqj-0000000E1pL-2AfX;
	Thu, 10 Sep 2026 10:17:45 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4bqg-0000000E1n7-1FIq
	for barebox@lists.infradead.org;
	Thu, 10 Sep 2026 10:17:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DA1A3201EB9;
	Thu, 10 Sep 2026 12:17:38 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1x4bqc-000F2z-2Z;
	Thu, 10 Sep 2026 12:17:38 +0200
Received: from uol by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1x4bqc-0000000GUrz-2uHK;
	Thu, 10 Sep 2026 12:17:38 +0200
From: =?utf-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Subject: Re: [PATCH] commands: bootm: remove -c and -s options
In-Reply-To: <20260910095337.78745-1-a.fatoum@pengutronix.de> (Ahmad Fatoum's
	message of "Thu, 10 Sep 2026 11:53:34 +0200")
References: <20260910095337.78745-1-a.fatoum@pengutronix.de>
User-Agent: mu4e 1.12.15; emacs 30.2
Date: Thu, 10 Sep 2026 12:17:38 +0200
Message-ID: <6rv78dwgu5.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_031742_502769_804FC849 
X-CRM114-Status: GOOD (  27.35  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ahmad, just a small typo. On Thu, Sep 10 2026 at 11:53
   +0200, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote: > We have inconsistencies
    about what verification level is used for FIT > images when they are used
    for both booting a [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: q81b91ihdsauabiou4a4h16emghfbmqe
X-Rspamd-Queue-Id: 20DBC2059AA
X-Spamd-Result: default: False [-57.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.oelmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Hi Ahmad,

just a small typo.

On Thu, Sep 10 2026 at 11:53 +0200, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> We have inconsistencies about what verification level is used for FIT
> images when they are used for both booting and for overlays if
> bootm -c/-s is used to raise the verification level.
>
> Properly fixing them would increase the complexity, which could
> in turn negatively impact security.
>
> I expect that any users are equally well served with
> global.bootm.verity, so drop the extra toggle.

s/global.bootm.verity/global.bootm.verify/

Best regards,
Ulrich


> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../migration-guides/migration-master.rst     | 21 +++++++++++++++++++
>  commands/bootm.c                              | 11 +---------
>  2 files changed, 22 insertions(+), 10 deletions(-)
>
> diff --git a/Documentation/migration-guides/migration-master.rst b/Docume=
ntation/migration-guides/migration-master.rst
> index d5601ac838c5..b40ea66827cb 100644
> --- a/Documentation/migration-guides/migration-master.rst
> +++ b/Documentation/migration-guides/migration-master.rst
> @@ -12,3 +12,24 @@ OP-TEE loading is now only supported
>=20=20
>  For i.MX6 boards, this can be enabled by enabling
>  ``CONFIG_FIRMWARE_IMX6_OPTEE``.
> +
> +Removal of bootm -c/-s options
> +------------------------------
> +
> +The :ref:`command_bootm` options ``-c`` and ``-s`` used to selectively
> +enable checksum/hash and signature verification, respectively.
> +
> +They have been removed in favor of the global toggle
> +:ref:`global.bootm.verify <magicvar_global_bootm_verify>`.
> +This can be restricted at build-time via setting ``CONFIG_BOOTM_FORCE_SI=
GNED_IMAGES``
> +or loosened :ref:`at runtime <use_security-policies>`
> +via setting ``SCONFIG_BOOT_UNSIGNED_IMAGES``.
> +
> +The removal is motivated by making it easier to reason about what the ac=
tive
> +verification level is, especially as there are now other uses for verifi=
ed
> +images like when :ref:`global.of.overlay.path <magicvar_global_of_overla=
y_path>`
> +points at a FIT.
> +
> +Existing users, if any, will fail-secure: The command will now exit with=
 a failure::
> +
> +  bootm: invalid option -- s
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 9ff4b218fd1f..e71c30460fb7 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
> @@ -28,7 +28,7 @@
>  #include <magicvar.h>
>  #include <asm-generic/memory_layout.h>
>=20=20
> -#define BOOTM_OPTS_COMMON "sca:e:vo:fd"
> +#define BOOTM_OPTS_COMMON "a:e:vo:fd"
>=20=20
>  #ifdef CONFIG_BOOTM_INITRD
>  #define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
> @@ -55,13 +55,6 @@ static int do_bootm(int argc, char *argv[])
>=20=20
>  	while ((opt =3D getopt(argc, argv, BOOTM_OPTS)) > 0) {
>  		switch(opt) {
> -		case 'c':
> -			if (data.verify < BOOTM_VERIFY_HASH)
> -				data.verify =3D BOOTM_VERIFY_HASH;
> -			break;
> -		case 's':
> -			data.verify =3D BOOTM_VERIFY_SIGNATURE;
> -			break;
>  #ifdef CONFIG_BOOTM_INITRD
>  		case 'L':
>  			data.initrd_address =3D simple_strtoul(optarg, NULL, 0);
> @@ -113,8 +106,6 @@ static int do_bootm(int argc, char *argv[])
>=20=20
>  BAREBOX_CMD_HELP_START(bootm)
>  BAREBOX_CMD_HELP_TEXT("Options:")
> -BAREBOX_CMD_HELP_OPT ("-c\t",  "hash check image integrity")
> -BAREBOX_CMD_HELP_OPT ("-s\t",  "check signature of image")
>  BAREBOX_CMD_HELP_OPT ("-d\t",  "dry run: check data, but do not run")
>  BAREBOX_CMD_HELP_OPT ("-f\t",  "load images even if type is undetectable=
")
>  #ifdef CONFIG_BOOTM_INITRD
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



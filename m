Delivery-date: Mon, 29 May 2023 11:07:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3Yqy-001913-9A
	for lore@lore.pengutronix.de; Mon, 29 May 2023 11:07:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3Yqv-00017x-Pl
	for lore@pengutronix.de; Mon, 29 May 2023 11:07:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CIeDWVunOGJqrzJzxPfZpxw+NjxenE6qnFAoxPd0vbg=; b=X2LUEKE9ytlWfko1erKLu1VEnE
	sG5dNQc4LX0a63GZJR92LeBvV3kPLtvVCuP2Em+ioWp1rhMSg1smGWvjVsOZ8mrgKx/mcdwBxpTvK
	7EfUsDx0loG3l1oAzp8KQYxoiH8SILMZIxnu4gTzHzwh8PfWPblenkHDxt4w8I64kd9gn+4TjvZDg
	F/le3UVwsXQNj2iwam4FWdsyXkg5y3banvBkLbYfibezTxbRdBwVFpl9OxV7F6QaJSjG/z6NfkeSr
	ERNtKMRQ4OAdl3U3YBH+xk3oWKwkdyNzzXWql95Fqbh0Uu5DNS3kr8IcT6m7J1GMgKxhe6QCXBuBI
	70c6cIjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Ypt-009nUV-03;
	Mon, 29 May 2023 09:06:41 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Ypo-009nTg-34
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 09:06:38 +0000
X-GND-Sasl: jmaselbas@zdiv.net
X-GND-Sasl: jmaselbas@zdiv.net
Received: by mail.gandi.net (Postfix) with ESMTPSA id DA5E7C0004;
	Mon, 29 May 2023 09:06:29 +0000 (UTC)
Date: Mon, 29 May 2023 11:06:24 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org
Message-ID: <ZHRrEFarvSLes3Zd@tour>
References: <20230529001318.12309-1-marc@cpdesign.com.au>
 <20230529001318.12309-3-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230529001318.12309-3-marc@cpdesign.com.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_020637_161075_317A08AE 
X-CRM114-Status: GOOD (  19.83  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/3] commands: pwm: add pwm_get command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Marc,

I have some minor remarks/suggestions, see below

On Mon, May 29, 2023 at 10:13:17AM +1000, Marc Reilly wrote:
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  commands/Kconfig |  7 ++++++
>  commands/pwm.c   | 57 ++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 64 insertions(+)
>=20
> diff --git a/commands/Kconfig b/commands/Kconfig
> index cc7585bbb2..f2a6d22f69 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1940,6 +1940,13 @@ config CMD_PWM
> =20
>  	  Controls the pwm values such as period and duty cycle
> =20
> +
> +	  pwm_get - get pwm state
> +
> +	  Usage: pwm_get [d]
> +
> +	  Displays the pwm values such as period and duty cycle
> +
>  config CMD_LED
>  	bool
>  	depends on LED
> diff --git a/commands/pwm.c b/commands/pwm.c
> index a21b918c89..d344f7e1ec 100644
> --- a/commands/pwm.c
> +++ b/commands/pwm.c
> @@ -141,3 +141,60 @@ BAREBOX_CMD_START(pwm_set)
>  	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>  	BAREBOX_CMD_HELP(cmd_pwm_set_help)
>  BAREBOX_CMD_END
> +
> +#define HZ_FROM_NANOSECONDS(x) (1000000000UL/(x))
> +
> +static int do_pwm_get(int argc, char *argv[])
> +{
> +	struct pwm_device *pwm =3D NULL;
> +	struct pwm_state state;
> +	int error =3D 0;
> +	char *devname =3D NULL;
> +	int opt;
> +
> +	while ((opt =3D getopt(argc, argv, "d:")) > 0) {
> +		switch (opt) {
> +		case 'd':
> +			devname =3D optarg;
> +			break;
> +		}
> +	}
> +
> +	if (!devname) {
> +		printf(" need to specify a device\n");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	pwm =3D pwm_request(devname);
> +	if (!pwm) {
> +		printf(" pwm device %s not found\n", devname);
> +		return -ENODEV;
> +	}
> +
> +	pwm_get_state(pwm, &state);
> +
> +	printf(" pwm params for '%s':\n=13", devname);
typo: You have inserted a control S (^S) character at the of the string

> +	printf("  period_ns: %u (ns)\n", state.period_ns);
> +	printf("  duty_ns  : %u (ns)\n", state.duty_ns);
nitpicking: maybe you can remove the _ns suffix when priting period/duty,
it is already added in parenthesis.

> +	printf("  enabled  : %d\n", state.p_enable);
> +	printf("  polarity : %s\n", state.polarity =3D=3D 0 ? "Normal" : "Inver=
ted");
> +	printf("  freq     : %lu (Hz)\n", HZ_FROM_NANOSECONDS(state.period_ns));
> +
> +	pwm_free(pwm);
> +	return error;
nit: error is not used, you can remove the variable and directly return 0

> +}
> +
> +BAREBOX_CMD_HELP_START(pwm_get)
> +BAREBOX_CMD_HELP_TEXT("Gets a pwm device parameters.")
> +BAREBOX_CMD_HELP_TEXT(" Specify the device by device name")
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT("-d string", "device name (eg 'pwm0')")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(pwm_get)
> +	.cmd		=3D do_pwm_get,
> +	BAREBOX_CMD_DESC("get pwm")
> +	BAREBOX_CMD_OPTS("[-d]")
> +	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
> +	BAREBOX_CMD_HELP(cmd_pwm_get_help)
> +BAREBOX_CMD_END
> --=20
> 2.35.3
>=20
>=20



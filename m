Delivery-date: Fri, 02 Jun 2023 10:21:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q502G-0072kj-3j
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 10:21:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q502D-0006cH-CF
	for lore@pengutronix.de; Fri, 02 Jun 2023 10:21:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g3xrKTdKlBKikMqVIdsx7P2hPRTMSP3yZ1lg864zzfw=; b=1UZm2ybbpJ+tJBFeSQtk9Na4yX
	VIz+dmDnoqXnIWrmZGHe/S1Va3WgbHqCjUk/I86bMWzJ9KkfqWMMfA8MDNETUQkQ50CJI+Q/f1G16
	0wrEyp2Qju3/jr0LGpd4VB2kQ2Df/jtPvzrcuh2xjSLiLlm49zVHQDQjqWifl6kzvL19OVmknNSMW
	WdTLkWgrnwCnhuhWrnz2MZjkvp5Y0IMT+gRQxbZzXVEZ36qznQWah4krxl49TMFWwavWbFI3k8feM
	em/N/OJ1to5xNp0Uoxfwhq993jCcX8RaxK30k3/2cO+EnH2VCQ4fefZ+5xSMguGv/3I3DWOwaW8P0
	DedzFKmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5011-0067rH-2F;
	Fri, 02 Jun 2023 08:20:07 +0000
Received: from smtpout30.security-mail.net ([85.31.212.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q500x-0067qW-2L
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 08:20:05 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx304.security-mail.net (Postfix) with ESMTP id 8C3739CFEE
	for <barebox@lists.infradead.org>; Fri,  2 Jun 2023 10:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1685693491;
	bh=vgaWKVRZ1IcdcRXrdN3f6nzVZFOc0AOjBEuTTkOp8oE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=5voMvUyLlKb8tOO6GeDglJJU4sAUB4l9m3MUSuM6S6ZsXlkCme71jLhWdlEs/xmSs
	 3TCOjtZdqa8Wm0p+yD7RqwitDF50HhDz0dqzsUoC8wWstdJVjMv8Hd4rX/Rs02i/gj
	 Z2GfUWJOxJmwTA/ocNJ1m/9IRxE4d2DZjJoLCl7c=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 7084B9CF9B; Fri,  2 Jun 2023 10:11:31 +0200 (CEST)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on0109.outbound.protection.outlook.com [104.47.25.109]) by
 fx304.security-mail.net (Postfix) with ESMTPS id E753C9CF99; Fri,  2 Jun
 2023 10:11:30 +0200 (CEST)
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23) by PAYP264MB3454.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:124::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Fri, 2 Jun
 2023 08:11:29 +0000
Received: from PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::ad0c:d0de:7537:3461]) by PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 ([fe80::ad0c:d0de:7537:3461%5]) with mapi id 15.20.6455.024; Fri, 2 Jun 2023
 08:11:29 +0000
X-Virus-Scanned: E-securemail
Secumail-id: <353e.6479a432.e67a0.0>
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TgJqvjjntd64pWNOwxS3D+lej74ZtEndhMLQ3SjCXFcmlX1YP6CxgPa0FJ+S5InuGH/QM0KoXm7ojKrGs2o9OsJ8myEBa4gQh1KrknC7MelTvmwTcRIZjx9m/y6j+5OrMc3CvhreehcmP9vENRpMaFNqNerVR0JZvdgDDnuI+RNHjslJ3JPSXbJBb1bM//lvWJNCpiKgRUCA3cnSujXJ8hQKWwvLwkIuu5dsyymlCgX6aJ6GkjZf77ai7Pb4WOpAD7E+XpeYmQxF5OP0xHW97se7QMK5PBp6Hhfs3Dg+ZWBKSTHn/BvZh9CxjieleZFMMcU3P8YWH7g4UtW3LXOp9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microsoft.com; s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g3xrKTdKlBKikMqVIdsx7P2hPRTMSP3yZ1lg864zzfw=;
 b=mLp6JzQNMVZBAAW3rf6XrTECfoxZ1JFV8Ofq7mbQcMP94bN9f6jX12Vr/yZ6piTMHFuOkZBaevMt51LmsYxfg0si7WPxqV+JuN5yAqh6NuJp+GSmyS89QYHrBe7NuwnkJfAmZxUfxb8SG7zVtcOV5qIxazv/POKBh4vV2Jk18QeHWRcdCw5AeagQjDkGUTlg8pFUjFyuYvnj+SSVOpJ8+8erOZ4YSAMoKZSfxLjea4QegifSvozr3tVoNk6kd4PWtThR7FMsvOaI6kem6725RMnzieYdTCePPIJD0p5pARMTxwLCKFIoVeu2Hztj5ARpwfxIcZZOmfhJfNT9cKm0rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kalrayinc.com; dmarc=pass action=none header.from=kalray.eu;
 dkim=pass header.d=kalray.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g3xrKTdKlBKikMqVIdsx7P2hPRTMSP3yZ1lg864zzfw=;
 b=uTdDCJ4rXBfm4nY6cZDe81J1V6dpb3JsS0ZT8YCXTbor9yDH0h2BAvAmDc83/vSX4X7lwKzvo+5nCwJKbaWF8G1KH6HVbpk4gpc47tqzGGdznbKK3kk+K73j7dVapO/zQPZKSlUqazbjzBH75hP9uSMeiY61eRBkd42WfTZzBdlPxRnwszgXdgmYTYr0FaIKcYj/TA0b/YdAmgxy6vZX46XXqUc7x5PhXxDYywBekXAdF5wGJviyx9O8c2tZ+S2NeDkIuOvhEmXyLQLnAOJggJzesy/y4E6PpUmB125xqe5sURRKmb8IzX+fzAoK1XJPvGjz9tuh6JM5slOwHdw6ww==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kalray.eu;
Date: Fri, 2 Jun 2023 10:11:17 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZHmkJeexhHCQ0JP0@tellis.lin.mbt.kalray.eu>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-11-m.felsch@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <20230602074921.2687669-11-m.felsch@pengutronix.de>
X-ClientProxiedBy: LO4P123CA0544.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:319::9) To PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1f2::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAZP264MB3119:EE_|PAYP264MB3454:EE_
X-MS-Office365-Filtering-Correlation-Id: baad7225-a079-4c2d-ecbe-08db6340f849
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nro8dW/sujbQaYT8sNmRH70W3vCfRBTpxZeagxWKRbBGkFrwYOZeyZvYT9mBT01vKA8mCYbL7O1g43R4aBnmQcg8d6ozoL/2Kd1g9+q4UiqvM1cb659isJZwWxNYusC43Jv8HpHpsj2Ama/+HAxcdxoraVMzF7EI4n+/E84ZGyb+9iDVtacXZHgTcBl+OXZcY6OVoMPSUl/wpnTlgEoTqbS/HUP62Y4VOC/3spF8wEn4ZjRhpm08RrS1zUGaWZPhZchvKxT9EGCGxD3LLrw3BMUo3uKFMDLPakjAsdKh5Gnljb6mBmYRk6PwFCZzdrMGyc3RabfJSyW4xVralyzQS4WmaxKsF/Y11soEIAWu4KC54r3iSBRaoxQsb7MxyxUd7qMtLfi7U2IEGEGyEJDV2RSg9ReCgT2bo/iGwHqlIg7UYXV+FKsCSPoZ2hrKkgc8Mg26+muVlfhdp7QCHTl2Z/Vhe0Bw+cUsceL+fysjwHE7jqCfx39UBvBeYbWPA8ZWxcqJs+7UthFlmsoIZR4fMnobJY4TY4rjc53GYxAYIYyK5re/62JtT0RS1CwcHrKY
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199021)(8676002)(478600001)(42882007)(6506007)(26005)(186003)(6512007)(6666004)(6486002)(2906002)(41300700001)(83380400001)(316002)(8936002)(5660300002)(66556008)(66946007)(6916009)(66476007)(4326008)(38100700002)(83170400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: QFDgb2JBR6gb1K/9PtgDlDWoXwk+CLzQnHxD0y8GxWqae1tnDU993b9omn7LfzcD68le8wKM8EpYU8Kfl/QcLbHDrN5Lr/6GuC0wm9M+QRyqAWH4yZsFCZVg2JSr4KjDpB//LtRi06d9d+IDNnN9/kYIkP4NNHX4YNXijWvWazWzC2wtivRzAJu8kj6NYiOJwPBNWCQwi6rZb9J+hEefc9uIXbK9iQWaMesBEHkIbByraQ9I0n7MphaArMOJ7HGTM5/oS04dQ8kjUt6s12+aoLwRSfluOuWFk64JJjcGCcFerl71mL/f2nfyRbrrnumzXnn+RNbBm4eZMVIFOaoboEP4Dwc1zC8whULbWOEUEp7IuVxVGody/U3W7AlHvngMhg/bbee3P2OzDqce99UqXMsyg/Nrm10PDdUCJrmVeZSQ3zI7q3uhSz94dLmP4deUOet/rvCangV/R0riGrtJNesry2P3qEjHc7UNnEm/RI3ecUhOmV3VaAF0WhwKeMKgBARE2XM0Ta8A7dZW+DTUD7PhGjX/yXg+e64peaoGro7wepFufs5rp9mU1KIS2h4SVBhEnlMKRr0yBdtkPQnj2/+G1nBGbBPBZpnFr9cuF4b9mPj5u7+mE06YzdIyqXoIHiZxm2J+yb0qnKDNIoAHUpJVrGbgaGDgymCQLEfDjRGMYYFK0w1xPuc7ubxrnzMmYCtjQLhIHLUUXTdiRM7auHuO83Bo02ZvS7QMMCceZkdc9KEeyQZMfQpWr4+ltlZCYNSGen1cNPrC1u8VB8ARvquvmbmaazJ+osbHmQX3AYZv+FrUpjmbCpU+SgjoJaVsy0/Qs59LYA0vLJP45GoViSMKQ7hTAHSENzUyJyRvjugrlSqd36i6cu3xAdzhba1pBorm7MSzhwsQzc1v601yIjtvsjpqpMZIfvtwCThcR8zdkAp/YnI4+4fUQ+Hq6Edl
 5ruUmRqWwiUGVMzyppKl6j+yp+lQvw01xn7fFabsFHxdEgAd8zZXb/PFsgy4RpR8LBTVFIn5G3YLNMKfKgHuicvzBPCXebJFTtoWCG3jm49185kYprsLjPnpPByTrJhqcINX/H1E2hymScQYsl0YuSvLie3I8zuedvAhWvy2XcFu1v/4ximX2UZg3PZRAhqDvHzaDjZ8pirECd6iidOFGF8l7Z7ncHX7ArBHk6S0Ke6kPSHNaPMptgQ6a4AOZifnsRVrz0aKNtluh/yWV4TtoAb9UdKC2/FmOXxcnqQBX7eT+F551CzahGmIOBrijHPqinqEy7jtmJvWM9SdiCsaFw6XiKkYfkAe5Y7ftqn3zQKFwPXavMMcp21/L0L0OTAcjoMs8N91VxastbpxeywPqNR4XlSCuBaUM6Fv13NzNbER79zFj/SVKCCAu4tB5McZe1bsCWAdNf0iX1OPA1rVURbA7EkIxH4Qhwpm3RIb+GZNy5tf+NPkUVvgImP0bn9kVPX/mv4xIu+uuwzb6bHysVy0zSf0uGXjmZug82P1BUD+okhlqI9WwxoazWPKI7JLE5gZlANBP4LPVbEawzvGG81imuVbv108/5OcYcCgRiyewk1Y+hUg2nuap0fns5dxp1mwA1tY7WGFm7uY5+OCrA==
X-OriginatorOrg: kalray.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: baad7225-a079-4c2d-ecbe-08db6340f849
X-MS-Exchange-CrossTenant-AuthSource: PAZP264MB3119.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 08:11:29.8462
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8931925d-7620-4a64-b7fe-20afd86363d3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9WkzLM+1QHTa4NZ4EA+y9VSMYzDhbapVRgj59uvRDcpHaWteQU68yHkNu8TAmUUaY0OdDyOmtw0Q7Ka4gjQZiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAYP264MB3454
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_012003_904090_8693751E 
X-CRM114-Status: GOOD (  26.46  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 10/10] gpiolib: add of_xlate support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Marco,

On Fri, Jun 02, 2023 at 09:49:21AM +0200, Marco Felsch wrote:
> The of_xlate function can be used to by drivers which need a other gpio
> encoding than:
> 
>   gpio = <&phandle gpio-nr gpio-flags>;
> 
> The of_xlate code is as close as possible to the kernel counter part
> which makes it easier to add 'struct gpio_desc' support later on.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/gpio/gpiolib.c | 51 ++++++++++++++++++++++++++++++++++++++
>  drivers/of/of_gpio.c   | 56 +++++++++++++++++++++++++++++++++---------
>  include/gpio.h         | 25 +++++++++++++++++++
>  3 files changed, 120 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index d1087aa583..ab9a0e30be 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -592,6 +592,43 @@ static int of_gpiochip_set_names(struct gpio_chip *chip)
>  	return 0;
>  }
>  
> +/**
> + * of_gpio_simple_xlate - translate gpiospec to the GPIO number and flags
> + * @gc:		pointer to the gpio_chip structure
> + * @gpiospec:	GPIO specifier as found in the device tree
> + * @flags:	a flags pointer to fill in
> + *
> + * This is simple translation function, suitable for the most 1:1 mapped
> + * GPIO chips. This function performs only one sanity check: whether GPIO
> + * is less than ngpios (that is specified in the gpio_chip).
> + */
> +static int of_gpio_simple_xlate(struct gpio_chip *gc,
> +				const struct of_phandle_args *gpiospec,
> +				u32 *flags)
> +{
> +	/*
> +	 * We're discouraging gpio_cells < 2, since that way you'll have to
> +	 * write your own xlate function (that will have to retrieve the GPIO
> +	 * number and the flags from a single gpio cell -- this is possible,
> +	 * but not recommended).
> +	 */
> +	if (gc->of_gpio_n_cells < 2) {
> +		WARN_ON(1);
> +		return -EINVAL;
> +	}
> +
> +	if (WARN_ON(gpiospec->args_count < gc->of_gpio_n_cells))
> +		return -EINVAL;
> +
> +	if (gpiospec->args[0] >= gc->ngpio)
> +		return -EINVAL;
> +
> +	if (flags)
> +		*flags = gpiospec->args[1];
> +
> +	return gc->base + gpiospec->args[0];
> +}
> +
>  static int of_gpiochip_add(struct gpio_chip *chip)
>  {
>  	struct device_node *np;
> @@ -601,6 +638,20 @@ static int of_gpiochip_add(struct gpio_chip *chip)
>  	if (!np)
>  		return 0;
>  
> +	if (!chip->ops->of_xlate)
> +		chip->ops->of_xlate = of_gpio_simple_xlate;
> +
> +	/*
> +	 * Seperate check since the 'struct gpio_ops' is alawys the same for
typos: s/Seperate/Separate/  and s/alawys/always/

> +	 * every 'struct gpio_chip' of the same instance (e.g. 'struct
> +	 * imx_gpio_chip').
> +	 */
> +	if (chip->ops->of_xlate == of_gpio_simple_xlate)
> +		chip->of_gpio_n_cells = 2;
> +
> +	if (chip->of_gpio_n_cells > MAX_PHANDLE_ARGS)
> +		return -EINVAL;
> +
>  	ret = of_gpiochip_set_names(chip);
>  	if (ret)
>  		return ret;

Thanks :)







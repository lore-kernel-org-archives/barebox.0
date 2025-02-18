Delivery-date: Tue, 18 Feb 2025 06:25:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkG6o-003mYS-0m
	for lore@lore.pengutronix.de;
	Tue, 18 Feb 2025 06:25:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkG6n-0000z0-22
	for lore@pengutronix.de; Tue, 18 Feb 2025 06:25:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=77hd5k3XJd6ftbqvlKJqIC1/+NTFcevW7tTlYSXJq9Y=; b=M5Xmk7MbZMAi636GEHW72g7WoO
	T73dm8TTi1A9Nr9HKCLjoZerKPpIbZF69FE9RcCZ1/zkXG9cryJ4B+2gikcoBLYpVKUYX1j3Vh1Wp
	UFGJo1pxCBJjt7X9QBXMYKiIKDIywwRhdCV3Jr7fjl6v8jXxK1yp1T2km0xajR5PhRTXY7sV+bNOz
	L3gjyNaLD1GbqRHq2hc+phEbhHrDq3cskqPbuGcNs6/er0Dul2bIWlwoC9Scx+Q6cpWjWCDVL/rRB
	5b7Gq48mOkmeVIeOa54rzhRy+wzNJtF5oTCmDQtOV/QdtOlMdIz+ZGt+YQauljWGJNurlnrZIJOas
	pFOuQQwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkG5v-00000006qR9-3JAb;
	Tue, 18 Feb 2025 05:24:31 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkG0J-00000006pek-2m9l
	for barebox@lists.infradead.org;
	Tue, 18 Feb 2025 05:18:44 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-22128b7d587so31852605ad.3
        for <barebox@lists.infradead.org>; Mon, 17 Feb 2025 21:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739855923; x=1740460723; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=77hd5k3XJd6ftbqvlKJqIC1/+NTFcevW7tTlYSXJq9Y=;
        b=Y4bz0Dbuwg3JMFDmKBFo9xlg2BVFiytAcF0uSyi7vobwB7LXPQ2XQLzT21vCCd5M+1
         6ObKAbUIqIprrGh3NWC9X949NcFDaTOjAFyHFQ5WrEhpBrcnyV/fCTWff4umgsmf4wUI
         IZFmqAtQ5B+15mHZY1E50WJYEIcM4wA7OS9sAxOgh97I0w+59tpk7oeaHSkI2KRY7J2W
         gji/sCGslxLUFtjuAbMDbUfWmKAvrq1nOpyRldMAbo4Usl3gvNonrGVTzY63nhBy3NuA
         LG8V3UMAfHUCT7qZr4pnVrfDwcjOhEgAbdP36TqjNitv5puA04tksxf1wO+nmbnERHdx
         ZDNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739855923; x=1740460723;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=77hd5k3XJd6ftbqvlKJqIC1/+NTFcevW7tTlYSXJq9Y=;
        b=S8kAmgZpJUwOM4JwHMHfPwR+oYImz6TChMYOf/R2jMiuHRtG/OJTqXT0Z+vJSENR3P
         Mc3zey6qPqsUZEixGGkmzAu8iszCc1w38zTuCfYldJ5bjltBA8b5x/RrhukqJn0j9VL6
         bow4BHmNUT0vdhbiMCI9SkPDRSN/G9obDLzt0n+C0h2DMjz0zm3ZKyOK89nKRUrFRbmn
         ekp4OoiiDiexQZeMZJ7K/klv7/t2xp2EFaf5q9AzSpxRa/m0r/3S4+zgo8kNss/Cqnzp
         mCkG6MaBMyFfLBJjWRLSK3TdUzSD2WY5codiJTkdyEY3jZRRrCLuCY5vCdmntLqG8GId
         RjSg==
X-Gm-Message-State: AOJu0YyYjMEJBBYAXDoECn2G0+zFi6MjDfRHYyoh+o1BkZaEnQIjbfZY
	1UKnHaIey+20IXundxrVHf9DylXjIvWXMx0Dno1Q49i8cTGi7TC65w6E7wNeznG6wmb+L1S1Ls1
	5gIZNbM+sYiCozmKO+Xb3UB5uStg=
X-Gm-Gg: ASbGncsTBhrMD5EdlcBxTG/sZz4RddOmJ21nLfwWIHxYqd5PsAm1Jnp+/UM91GAncrC
	MlODlzWJBnm89pj04qRThle1kYM4abrqln3kHtDXY5PomvjB9ywY42VpEy32fLfMAgV2XyapI
X-Google-Smtp-Source: AGHT+IGShbLatl6JbZhJlu12jX2S+Zi4f4uosJRkhc/ON/Pm/fmcU+HZdBQgFpRloXcQ7suP5FJZpXHmjZU+tSxqQwY=
X-Received: by 2002:a17:902:d48b:b0:21f:4649:fd49 with SMTP id
 d9443c01a7336-221040c0a58mr176894325ad.49.1739855921056; Mon, 17 Feb 2025
 21:18:41 -0800 (PST)
MIME-Version: 1.0
References: <20250217110548.1695938-1-s.hauer@pengutronix.de>
In-Reply-To: <20250217110548.1695938-1-s.hauer@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 18 Feb 2025 08:18:29 +0300
X-Gm-Features: AWEUYZkRe5zTsB8rslZEFSaC5xu-7acHNYl5P_Su8e6XHAu99pKvZhDe0bcP9sQ
Message-ID: <CAP1tNvTY53UDtd4gzkeQkiZxnh-hsvcpAd=RaiLKm_FWBXJ+_Q@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_211843_702323_B1D5F90F 
X-CRM114-Status: GOOD (  14.38  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: Fix DRIVER_NET_TI_DAVINCI_MDIO dependency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Thanks, Sascha!

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D0=BF=D0=BD, 17 =D1=84=D0=B5=D0=B2=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 14:0=
5, Sascha Hauer <s.hauer@pengutronix.de>:
>
> The davinci-mdio driver was factored out from DRIVER_NET_CPSW which
> depends on ARCH_OMAP, so DRIVER_NET_TI_DAVINCI_MDIO should depend
> on the same symbol, not ARCH_OMAP3.
>
> Fixes: f703666dd1 ("net: davinci_mdio: separate driver")
> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 0e78579250..5c436a05cc 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -58,7 +58,7 @@ config DRIVER_NET_CPSW
>
>  config DRIVER_NET_TI_DAVINCI_MDIO
>         bool "TI Davinci MDIO driver"
> -       depends on ARCH_OMAP3 || ARCH_K3 || COMPILE_TEST
> +       depends on ARCH_OMAP || ARCH_K3 || COMPILE_TEST
>
>  config DRIVER_NET_DAVINCI_EMAC
>         bool "TI Davinci/OMAP EMAC ethernet driver"
> --
> 2.39.5
>



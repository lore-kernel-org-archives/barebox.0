Delivery-date: Tue, 17 Dec 2024 15:45:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNYpM-009Gce-2w
	for lore@lore.pengutronix.de;
	Tue, 17 Dec 2024 15:45:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNYpM-0001aV-Qf
	for lore@pengutronix.de; Tue, 17 Dec 2024 15:45:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=saGvjClBGvtC/hdXF62MIx0+GfHIR0up0JiZmhl2k64=; b=QnBO1zhppJ4sHRvhIZFuJas1Tt
	rbV3tvmjLErStkmPhWBjgj3UWEWlCjse4ONBc0/7UCnnFvK6+wGg3j2dGeq4tsnL2fbEWwPPmTcmD
	NatWWi0d5hUuMff7HivJpo2PHoGgFgxlhl3MPlKsPkEg8OPrSUTTh2fOVyJzKRhNPK6vcSBFpQE5M
	pDhcNSXH4PvaiSKNXFkQ92HC9PzLjLaF7wVEpUoh61hUy4crLvNmDZlOdeLvTa1Llprk19Ej9Xfpj
	2LKjvArIxJQ4LSnCbtRNrlZsNNxEChxEvVfPBrCH40o1M4FFFPb4LCD62Fc+zqtaNy1n6ANMH4bnX
	3lWxXdWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNYop-0000000DoVO-23qI;
	Tue, 17 Dec 2024 14:45:03 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNYon-0000000DoUX-0FE9
	for barebox@lists.infradead.org;
	Tue, 17 Dec 2024 14:45:02 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2ee51c5f000so3755293a91.0
        for <barebox@lists.infradead.org>; Tue, 17 Dec 2024 06:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734446700; x=1735051500; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=saGvjClBGvtC/hdXF62MIx0+GfHIR0up0JiZmhl2k64=;
        b=Zk1ojlVl54UYS/pioUz2W6WRbjB8hmkaB7nmhXEAG+AEvwwSnsFZBeaOb/BVhOjumS
         R/NA1g8GAFDQp6Xqc5VHyI6gbYc58NkzK9Gjb6FcOakEbXMvrLFaRo5e7yYfIiGvFinm
         qvIwCfWgY7bNMJXfcL7JuG3SnrVVpwxLDjTNpqpTQKWQ+1UlUzdFyqriilfhtebAIB6c
         ElNNxbwx5mhqrZTM/3L6Bq7Gg7i80E997EiIPTsVBQa4r0/PxPKU1oeJBav8gjFfC5F+
         u4Iof70zR1m3plunPVjgXXMSgQbffIVuog3GFQklVHtWzYuqFwMEdLX9td2i4c79gxCv
         ZV0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734446700; x=1735051500;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=saGvjClBGvtC/hdXF62MIx0+GfHIR0up0JiZmhl2k64=;
        b=fUq0UWmNLfWDqarCzaC5kjaPuJH+P8SJfQxZvCvCQ2WA/Z5fPRjVj9fJdQJUe+loxj
         +NTjvuBxXtxMdqm+SUSMlCbYb4YTRfCHiGtw+jJxm/E60eZ8kbfnqw3SV910f3eBU8/9
         nbFy5L0GWu9rXAT4UCH59SrOalmfUk8H5jhuvbF/LHU+DrXeC3BdThtdgla33xhc5Iy9
         ikBwZv/VUpAwIvcoUP0aURi2YgI6k6ggQJsNkdWCn2RUhaRTDLNPCKF679j2L7PQCF1n
         rpe3vSJkvovuok96kH3sqD9U8aJVIuPRrzSf7NWKp5InNM6AdZ1GFIbdszLgr/tSGw2q
         NtWw==
X-Gm-Message-State: AOJu0Yx5Uzy3J91fe+IJ5QxpNhHgI8NooNaieeXcXmJ5t5aVcVpP5+TF
	y7b2irh175ctbhzHU4bnW+Pf7xsuA02wEAx50aDR2nXqAejRWXBJNBsXL7T0UuB7zFpEkUII8II
	ZwiRasMNxxGVAic0rv/+bXhjPo0Kfjj4J5sI=
X-Gm-Gg: ASbGncspYqX4cVkmGNdkQs32idhBUL0zHPCzJ5uAIYKOkwDhCAdlqL5MitqJWLJCCCw
	0KhnJ3sTu/YCqySFlnSLYenOI0970ptGXTatpgkg=
X-Google-Smtp-Source: AGHT+IE+azzcUt1CpIMfHWkzme2ibTraSX3U4y8K4ms07hTGz1xoXA5UcWFvolsjof3NGowVzSgHfi11DnQtCq5KwiU=
X-Received: by 2002:a17:90b:280e:b0:2ee:45fd:34ee with SMTP id
 98e67ed59e1d1-2f2d7f9da28mr5226493a91.37.1734446699650; Tue, 17 Dec 2024
 06:44:59 -0800 (PST)
MIME-Version: 1.0
References: <20241217140833.3693113-1-a.fatoum@pengutronix.de>
In-Reply-To: <20241217140833.3693113-1-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 17 Dec 2024 17:44:48 +0300
Message-ID: <CAP1tNvSADf_2cpY=mEWKTMfBbvJ5dFq58Ax=VVEn7frdv5VCvQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_064501_099093_E9F60934 
X-CRM114-Status: GOOD (  17.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] video: dw-hdmi: fix I2C controller probe breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Thanks!

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D0=B2=D1=82, 17 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 17:08, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> The dw-hdmi I2C controller binding doesn't support listing I2C slaves
> as child nodes in the device tree. This is fine as the EDID I2C address
> is well-known, but trying to parse the dw-hdmi device tree node as if it
> were a normal I2C controller will fail:
>
>   ERROR: i2c11: of_i2c: invalid reg on /hdmi@fe0a0000/ports
>
> Fix this by only use the device tree node to find the alias if any and
> not passing it alone to the I2C core.
>
> Fixes: 474b6cb42ea5 ("video: dw-hdmi: populate missing I2C adapter device=
 node")
> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/dw-hdmi.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/video/dw-hdmi.c b/drivers/video/dw-hdmi.c
> index cd5de17e9bd7..b86f3c7366c1 100644
> --- a/drivers/video/dw-hdmi.c
> +++ b/drivers/video/dw-hdmi.c
> @@ -433,9 +433,15 @@ static struct i2c_adapter *dw_hdmi_i2c_adapter(struc=
t dw_hdmi *hdmi)
>
>         adap =3D &i2c->adap;
>         adap->dev.parent =3D hdmi->dev;
> -       adap->dev.of_node =3D hdmi->dev->of_node;
>         adap->master_xfer =3D dw_hdmi_i2c_xfer;
> -       adap->nr =3D -1;
> +
> +       /*
> +        * The binding doesn't support listing slaves as OF child nodes,
> +        * therefore we use the device tree node only to check if
> +        * there is an alias.
> +        */
> +       adap->dev.of_node =3D NULL;
> +       adap->nr =3D of_alias_get_id(hdmi->dev->of_node, "i2c");
>
>         i2c->rinfo.sda_gpio =3D of_get_named_gpio_flags(hdmi->dev->of_nod=
e,
>                                                           "sda-gpios", 0,
> --
> 2.39.5
>



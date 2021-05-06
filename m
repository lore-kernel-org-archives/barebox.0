Delivery-date: Fri, 07 May 2021 01:46:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lenh5-0003TL-K9
	for lore@lore.pengutronix.de; Fri, 07 May 2021 01:46:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lenh4-0005RE-NS
	for lore@pengutronix.de; Fri, 07 May 2021 01:46:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0w2C6mu98mcAlPARch6+tgIT6/U/rLvYLrZk9cmcG30=; b=Vh5JZJiaoYC6N1QjBeQLcDaNp
	ddw+4gOzanBi6LEcdXuisxEDc1iZkM7v6nxrNE7eVK0U5yXxcjVr1IB2RZ8rd+3f/lHv1wNG5SLRT
	zWsvxEOQqiTH3FfaL0tLsem2D724ti1uxUrnvWnfaoP8wsb5+dMYZidI3dIZsImN/QRlZvxHVtJyO
	xvZ61gmlkv3GOmQAH1RIG/a2aV3i6NfKVTm629n+yjnrdjoto+jH3EffjA8HhAJbeRO22iKBL1Eeb
	9FYrc0oExhIOjaQxf389lyUmSmhS3vTQcfhVpxi80AjyaUPi/WhG+GhNZiyyfFkkSKkR1ThEbkszJ
	dH5hY9JyA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leng7-005b5G-Lh; Thu, 06 May 2021 23:45:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leng2-005b4o-KP
 for barebox@desiato.infradead.org; Thu, 06 May 2021 23:45:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=gbQR3/4ZE/WerGz/W2OOXSlai0Uz83TVfB5nY+DLlpc=; b=m9jDv/6aZWKCDJYIa1fCx5VM+m
 NfvkYmUXN2BOcQRlirHT0/T04Gs6/ckNcHfltQ+gxHw1CfsloXeHxcY6WSp5Jqe1dSJprLggZwM9X
 hOLS67SiPl60lEUQPXfTJpDaj7wJ1K3ngEEFWeD2r+G/kleJD30hqjTRwsnWEHHMVYEvBpH199V4S
 cgtP/cn8snv/mo08dOWlrrr9eun9d17RZnIuUd4EB9mvFDtumkmfFXKIkcB38OKEhgt9Mni1/fDPt
 NT3DKyrd2OLAdoY6GCJl+m+++F/WvSjWbue74U/Zm1pM0C6w70MCKgp/Ac6PwZnSSbgLrYxQ6OmS7
 01xBDFhA==;
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leng0-006SQ7-4b
 for barebox@lists.infradead.org; Thu, 06 May 2021 23:45:05 +0000
Received: by mail-lf1-x133.google.com with SMTP id t11so10207825lfl.11
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 16:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gbQR3/4ZE/WerGz/W2OOXSlai0Uz83TVfB5nY+DLlpc=;
 b=achahnEme1XJHMnFp6WhMXZ5V1CXQQdcQyZRo6FTB1WiUJ7sEWH24o5h2Glv4UsrW8
 BlYa2XeMqwCaclkSSXYnpyEtC0+y1DWMkH0UH6jDvRDOHF7RJkW3TdAvUD7ad3aD3fF5
 SnAQRIrcZa6VJ05WvYb2XexeVx8ozGiR1hp1JqIQN4xgHf3kHmw10IKOuTnel9ybtpfH
 olLTglzABOPQtC6iLWJn/IdfODBJC6yfTr8AyYlxJbzENdHB3pJnpOGggZENaZ4NhFPh
 V5u3gTgPNOyqzThZEmPSBdGAiqQNxf6Gj/tX7EcPTmoMHbG3QkLcpHGzpK+I9G6tuxVe
 +h2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gbQR3/4ZE/WerGz/W2OOXSlai0Uz83TVfB5nY+DLlpc=;
 b=HYFk54EkAzFZANSSzKrWQ//Fpf66LCwtmaV/b3KR049e7p2r6FhNYL/UYY434wT5vT
 5NLUBoxL4SNE3OjfgYxnPROGVsMP/CzTH6Ez08DwbbwnGvfxCE5MMQdRIJ1jk9A08xLN
 ygCmiHaP/JpMS+91Plcsp4Uf09Z1Kow9SBkCdsk82wPhuIB1kR0xrDcviY26Ip8jCKqR
 epS51crodu5/s3rRO8VZhV8rwcwg9GE3Xp1zfcKqEsL1o6l0jv7fs3PSulQ2OTn80TrX
 njPvY9z+yK87d4ettpzwEtI+ottcX3RQb1X4vz0RGqvwqph0cDA53mHCBQ0e7BFvov57
 6d7w==
X-Gm-Message-State: AOAM532csp6p+ulOkJq5yJ/SJFg4O6JnBy7tPhSvl48ukZskdxTztgQq
 pHtWq4lA1WoDd77S75uWm7E=
X-Google-Smtp-Source: ABdhPJwqWjLZj+kFQBRUFHFhZX9Jv8sHtyGmQ8l2yfB2HSNXj47QPIaAfynRmebIrOryUSYCwr64yA==
X-Received: by 2002:a05:6512:b90:: with SMTP id
 b16mr4530781lfv.483.1620344702404; 
 Thu, 06 May 2021 16:45:02 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id c23sm1378185ljr.73.2021.05.06.16.45.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 May 2021 16:45:01 -0700 (PDT)
Date: Fri, 7 May 2021 02:45:00 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de, Steffen Trumtrar
 <s.trumtrar@pengutronix.de>
Message-Id: <20210507024500.ffcf176e9af68940b6e3836f@gmail.com>
In-Reply-To: <20210427202309.32077-9-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
 <20210427202309.32077-9-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_164504_223771_4E65F998 
X-CRM114-Status: GOOD (  11.98  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/12] gpio: generic: sync with upstream Linux gpio-mmio
 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 27 Apr 2021 22:23:06 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> --- a/drivers/gpio/gpio-generic.c
> +++ b/drivers/gpio/gpio-generic.c
...
> @@ -337,34 +531,37 @@ static int bgpio_dev_probe(struct device_d *dev)
>  	unsigned long flags =3D 0;
>  	int err;
>  	struct bgpio_chip *bgc;
> +	struct bgpio_pdata *pdata;
>  =

> -	r =3D dev_get_resource_by_name(dev, IORESOURCE_MEM, "dat");
> -	if (IS_ERR(r))
> -		return PTR_ERR(r);
> +	pdata =3D bgpio_parse_dt(dev, &flags);
> +	if (IS_ERR(pdata))
> +		return PTR_ERR(pdata);
> +

This patch breaks RISC-V erizo gpio, here is error message:

basic-mmio-gpio 91000000.gpio@91000000.of: probe failed: error 22


The problem is here:

> +	r =3D dev_request_mem_resource_by_name(dev, "dat");
> +	if (!r)
> +		return -EINVAL;
>  =

>  	sz =3D resource_size(r);
>  =

> -	dat =3D bgpio_map(dev, "dat", sz, &err);
> -	if (!dat)
> -		return err ? err : -EINVAL;
> +	dat =3D bgpio_map(dev, "dat", sz);

the dev_request_mem_resource_by_name() function invokes request_iomem_regio=
n() (success),
but bgpio_map() invokes dev_request_mem_resource_by_name() for the same dev=
 and name again.
This time dev_request_mem_resource_by_name() fails.



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


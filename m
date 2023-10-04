Delivery-date: Wed, 04 Oct 2023 17:37:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qo3wE-005AWf-Vy
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 17:37:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qo3wD-00052J-3i
	for lore@pengutronix.de; Wed, 04 Oct 2023 17:37:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cRIQS+SNX3gY2g76YQpR4hu9j1oYGSJ25h2yQsPXae0=; b=FttVKH6Mq14u+RD6xN/5ZV8+KW
	G/CiGKVlgCDoan+HoLuUhZoiNowf8+y/ePbTtLWtFmHbBX6Lp7o07blzk/6sI/9JniBB9Ytj4ePpZ
	5OZA0zOo5By9lDE20ncko0nabi4gpS0g08rN5mmi2o3UbT0baAOgERKFXvBf0IgnZgSo9dM1/TeBf
	IlcsXDe1qw2MNiW3nWoNdAHWzaR82r6OjSHopT0xATlQT9CcUzTGvxQtfAA2m5t2HjvEPx0hqEphT
	XzKt/VBIXDw2HDF6QxMaTct0VAeLlNQ6jmIa2wI56glVFom7ypeptTDTZmlSOgySTWLVeaaXWEGvy
	JwD6vDWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo3v2-000N0H-1U;
	Wed, 04 Oct 2023 15:36:12 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo3ux-000MzV-19
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 15:36:10 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-406618d080eso23327905e9.2
        for <barebox@lists.infradead.org>; Wed, 04 Oct 2023 08:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696433765; x=1697038565; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cRIQS+SNX3gY2g76YQpR4hu9j1oYGSJ25h2yQsPXae0=;
        b=BfHMmU1fxtuL/Gh+NPu9WFw/09TCXGAi+PdIfmdGiRkGjV98LN8P4h4u3Ei3gGudPi
         P6/3pGpTuACbfs6eDe82mbUKs7OY2+dWx79UdVLxi7kvVRlVUetpWAHBjG3VTEcLgNeg
         nWsmR6oIyuPFOfx/XhwXjUw6QYIc/fZGGra4tCrEnJotAYHvX0pc3F0pooOX0EXZgQOQ
         C5tMfehpphwCkGel88VIqCWG8tnEuv1MxmMuiCJZGRRt7f11+8V75oXjYTxqKdDetKcX
         WRmNB6tqOO/pV2CVbI5sB/9Hg7QbfBb5XyzizmnZq5q4l4+q7vTfB41EwCi4rdsrby8U
         6DoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696433765; x=1697038565;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cRIQS+SNX3gY2g76YQpR4hu9j1oYGSJ25h2yQsPXae0=;
        b=w+SbQt6gtBfhfW1FFF0Lna6czmQeCK7enjLLKijkN2SOfRYxECI9W+JqMwp+uAHduN
         5eIAKi7ZEEIbbZjnoi4tDAKg6+FA0EOaey3+Wfle5otu9r4BAsO5C1XvdctZsZdCBKg8
         9Tp/x07eXoUNmXWxRxA9BgiUZ+fd8m07W92vyC0SbIEN5YLgCcT7si2kzsmiST77P9LE
         JwjIqUG6ROGAIXGBGxN2es5lRoayXmffE0CfCn5oPLgsAMLec/qu/hCPpM9CfzrgyLh3
         SAOir6Wk+JMtt/pTMzlU4YJI7YI8BjtS4e/OL6Vlq7LC91bQtv/C7ZDgJQu8p+7bpUA2
         Pe0g==
X-Gm-Message-State: AOJu0YxcM5BIVMwzximWScTCPbggLDFgVmoIpYAwwiRaWXdXj3nZf7pD
	bA7pIj70ac9B9x4r2V1WaKHgPH5Ns7s=
X-Google-Smtp-Source: AGHT+IEOim8OG9jF3MJSubwaC+uYIh1ziQguz2uCKGRRxlkukHGhnmJ6XzJUsWrs13vVsXO3nOSzsQ==
X-Received: by 2002:a05:600c:252:b0:402:f536:2d3e with SMTP id 18-20020a05600c025200b00402f5362d3emr2640522wmj.14.1696433765075;
        Wed, 04 Oct 2023 08:36:05 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da674f2d002c8094b9b12534ba.dip0.t-ipconnect.de. [2003:da:674f:2d00:2c80:94b9:b125:34ba])
        by smtp.gmail.com with ESMTPSA id g23-20020a7bc4d7000000b004055858e7d8sm1825943wmk.7.2023.10.04.08.36.04
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 08:36:04 -0700 (PDT)
Message-ID: <de60ec21d9baea3fce92ba5cbb3c1ed8ff07ca1f.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 04 Oct 2023 17:36:03 +0200
In-Reply-To: <a308192d641c20d4a4576234e145b82c0e5f9d74.camel@gmail.com>
References: <20231004152051.618427-1-denis.osterland@gmail.com>
	 <a308192d641c20d4a4576234e145b82c0e5f9d74.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_083607_396248_2C55E7CB 
X-CRM114-Status: GOOD (  12.90  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] fixup! raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Looks broken again, sorry.

Regards, Denis

Am Mittwoch, dem 04.10.2023 um 17:22 +0200 schrieb Denis Osterland-
Heim:
> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
> 
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
> b/arch/arm/boards/raspberry-pi/rpi-common.c
> index ea3c72fb94..713fad78c9 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -289,7 +289,7 @@ static struct device_node
> *register_vc_fixup(struct
> device_node *root,
>                 tmp->full_name = xstrdup(ret->full_name);
>                 of_register_fixup(rpi_vc_fdt_fixup, tmp);
>         } else {
> -               pr_info("no '%s' node found in vc fdtn", path);
> +               pr_info("no '%s' node found in vc fdtn", path);
>         }
>  
>         return ret;




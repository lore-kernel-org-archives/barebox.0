Delivery-date: Tue, 15 Oct 2024 16:47:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0ipV-004hB1-0L
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 16:47:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0ipU-0003A2-Gp
	for lore@pengutronix.de; Tue, 15 Oct 2024 16:47:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PvRPtDRhX1ypipLlSJUdjKhot0+C9p+Nj3cxT4/IDjQ=; b=S1NojfpM+C4Kg75nzL0h/suhUx
	5N15aUtYj17ZqeVr/wkzESvzoB1GZebwRAPhVuNd8P5U3omqk38rYiwEAeeVlkYIsPiGHhB91yER3
	M0rg0sPoz8czd2ePYQYixMjZ8Uzq9Bh6hK12fItYs2LSlFny9+1CL0re9TiZiSD0zVmn5E75Xf8AG
	hqZw9PJtuBpgNVXZ7x4WK8lMWN3HkRN015YYFZ7vHAOK952Sa/cTGsiEUbzvOfhSmp/TqA5rvNM5A
	zeNs5phTDTiBc7icBmrFHwxyKlg2ncerFuvAjMnusCCs9JT950Un5PGOUaJvv/vCXMEnYIoMBCwgb
	9g2ooR0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0iop-00000008ZDy-2tvz;
	Tue, 15 Oct 2024 14:46:39 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ioX-00000008ZA7-1fQe
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 14:46:22 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-7ea9739647bso1064206a12.0
        for <barebox@lists.infradead.org>; Tue, 15 Oct 2024 07:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729003580; x=1729608380; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PvRPtDRhX1ypipLlSJUdjKhot0+C9p+Nj3cxT4/IDjQ=;
        b=Wxgijz3nduH6LtIgw6owcvyaNQBDIjr92V4o24TaBis026TpRleel33hoqPUwtrfbl
         0WeFOoObUCQW4SPhsTZoqHjAXDxIM6sy2/VrT85QPhFYC2qGk3wlvR39Mf8XOAx9hFeb
         iaeu8G6AQs1l+4J9A1071Ts2nYoGGUgt/Fo3xrHTFeCMQ3MfqZdTK2AXpauAH2K+7o+q
         b2FzaH+NgN6IvurA/+nKMtWgUdgGyHV67xNE4AqQYvMzRS0zNbVQbNSFh3CVqmlDjhr+
         ZJHCKMwfVoJVZKBEAkFis3ZC2d2Qig3DOF1RLsDAHofbwZCyJL+9OZJ7ZfvCE2qOaT1I
         Eu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729003580; x=1729608380;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PvRPtDRhX1ypipLlSJUdjKhot0+C9p+Nj3cxT4/IDjQ=;
        b=YC4ju8jI51Bav0Vp/Z8S0MDkw72chP98/w3Sag3qE1COlZHwPvEDiTNM0K1McmCFBd
         tpSoEGIkjxowgODdiNiuUhmpcIBXEDUH9t83MLasWtAQKf4YVoTIojxdwU6F8PAmXQ5b
         n2AHl0QmZopV4sLHbrrh25n/jnroT9VPjsxcO+82LIjAffNVYOjba63GOEWdKcORxM85
         1BoYpoJSVDTXWdHBvHbvLylolVVQYwxsqZ+5UrWVgjeCsVX959FsehRNHURn8AUIhTn1
         aDK6fx6+1nZLesHgZLDLSAs/wl299WqbtP6rP3F+uFDsQSs0ZKRnWLbnlfXfsRX6bM5f
         unPQ==
X-Gm-Message-State: AOJu0YxF12eyKI2hyb3yN02yQgTMj6HrK5kwzJ8T6/DOnJH4gJxKTuWO
	K3kR+GhIdF5ZQf/zDG9WmU2cLyG6zD9qLTCG+7uUtK4ZZE4ELDqoYORVFZ+ktgUCMOv3BVVBN8m
	NM5pMawoaCZQWQYuo1pDVMcerx3g=
X-Google-Smtp-Source: AGHT+IGPPtUFk0j+blHenQ10VK+jl0941Xx9lZWVcu2ldtG2XAfdyF8TfB3gfVQyk4mXpQ9l27gfQv3kgjC+f6L8CwE=
X-Received: by 2002:a05:6a20:9f8c:b0:1d8:ef56:50ac with SMTP id
 adf61e73a8af0-1d905ea1b7emr685246637.6.1729003579969; Tue, 15 Oct 2024
 07:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de> <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 15 Oct 2024 17:46:06 +0300
Message-ID: <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_074621_531437_08550FA8 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/7] mfd: rk808: add support for RK806
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

=D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 14:21, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> This adds support for the RK806 to the rk808 driver. Additionally to
> I2C this variant comes with SPI support, so add SPI probe support to the
> driver.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Hello Sascha.

RK806 can also work via I2C. Can you add this compatibility together?

Thanks!



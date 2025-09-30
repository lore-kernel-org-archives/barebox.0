Delivery-date: Tue, 30 Sep 2025 16:13:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3b6U-002nmd-0Q
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 16:13:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3b6T-0007NG-Hw
	for lore@pengutronix.de; Tue, 30 Sep 2025 16:13:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s39Mo+fePXbcOKXQQIgW+PWHa/EjgSrllvR2LSDKwfE=; b=G+k4l8eAIU6hDXM4nIJaQWDr10
	iDd732tbiWhmfSWjfytwEvfmEClkCc8jgs2XMh9If9ZYzMWxK+4V7D5dm1SfzBnIGhIWMK+rZ6kwA
	RnxBaiz85MMZ0OE2hsHXMX3jmCzAqyEvsErEvf7mincSgz9gtHhJrYLXApqBhsYvYvY805a1LixX4
	hc0scAj+L0lM6Ki4AZ2Hz38x7P4Wf1ae3rvt/SdBWz1pUiMO11fXJeONUD+k4gWQwMc6zzH94gUlF
	JHAkN0kcAi/UPyUifdK6l0Gu63w6cxHxBVz9B4948NxqrfVJCLEAh2iOcflIOXbd0UeAtxamDATz0
	vMP3FNTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3b5v-00000005T9K-1kSD;
	Tue, 30 Sep 2025 14:12:43 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3b5t-00000005T8c-062Z
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 14:12:42 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-28a5b8b12a1so22790425ad.0
        for <barebox@lists.infradead.org>; Tue, 30 Sep 2025 07:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759241560; x=1759846360; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s39Mo+fePXbcOKXQQIgW+PWHa/EjgSrllvR2LSDKwfE=;
        b=U6+yINeKjjBrQyl3uEpbKivQugw/qoXcXlaqtPLL8HMp0ow+XQnzE461UVUOCQCJ/A
         I3nxR2EnF2tZblvDf1QDojzXmsy7a3iTZ+Mz6ywrARlwzh5hRPapOfe9QxBuKBPnvBSY
         SHm6eO3DJfUwAtMA6KZrJJ9vLmMZ7BsJaIDd6QqeCFy2XE0ygIOJXC0F59urydCRMcMy
         btl/DfGQxO+z5xkWwoJn5Xs+qFnBM1RHx5FwkGCPaUQbLBnRnpq7g9nn5vl6itwfb9k3
         CGu1nr40Qwq9rQRekC3YmbysQmD6UR0FlyRGBfJ0d6nxRt2WmHCz7wDFEaYRIsdy0hB+
         jMew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759241560; x=1759846360;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s39Mo+fePXbcOKXQQIgW+PWHa/EjgSrllvR2LSDKwfE=;
        b=TSgEHV0UITuh6PZUgojPzBDap8O5LeOJ+kQsf6oKKGcJ94MI3DBjJUUZZY7Isk60EO
         VMejCA1eWZCG1AjswBaEcK0v4F93xSQX92pSmVkjvdqROAbu4iSsB5D4loSVHJOnBeih
         h6634uUw7kglIoifICTZlk7PxxP0ACWPhQzKT3Itb8N3HodAIZuOM3mQBaEBoK/eBsYe
         aZ7CJk9fgzPm68e3bTwtrAkFJI0sa7TSWQ+SsdJ+XMF0YqdiiiHMFYvWkYspEhTOLbqx
         qM/UPasFd9kzMjRP+OZX9u4PeDDipCBf0eb5TY7K2IujrQXPNpOUgol0ry6CUpQWrs69
         rAKg==
X-Gm-Message-State: AOJu0YxjbMIYuCt8UJGCMF0WLz51liKBraoj6Yii1riASDA5ukGRhXtg
	sHNfeWUmEG8rRTRa+JzhJyj2pp2iBQR28FyqOp5Q0TFR3o87Pg7P83bDSP/Szx1aZVcm2dWjDSK
	hEjETkfHzb/PYLJXckbTbqJzsxidSdvQ=
X-Gm-Gg: ASbGncsH6MGqLZYqv8wuVvjSD0eGbv7DSWiW83e9fGam2kYfH4s5qv89VjSdRbPU6pN
	jxVvaiLvnAtno6xM3r90uksW+PQI8SHGr6+zNc0C4EOZ4F9H64CCq5F9phJ89DiN1cLSfrhg4VA
	u+Nch5qsCw0KrjXMj3FOG0qR+2HNfoS1I2LmjufEYWKOjMitSo9cWvXuXSo/IFTNwSUv/9AMUt7
	DqL/+vycu3Yb7A7DlBJ2vVSneGjn9LiZyl61WIG6co=
X-Google-Smtp-Source: AGHT+IFv7s2b7BYDdu8jW5EO2JVrjjvinrFtCsbE3xFMoXLYIGN0SN5NKVOFCl7U0pHXVOZJdCkm7xeKiZv6u8Abd3Y=
X-Received: by 2002:a17:903:faf:b0:27e:f16f:618b with SMTP id
 d9443c01a7336-27ef16f6265mr174694655ad.24.1759241559735; Tue, 30 Sep 2025
 07:12:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250930134652.3035951-1-a.fatoum@pengutronix.de>
In-Reply-To: <20250930134652.3035951-1-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 30 Sep 2025 17:12:25 +0300
X-Gm-Features: AS18NWAvOyNMnxv6P97HbkQh3s7eJpnbZ9iyJuKb2RMzr_50IBTjTWjptFa1vGA
Message-ID: <CAP1tNvQ8+m87AUQM4c4H3qzDt+iZeLw8u3RzqSH3VpwtYe5DyA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_071241_086673_A2372E32 
X-CRM114-Status: GOOD (  17.58  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] scripts: rockchip: rkimage: reinstate OpenSSL 1.1 compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D0=B2=D1=82, 30 =D1=81=D0=B5=D0=BD=D1=82. 2025=E2=80=AF=D0=B3. =D0=B2 16:4=
6, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>
> The new signing support made the rkimage utility require OpenSSL 3.0.
>
> We will keep that requirement for signing, but for usage without
> signing, let's skip the signing bits optional and report an error on
> attempting to sign.
>
> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> Cc: Michael Tretter <m.tretter@pengutronix.de>
> Fixes: 54da6347b273 ("scripts: rockchip: implement image signing")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/rkimage.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/scripts/rkimage.c b/scripts/rkimage.c
> index 9b3ae8bbfff7..e5b6d61c4a9d 100644
> --- a/scripts/rkimage.c
> +++ b/scripts/rkimage.c
> @@ -13,7 +13,6 @@
>  #include <stdbool.h>
>
>  #include <openssl/bn.h>
> -#include <openssl/core_names.h>
>  /*
>   * TODO Switch from the OpenSSL ENGINE API to the PKCS#11 provider and t=
he
>   * PROVIDER API: https://github.com/latchset/pkcs11-provider
> @@ -64,7 +63,7 @@ static void idb_hash(struct newidb *idb)
>                 sha512(idbu8, size, idbu8 + size);
>  }
>
> -static EVP_PKEY *load_key_pkcs11(const char *path)
> +static __attribute__((unused)) EVP_PKEY *load_key_pkcs11(const char *pat=
h)
>  {
>         const char *engine_id =3D "pkcs11";
>         ENGINE *e;
> @@ -95,7 +94,7 @@ static EVP_PKEY *load_key_pkcs11(const char *path)
>         return pkey;
>  }
>
> -static EVP_PKEY *load_key_file(const char *path)
> +static __attribute__((unused)) EVP_PKEY *load_key_file(const char *path)
>  {
>         BIO *key;
>         EVP_PKEY *pkey =3D NULL;
> @@ -180,6 +179,9 @@ static int create_newidb(struct newidb *idb)
>         return 0;
>  }
>
> +#if OPENSSL_VERSION_NUMBER >=3D 0x30000000L
> +#include <openssl/core_names.h>
> +
>  static int rsa_get_params(EVP_PKEY *key, BIGNUM *e, BIGNUM *n, BIGNUM *n=
p)
>  {
>         BN_CTX *ctx =3D BN_CTX_new();
> @@ -356,6 +358,13 @@ static int sign_newidb(struct newidb *idb, const cha=
r *path)
>
>         return ret;
>  }
> +#else
> +static int sign_newidb(struct newidb *idb, const char *path)
> +{
> +       fprintf(stderr, "Signing support requires at least OpenSSL 3.0\n"=
);
> +       return -ENOSYS;
> +}
> +#endif
>
>  struct option cbootcmd[] =3D {
>         {"help", 0, NULL, 'h'},
> --
> 2.47.3
>



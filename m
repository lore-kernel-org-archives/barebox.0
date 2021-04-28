Delivery-date: Wed, 28 Apr 2021 06:40:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbc0M-0007Mn-82
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 06:40:54 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbc0L-0002fR-Go
	for lore@pengutronix.de; Wed, 28 Apr 2021 06:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PxHkwhJLs8a59BZVojIko644+EAg0rr9HSwt9QXAgXI=; b=o8GzLYfOv49UXThDS6RvatQ7a
	WbygO2XYFhlQTmPfWTCPh/xqS0JEjcUkKlf1QhAaSRNyFPcq1TxqMzPDWyT3nqVA3ZVDKagIUkzg/
	Us5a56xTdBRPnBzBCTb/h6u7U5jraf3pkz0NjaF35QQ3BL65rek1pqOiV16GTVYc8cVwU1kexC87N
	J/M3977j8wrlAE/uqx77GPUIWWmM7jTC6aBqRvkZb9we7Y6wHBUcp69PckZyZ5S27SGPElGFy547z
	G93xt6opEiPQv3QLVYpyPO43/jhi6Ed+ObvpRnb4aI0rx9VNO+TAzGRYDmOrcFt9guSoxyvcYpwdW
	swpDehCEA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbbzW-002lZ0-Ap; Wed, 28 Apr 2021 04:40:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbbzR-002lYf-Gc
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 04:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:To:From:
 Date:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=Dy4jPjExSpeLQ/iUUBgKwhzDuJh0IZxP8lnhf0FWJq8=; b=Wbt4s0/fJaojodwkmr7MCf2GCu
 m8w2VK8qSZF7sgz/CPnfLygma2YQBgDdsG4dMuBUU+Ixr8DtZR/ItvdUXt639ETS+quoacyqu+QsT
 dgHc+ZA3m7/6rmMvRKLHLT/mKnvS3hA2JlQUmFYWT9TFSkogC3XxxsqK9TgZv6Xxg9iM0oJsZWolh
 UeryioiLum1Q+yurJSOZ83ywdRscKwd0VfSFCQucBHtVOpbJWdJNAle5Q49xxUjQFc0WdO0McM9oa
 7AnQa8oAixw6oUU7+tmQI7plI6ZXV3WeAwTyDmxa44CH9f3sgVQayfj6++4D8Sm1chFTagF9RMVYw
 DmiuU83g==;
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbbzP-00HB0h-3F
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 04:39:56 +0000
Received: by mail-lj1-x229.google.com with SMTP id o16so70726445ljp.3
 for <barebox@lists.infradead.org>; Tue, 27 Apr 2021 21:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Dy4jPjExSpeLQ/iUUBgKwhzDuJh0IZxP8lnhf0FWJq8=;
 b=SX45nzSlprHt0Karsbkqafsbxcz8RZpr0djCkXSWL366rfdd8y9Q3YWkgAnw+n1PwJ
 YKd6N6bflcmkq/VWPaA1ei/mJ1HyF6/nJ3/10iD3lFawVdHEXTY+AtwopJIHjQ/XS38B
 DwmrZ3p2Y2nKBeeXCn27WD32hsEuWh1y8PGVRhCgry4XxRQ48GvsM025G4Fs0n0hlDoU
 kO72xzkR0e3GIvulk3KE5Ldi+RV6FUPDFwEDGPxPzeW7CXsdPJ/ZGYqJ2Y600B18xHPC
 t406SA8aZRZNlHc2UhRHBmr7MGpIOdfIU/ZlJjvh4v5i6QJhJ1HozWQ77n/ZWwaGqE59
 ryMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dy4jPjExSpeLQ/iUUBgKwhzDuJh0IZxP8lnhf0FWJq8=;
 b=RqR5kLpeA6pCmr44Iyp+UNuckqVqmgx4sYzRlD/1Cusxs2+P0n6vx2XlbHXEr5xiZg
 VoV72dKCDb4XuCiPSPgvBYOX24tLcTrsKc1NcufZHmII+bbG8Nzx1Hz46Il1J2Wqq5Lc
 Bmg9fcthOkcOekZr93a5pIC50zqfkr/M4Xxl73gBNdCKYmrXtbcuWcimkAGhb+9GoMRq
 UDpIdGqbovcx7k/DNxjckDdPIRucNhn8f6isDS10LGmrSYS80Q+pd9oCMkuY8Rx/rfnJ
 VyGTzo/ZyUKHks3d/wGF5FHjY1Ype5fKtfcw3Aua2pVFhWz/r4bGQaiSz6et3uo+hGfM
 v2nw==
X-Gm-Message-State: AOAM5337tv839/cn6ychex8hxEIwo2ilHxd1y1wIGUP7snOv5bGeHj2K
 BLfS/Z3LhCjr7noOy17PDHX4jAU0sRZUqw==
X-Google-Smtp-Source: ABdhPJxBSjyJUn4o4uLJtNJc2JlNVGfT0/cN0VgDZzcz3AWjZV1vXbljFKXpumawq9lCKOS+yBtXiA==
X-Received: by 2002:a2e:8552:: with SMTP id u18mr18653171ljj.374.1619584793325; 
 Tue, 27 Apr 2021 21:39:53 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id c13sm422902lfv.267.2021.04.27.21.39.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Apr 2021 21:39:53 -0700 (PDT)
Date: Wed, 28 Apr 2021 07:39:51 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Message-Id: <20210428073951.36f4fbe7055a85b8a7171636@gmail.com>
In-Reply-To: <20210426143025.149717-1-antonynpavlov@gmail.com>
References: <20210426143025.149717-1-antonynpavlov@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_213955_157649_B9FDE3A3 
X-CRM114-Status: GOOD (  16.50  )
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
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] startup: introduce global.endianness variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 26 Apr 2021 17:30:25 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

ping

> The global.endianness variable makes it possible
> to determine current endian mode from command
> line or from script on bi-endian capable system.
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/globalvar.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> =

> diff --git a/common/globalvar.c b/common/globalvar.c
> index a55b38b00f..75ce6331b7 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -641,6 +641,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_=
t *ip)
>  =

>  static int globalvar_init(void)
>  {
> +	const char *endianness;
> +
>  	register_device(&global_device);
>  =

>  	if (IS_ENABLED(CONFIG_NVVAR))
> @@ -651,6 +653,13 @@ static int globalvar_init(void)
>  	if (strlen(buildsystem_version_string) > 0)
>  		globalvar_add_simple("buildsystem.version", buildsystem_version_string=
);
>  =

> +	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
> +		endianness =3D "big";
> +	else
> +		endianness =3D "little";
> +
> +	globalvar_add_simple("endianness", endianness);
> +
>  	return 0;
>  }
>  pure_initcall(globalvar_init);
> @@ -658,6 +667,7 @@ pure_initcall(globalvar_init);
>  BAREBOX_MAGICVAR(global.version, "The barebox version");
>  BAREBOX_MAGICVAR(global.buildsystem.version,
>  		 "version of buildsystem barebox was built with");
> +BAREBOX_MAGICVAR(global.endianness, "The barebox endianness");
>  =

>  /**
>   * nvvar_save - save NV variables to persistent environment
> -- =

> 2.31.1
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Fri, 07 Jun 2024 08:17:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFSuQ-001wa9-2E
	for lore@lore.pengutronix.de;
	Fri, 07 Jun 2024 08:17:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFSuQ-000887-4d
	for lore@pengutronix.de; Fri, 07 Jun 2024 08:17:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7vQJzvzct0iIldW9e7xvRF70jGuCiHJn/9GEOL9zxw=; b=wEU0l6225tt+xN
	RsHh3mUJfszjVAXl4jmf6/IHOhVzq5OQK0ePxwiHxCzS38kOI5mebYwUBaQzSoNR99+FJ5aMaZfnd
	wLEUCR729xrcXum7HAEmon+j/BGkEdrZlla9fQa7K1oU51bL9Bj3CN0roYzUdcddrW892VlBeHGie
	UAhq2ZKMYtvqjROrUj0YUCqNkQ4GNhZp+dnTBdh1ooLkQ377GFdSLbQrZ0b9dCgRufHfUFN7JGSBl
	e7taCBIixRLt5bBeeZBVmvdMyAF35T1CY2hSxeoGLBtkUiZRbWiz/xaQp6rhjUQ6k/mcG9X0hnbaW
	P6psYOww4Sd6ZBXRKaPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFStk-0000000CeFD-2aSV;
	Fri, 07 Jun 2024 06:16:24 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFSti-0000000CeDZ-1yYW
	for barebox@lists.infradead.org;
	Fri, 07 Jun 2024 06:16:23 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52b9dda4906so2476723e87.2
        for <barebox@lists.infradead.org>; Thu, 06 Jun 2024 23:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717740979; x=1718345779; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7vQJzvzct0iIldW9e7xvRF70jGuCiHJn/9GEOL9zxw=;
        b=KTCXAm7os7DIrRIjPcWhDhfDAtozmb9yc2JY9PBtGWh4s7SN3wExdBLcElYLAXFnr+
         GMwzGyTn5BtS+j/GfL1AjtydtA0+xWkXAlkbRSFrEGNP85dVf83OlEeg4ycAkmtzQMeu
         Dn7S1D9NAXXiQ+2sfJe6vLMxIgw7tshncmvz+tgXyXZP0hXQso5E502V2lX5bhjAKNUM
         j9C+5Bsb4HyNObL/uiGX22YeBDftBhA0PNzvnVNFN911pbEycy/YjDVoi8Uc7Oc3nRrM
         p11BZ1xqSNiDJIL4v2YOVKWm2VjgS4D3n4mdh6emD3UIZhxLdg8A1xrpZEk2hAnKYSyd
         nFhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717740979; x=1718345779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R7vQJzvzct0iIldW9e7xvRF70jGuCiHJn/9GEOL9zxw=;
        b=n9rvdPsHHDCERjsAsUKOJoq0rS1+9DDo3383OvZP5VNQbAe9PAg34lw2BNtYiwF+Yp
         CoRZFpLlcQ+jbqMbNcNKsPQdzvRwloRtpoS4g4EVp/yPfD+p7JJT2RYbKitcgAIK2DcO
         b8ODoL8+spOxbL0mKGaRLkh7vwwFSHO8daCnH3CGLe5wjAjc2frr+pGnW2QjQ3oVKc70
         tVjtQh9KygBJVa7AIVX5Ep9RIljgY4/k+ae2QPjWfeuXK/mB10bbGnVNmnHJntoEBd46
         ic2issEU7XXCcZboWBh35azfdHcJmi3Ks25PbjhyxwvxLX8Eq8vfJh47bMgc1WLuXlYp
         bypA==
X-Gm-Message-State: AOJu0Yxvc2TMa4JOXFrY+dYX1kRtp4sn2ByrFBVJJjK4CtCEvS9Fy3A0
	OWTL4UajRDXG5TS28DK7JgIiXiFzgWe6zlKT9r5uDuDCWp5NgG5t
X-Google-Smtp-Source: AGHT+IGA7PMJhtOqRIhmkl6gK/F52jFkyG6q12qH1Vy9QU1oE9+rgFpzvWUArQhP5t6MXmSINPFB5A==
X-Received: by 2002:ac2:57de:0:b0:52b:84a9:bf3a with SMTP id 2adb3069b0e04-52bb9f7a146mr1247926e87.19.1717740976603;
        Thu, 06 Jun 2024 23:16:16 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb41ee7e6sm430287e87.89.2024.06.06.23.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 23:16:16 -0700 (PDT)
Date: Fri, 7 Jun 2024 09:24:09 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20240607092409.b50e80b617ae5c6fb182d854@gmail.com>
In-Reply-To: <20240607001259.107805-5-antonynpavlov@gmail.com>
References: <20240607001259.107805-1-antonynpavlov@gmail.com>
	<20240607001259.107805-5-antonynpavlov@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_231622_535289_51BA30B2 
X-CRM114-Status: GOOD (  13.82  )
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
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] ARM: vexpress: make debug_ll work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri,  7 Jun 2024 03:12:59 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi All!

Please fix misspelling in the subject of the original patch message. I have=
 missed final "s" in the word "works".

The subject should be "ARM: vexpress: make debug_ll works".

> The UART address from dtb is used.
>=20
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/mach/vexpress/debug_ll.h | 12 +-----------
>  1 file changed, 1 insertion(+), 11 deletions(-)
>=20
> diff --git a/include/mach/vexpress/debug_ll.h b/include/mach/vexpress/deb=
ug_ll.h
> index cd01d5d0185..3d67e7645d3 100644
> --- a/include/mach/vexpress/debug_ll.h
> +++ b/include/mach/vexpress/debug_ll.h
> @@ -7,17 +7,7 @@
>  #ifndef __MACH_VEXPRESS_DEBUG_LL_H__
>  #define   __MACH_VEXPRESS_DEBUG_LL_H__
> =20
> -#include <linux/amba/serial.h>
> -#include <io.h>
> -
> -#define DEBUG_LL_PHYS_BASE		0x10000000
> -#define DEBUG_LL_PHYS_BASE_RS1		0x1c000000
> -
> -#ifdef MP
> -#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE
> -#else
> -#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
> -#endif
> +#define DEBUG_LL_UART_ADDR 0x1c090000
> =20
>  #include <debug_ll/pl011.h>
> =20
> --=20
> 2.39.0
>=20


--=20
Best regards,
=A0 Antony Pavlov



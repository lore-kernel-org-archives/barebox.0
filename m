Delivery-date: Mon, 27 Jan 2025 21:01:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcVIu-005ERM-1p
	for lore@lore.pengutronix.de;
	Mon, 27 Jan 2025 21:01:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcVIu-0006rW-Gw
	for lore@pengutronix.de; Mon, 27 Jan 2025 21:01:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e/xNHoA8C+a0t5SOQBbLaCbO3FD8Eem3aNtZUvJq7nw=; b=MOM/XdsawyPT1mOTC/nROmWWNZ
	WUo2yyiY1rS7qdg3e2R51Ooc2mSdJdrQx7h/G+NxSzeDxvInmEjsLpLSWCokvP7e08PameVFzMp62
	zSn06kQl0AdQoKE/gqpykShMKH/5AqxxnRlgLV1Dk51inuFUt46OvEmgu5BTYmXF+8jSatZGM28Ku
	IQQJFeiHriHFP0j5IAlp7IuPgBEF47byDVvUyD3UOakqv8aX/Eacb+FymPyGp3c3uWCZ614NZT3Q/
	SGFkDyPwp4jV3DF+wEO/PNa4cd897KvjpOZUoRgXnJ7mPKFGA6s95N+RnwWD121cHkr6QB9vaPOJA
	5JAPAPqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcVIO-00000003ARC-01Mp;
	Mon, 27 Jan 2025 20:01:20 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcVIM-00000003AQj-04Mo
	for barebox@lists.infradead.org;
	Mon, 27 Jan 2025 20:01:19 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-71df1f45b0cso2912662a34.1
        for <barebox@lists.infradead.org>; Mon, 27 Jan 2025 12:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738008076; x=1738612876; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e/xNHoA8C+a0t5SOQBbLaCbO3FD8Eem3aNtZUvJq7nw=;
        b=aEzHXcqrqEfPbd6ItONERoYiXSyj25Se7IZL26WDp2UcQ7nwc/pzsumiRcu63fBDpM
         pn0zNXiO9lhm0WIMoEXOzOcGit0h0rZPOoYkaDFEyAKj7ZHSF4YSgVeHJxvNAk3aXr9d
         WnxiZ9VRVlN5cLjRVsOt4bJkmVcr3LY/1r1l/IEs8g2ZgBDYrwzaB1Bx/9JPU7I7sJTf
         Oerjg9doMyLQ22jHpa3xUNlzPZfkcsQy1g21zRUR0pkFjJUj4eXCP/nIxVS/SoD63VTI
         tNWo5AumI4hB2XGMcc5MppRWPZZHhXO534OZajMDmQSrpINWUaRyhmfNQedvzRilnO6C
         6ApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738008076; x=1738612876;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e/xNHoA8C+a0t5SOQBbLaCbO3FD8Eem3aNtZUvJq7nw=;
        b=or9noR5KX2ZLGESMKfHpr9aBOxQksMSslcDE/dyIVJobUwyprCI/T7Q5kMcGeGJUJV
         qDIADlorhQDjF+4Kq1RBDBBLVcv1EI5yzd+UPSGPBWUnCzbny+fOHiaTzm74ClHdXsHf
         tXiM6porDKKFtsHqBaHxZXGLP3u3wFH2spqBwzUmT8C1PJLkIVSM4XjzgI76W8RXixgb
         dIWoSH0BCJcivx9APkGNX/TPycLSWSyGUk06ZBFZmUjrs88XcnIq/L+QT7SF+97F3yog
         4Zh3ArShkxwRMaVz5tCVOqdWSTDMCE1R3PZWlPIc4/lzq6bYhaUMVZarzXB41FoS3UXn
         ZDDg==
X-Gm-Message-State: AOJu0YzyE6UB6OEDq4B3ChIvyxDqpwHPfaUQRqWY6pXl4ijLGPoE1Pqi
	VQ7Q01i85Tf8IWM73Z/np5JTQPpIOuOjQTAxNjC43cqoq67NhHoxuddNylFV8mwQOrOv0SgemED
	5ze8b4U5tvFhxFIwRsX/sh0Tx9fpMiVBcEBE=
X-Gm-Gg: ASbGncv+OjEllGHM97Xg5Xrvq/SPr+InoSvY0bPVtdJSslPcVuPdm1xDdL4lEvC6wd7
	WWoWWTQdwxCTjH3SavasL+9HwDOwxQ0D6MlDgym1lQpKAnxc9qFduMc26/NO3
X-Google-Smtp-Source: AGHT+IGXqdSIDSODp3UqBx26c5hYTfkN8ahVnLSxxma4J/zvtyASUriRS+5gVcNYuqTBVHFpQmMRLDKQeSaqrtLImaU=
X-Received: by 2002:a05:6871:a08b:b0:2ae:d23:3c2d with SMTP id
 586e51a60fabf-2b30f2c169bmr415528fac.8.1738008076139; Mon, 27 Jan 2025
 12:01:16 -0800 (PST)
MIME-Version: 1.0
References: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
In-Reply-To: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 27 Jan 2025 12:00:50 -0800
X-Gm-Features: AWEUYZmPzi0nMEXOhLq_6FriGV78EgSt2xuhHESzzXkAtc43uqMFFr4ZZHtht_k
Message-ID: <CAMKF1srm-7i871xqOxkaXZnwToPqGPws4BrzdV8OTvk1WiYuVw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_120118_054409_794B245E 
X-CRM114-Status: GOOD (  19.07  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFT v3] scripts: define _GNU_SOURCE for all source files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 27, 2025 at 11:51=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutronix=
.de> wrote:
>
> musl doesn't define loff_t, unless _GNU_SOURCE is defined, which
> we don't do everywhere and glibc didn't mind.
>
> This led to build errors with musl when code makes it into
> scripts/ that uses loff_t. This was already fixed once e.g. in commit
> c0d065fb0aa0 ("scripts: bareboximd: remove usage of loff_t").
>
> To fix this issue for good, let's define _GNU_SOURCE globally for all fil=
es.
>

Since the project is using this define sporadically, it might not be
concerning but
It enables GNU-specific extensions and features and if you are
targeting multiple platforms ( non-linux too )
then you might want to check those platforms for supporting gnu
extensions as well.

> Link: https://lore.kernel.org/all/CAMKF1sqX7gFCEH78fHS+jkUSieL5crAU_RwAUO=
-daJL0u+fj0g@mail.gmail.com/
> Fixes: 5171f4d0696f ("scripts: implement read_fd and pread_full for tools=
")
> Suggested-by: Khem Raj <raj.khem@gmail.com>
> Reported-by: Enrico J=C3=B6rns <ejo@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> @Enrico, please give this a test. I only tested against glibc.
>
> v2 -> v3:
>   - set _GNU_SOURCE instead of defining loff_t (Khem)
> v1 -> v2:
>   - include <linux/types.h> from scripts/common.h (Enrico)
> v2 was here:
>   https://lore.barebox.org/barebox/20250127143146.2965544-1-a.fatoum@peng=
utronix.de/T/#u
> ---
>  scripts/Makefile         | 4 ++++
>  scripts/imx/imx-image.c  | 1 -
>  scripts/imx/imx.c        | 1 -
>  scripts/imx9image.c      | 1 -
>  scripts/kernel-install.c | 1 -
>  scripts/keytoc.c         | 1 -
>  scripts/kwbimage.c       | 1 -
>  7 files changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/scripts/Makefile b/scripts/Makefile
> index a780f05bd90f..c1a5b4b74775 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -60,6 +60,10 @@ rk-usb-loader-target-userldlibs +=3D `$(CROSS_PKG_CONF=
IG) --libs libusb-1.0`
>
>  userccflags +=3D -I $(srctree)/$(src)/include -isystem $(srctree)/script=
s/include
>
> +# We need to explicitly set the macro to empty, otherwise it's defined t=
o =3D1
> +userccflags +=3D -D_GNU_SOURCE=3D""
> +KBUILD_HOSTCFLAGS +=3D -D_GNU_SOURCE=3D""
> +
>  subdir-y                       +=3D mod
>  subdir-y                       +=3D imx
>  subdir-$(CONFIG_DTC)           +=3D dtc
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 9ba60dbc5b4c..a8ac34091fc0 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -1,7 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  // SPDX-FileCopyrightText: 2013 Sascha Hauer, Pengutronix
>
> -#define _GNU_SOURCE
>  #include <stdio.h>
>  #include <unistd.h>
>  #include <getopt.h>
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index 5ccc116cfe3c..26027f0f3548 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -1,7 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  // SPDX-FileCopyrightText: 2016 Sascha Hauer, Pengutronix
>
> -#define _GNU_SOURCE
>  #include <stdio.h>
>  #include <stdlib.h>
>  #include <string.h>
> diff --git a/scripts/imx9image.c b/scripts/imx9image.c
> index 53fb879882e8..61b7cc943f00 100644
> --- a/scripts/imx9image.c
> +++ b/scripts/imx9image.c
> @@ -8,7 +8,6 @@
>   *
>   */
>
> -#define _GNU_SOURCE
>  #include <stdio.h>
>  #include <string.h>
>  #include <stdlib.h>
> diff --git a/scripts/kernel-install.c b/scripts/kernel-install.c
> index d943f0288f39..240122f2d224 100644
> --- a/scripts/kernel-install.c
> +++ b/scripts/kernel-install.c
> @@ -72,7 +72,6 @@
>   *
>   */
>
> -#define _GNU_SOURCE
>  #include <stdio.h>
>  #include <string.h>
>  #include <stdlib.h>
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index c60df8a5f017..2a0d7c415bf0 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -9,7 +9,6 @@
>   *
>   */
>  #pragma GCC diagnostic ignored "-Wdeprecated-declarations"
> -#define _GNU_SOURCE
>  #include <stdio.h>
>  #include <string.h>
>  #include <time.h>
> diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
> index 370c54c983b5..c58c80e5415f 100644
> --- a/scripts/kwbimage.c
> +++ b/scripts/kwbimage.c
> @@ -30,7 +30,6 @@
>   * headers in v1 images
>   */
>
> -#define _GNU_SOURCE
>  #include <stdio.h>
>  #include <stdint.h>
>  #include <sys/types.h>
> --
> 2.39.5
>



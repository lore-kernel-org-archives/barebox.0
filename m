Delivery-date: Sat, 25 Mar 2023 05:49:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfvpu-00DsB0-Ii
	for lore@lore.pengutronix.de; Sat, 25 Mar 2023 05:49:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfvpu-0007tV-E2
	for lore@pengutronix.de; Sat, 25 Mar 2023 05:49:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WvtGDqifWkJiIUMxqtcZuJV8LO7vsFWqBA+MwoeNYw0=; b=fVFbf2OdX8nL1PyRDy4FswTUPL
	JClyVgpXuz23gKtQ+afHIIBKxnD5zD6Pgpo66/doR6Oi6gcFQ1h2zHFCUaV8CmUkf+pzxC78yd+2/
	PkuKLr/V9aDrPFDmUwk/hr5FQqc9C8HEZCxN97fQkA2+lbtvab7Tsgx9gH+tbJG3iv71IFwEMJC+x
	7SIk7PN7dRhjGTPu0TUbjeP+7GxDzn9vgIX1U1mA2++LBYXXgaPVuky9wrewVqKHufjwoJhFY0UR9
	RGi5W+1N+zZnmJXV+xtRL0AywrR0eQNS4VwIayD+8NUHrCwW+jnG1C5AK03tIspCeVmfVKaPRUojB
	gwNb5dKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfvoJ-0066VP-0k;
	Sat, 25 Mar 2023 04:47:23 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfvoG-0066Uz-17
	for barebox@lists.infradead.org;
	Sat, 25 Mar 2023 04:47:21 +0000
Received: by mail-oi1-x22c.google.com with SMTP id bi31so2733685oib.9
        for <barebox@lists.infradead.org>; Fri, 24 Mar 2023 21:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679719638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WvtGDqifWkJiIUMxqtcZuJV8LO7vsFWqBA+MwoeNYw0=;
        b=ftH2SrwwPT7NY+FFB8tlbL/REkxFY5unXF8aibT1Lq3yhICBhPHYK3Q8Gt0YC2O/M9
         Hz3sERP7K0bs75bw+a76FBjiQ4Btbw1a7iWfcLeXgT84uGpPAHyUW8J04L1xyr6nUOo5
         U/kuJIjrQ9ZMO8hk6JpB8OGe9MbKOLGynL4YfTYghBHsuXew/rnEttKEM+Qbd5kvjQa0
         o1djhpoGpENhsDDOpV+kFek1nDaE7JwE8n8DeM+OGdvQbAutsHZ1GadK4abbKbI3LH5n
         Z39YUtxajtLICRJflVRasyts1N4g3Cf7fXXWRuMRKwO07JhCkvkgxQOeg9iKOx0BGIpu
         AP9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679719638;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WvtGDqifWkJiIUMxqtcZuJV8LO7vsFWqBA+MwoeNYw0=;
        b=CVuBLyK1U/7BQ4UWSDN32nzeER77DqD1SQ9ww/l9WJFjcpL/wLNWcriMM8/L18ix4d
         mJGC2XaRtakTRdHTrS4C4qF+kRWuDBdMMBGrncdjSnRJandCKyfUCZxNO7Y5mvysG9hd
         vlkHO5SnZeMAtWvli9Pn1a3+RbQ3A+oACUPccX5OvMopYgYopmO6bClzTXLUBGuH0otr
         HrjHi199jifb7KOtIPJi0LWsRkTP+GPl57nwRQdSbDRtm/vf552821lm7T/1HhxK24rQ
         x5YKVSnnOfTOJVOcu6F27XWpoJJmREMRb5LehN8mJj06FlX4KBMkDERVF5Yn1+sMUzU8
         HN8w==
X-Gm-Message-State: AO0yUKUm0uzplyqGMjHx2C1g1OefL6YggDuyQFUXeBwYuwoqcvCB+23M
	tiMP53UAquwWPsKQ+Gw5hGHEc3Mwpo/esipLwbc=
X-Google-Smtp-Source: AK7set86ZkezoSIqHgSGCSe7nq4eP+H3lT17V064pWD0EH8/BzqY1GzdoWUCP20qmkMlZiAS6wa7AokTLowEeW6UvVM=
X-Received: by 2002:a05:6808:14d5:b0:384:a13:952a with SMTP id
 f21-20020a05680814d500b003840a13952amr1469030oiw.11.1679719636703; Fri, 24
 Mar 2023 21:47:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230324121840.2375026-1-s.hauer@pengutronix.de> <20230324121840.2375026-4-s.hauer@pengutronix.de>
In-Reply-To: <20230324121840.2375026-4-s.hauer@pengutronix.de>
From: Masahiro YAMADA <mappyland78@gmail.com>
Date: Sat, 25 Mar 2023 13:46:39 +0900
Message-ID: <CAK7LNAQKXGmnZMSNRGbVpO4egBb_M0XR992E1-wpR-Y+cwoBSA@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_214720_422960_29553288 
X-CRM114-Status: GOOD (  17.99  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] ARM: cleanup 32bit/64bit support in Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 24, 2023 at 9:20=E2=80=AFPM Sascha Hauer <s.hauer@pengutronix.d=
e> wrote:
>
> The decision whether to build a 32bit or 64bit barebox has to be made
> first before anything else, so this makes CONFIG_64BIT a toplevel option
> without any further dependencies.
>
> With this patch we will only present the SoCs/boards which are actually
> supported by the selected code model in Kconfig.
>
> Without this patch it was often possible to select 32bit boards on a
> 64bit build or vice versa, which resulted in a broken build.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


>
> -choice
> -       prompt "Barebox code model"
> -       help
> -         You should only select this option if you have a workload that
> -         actually benefits from 64-bit processing or if your machine has
> -         large memory. You will only be presented a single option in thi=
s
> -         menu if your system does not support both 32-bit and 64-bit mod=
es.
> -
> -config 32BIT
> -       bool "32-bit barebox"
> -       depends on CPU_SUPPORTS_32BIT_KERNEL
> -       help
> -         Select this option if you want to build a 32-bit barebox.
> -
>  config 64BIT
> -       bool "64-bit barebox"
> -       depends on CPU_SUPPORTS_64BIT_KERNEL
> +       bool "64bit barebox" if "$(ARCH)" !=3D "arm64"
> +       default "$(ARCH)" =3D "arm64"
>         select ARCH_DMA_ADDR_T_64BIT
>         help
>           Select this option if you want to build a 64-bit barebox.
>
> -endchoice
> +config 32BIT
> +       bool
> +       default !64BIT
> +       help
> +         Select this option if you want to build a 32-bit barebox.
>


This help message is a bit strange - it is automatically
selected / unselected since it has no "prompt".





I see more CONFIG options with a weird help.





config 64BIT
        def_bool y if X86_EFI
        select ARCH_DMA_ADDR_T_64BIT
        help
          Say yes to build a 64-bit binary - formerly known as x86_64
          Say no to build a 32-bit binary - formerly known as i386.



You cannot say yes or no here since Kconfig
does not show a prompt in the first place.



Delivery-date: Sun, 01 Dec 2024 23:54:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tHspz-002qfu-1c
	for lore@lore.pengutronix.de;
	Sun, 01 Dec 2024 23:54:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tHspz-000477-5D
	for lore@pengutronix.de; Sun, 01 Dec 2024 23:54:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gNF5OsHkfYXZQ7x77qnMjFdXib68Z7TIXSCDQMtzhD0=; b=Fv+hdMNaRPdSsRCx8KV5F+B2iu
	BImqzmVySQ/6l2eoeczxdR3wqJ8zGdDbi/PAB75OMP4zuDNI87X9LPLOCRepm7Xry0AyEFuwwEdlP
	7hvkpTS1WQBM2HaJOVgzQP/1CXp0A1phZ0vD1JtKcfctd6lZJpCaKCchpjZr0AWwEiFMGkLsJfqR6
	N+rBHdvf8nQ9dt0DbY5EF8bMiAGS/PCLTmxRs54Nb44miw+Tpw1ltzt3VabWK+VqxfR1IM7x/oYeb
	gVzj+GzYj9CJco/GPs5tFnH/LpjiCJkpLdiAQ5sgyN7RvSSloQ4ocBIUi8yHsAOQIpfFy3FAuda5N
	m0g9AjpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHspK-00000004Uxo-0kYB;
	Sun, 01 Dec 2024 22:54:06 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHspH-00000004UxH-2oIu
	for barebox@lists.infradead.org;
	Sun, 01 Dec 2024 22:54:04 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-434a95095efso26589135e9.0
        for <barebox@lists.infradead.org>; Sun, 01 Dec 2024 14:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733093642; x=1733698442; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gNF5OsHkfYXZQ7x77qnMjFdXib68Z7TIXSCDQMtzhD0=;
        b=mwKpD2+KffKq2jSWhQqSIpK2nD7ZL91ENTU9n/9y8noWBDZQ2Sm6vCFcaZiQm62hs/
         9I9KSRy/CXJcDGiQS2sODhrsRHRUCTAYTqj37qcQPm6MURoVC59ABnmwuEloNQ5SGRlj
         tp0PrYwK6cLTKrOfRXaXh7dxp7t5AoZp5+1woqnzOJJmKY6sWKTnP14rDmGKPBOsW0iG
         L6nxAZcLh0M4zjbvvIJtnYiXsrvyzg9h4gJ8KQmPfrHCa9EbFJ4M/8IhXfuNmUTuDgb4
         M3kl7WQUD3bG3CE+ykr8P3/aQ9wEXdQtHAIW4YxdHbYGObWZxco9OMl1xwstQC0Dr5Et
         cugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733093642; x=1733698442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gNF5OsHkfYXZQ7x77qnMjFdXib68Z7TIXSCDQMtzhD0=;
        b=YZ54sYYFybWNn7AcxvGPpB2m4fPWbVdEkimBTLK18Ntj50aOrfc71NF6Maa1NEqWYL
         9UYviOaDp3onVEruB/yPgfkV3r/dSIMO8xmz0ZpVbrOiK2xaLwNg3WYQvhoPv8F/zOKZ
         tvY8f20PJ7o0bpCDyLYibSr83oHzGXA3xgOwvL1dkYmjvN4QZhptnATOYXv7WkyULvKx
         jxPbCuiN/YigyGlZMxV4409JHxW3Fqux0R1X2xNdhk2kwSXniq3g3sfQFFpHervacbNh
         CIcVHaRaTSayg2pcsnAyqMejXg85P2ln/Ozwca8iOj1RTx5ssE43rh2JriczeSdEcyK3
         42Dw==
X-Gm-Message-State: AOJu0YxG1sVtKQmk9NB4a1FuVVbo8ahntxsCuw1ng3wypH4OU3Lypfvf
	8gGV9rTKRXcaKhS4t/E8jQF/ozTkPPHe6alxFnP2tiNkZD+n0g5L
X-Gm-Gg: ASbGnctHBBjhZd3hiqk7gvdzmFNrbpa0q3+aqlgL9qqdWZbE6w/6qJx/AuaoXx+xrzP
	tRPbJu7RblJZpQH7Ues2gdSuedp113vhKh6RiKEYQGCEhQK0E6LLufcbtBumA/2iSG7ddDhwG7X
	q+r/tOw7vbUbuopmSDlddcHpeEX8z9FeJ7JHth9UKEB1EVnoNmz3AknCm6XNVay+BrSKj/XZQNc
	u01RKPBJF9dWwQeIDTaSX2zZ5/zbbVTAEo4cF7XZTiTa1R6Yv+ngQk0nY4Ibe16pTyKKvhRQhLg
	J8RXZJ0kMBZy7bJbrfPiYi+abcTZZ8CF1oB9BEcO5/CLCMz4wktSr0M=
X-Google-Smtp-Source: AGHT+IFr+Luadz9xlxLtkfQ0wmEXF/q54g43mcJKWhi1YiJ02nFGVufWbDLnUDYxmSU0cITpnqvHmw==
X-Received: by 2002:a05:600c:5123:b0:434:9ff4:24a1 with SMTP id 5b1f17b1804b1-434afc3e694mr145531065e9.13.1733093641583;
        Sun, 01 Dec 2024 14:54:01 -0800 (PST)
Received: from smalinux (2a02-8388-0884-0f00-d839-3a98-dbb3-daea.cable.dynamic.v6.surfer.at. [2a02:8388:884:f00:d839:3a98:dbb3:daea])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b9a9679bsm96028605e9.13.2024.12.01.14.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 14:54:01 -0800 (PST)
Date: Sun, 1 Dec 2024 23:53:59 +0100
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sohaib.radwan@loytec.com
Message-ID: <y3ggfeytlihua6m5dar7r6qmanmsw4kbqxgxaschrn6mcdwxis@6zdxuzv733s3>
References: <20241201212959.3196255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241201212959.3196255-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241201_145403_712652_7C103A79 
X-CRM114-Status: GOOD (  28.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: omap: add two smaller MLO defconfigs for
 AM335x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Sun, Dec 01, 2024 at 10:29:59PM +0100, Ahmad Fatoum wrote:
> The Beaglebone Black remains a popular board and it's not a good look to
> have it not compile by default due to barebox getting too big.
>
> As we keep running into size issues with the MLO defconfig, let's accept
> that we die bite off more than we could chew and split off the defconfigs
> into one for SD/MMC and another for NOR/NAND and document that users
> should prefer those instead.
>
> Reported-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/am335x.rst    | 28 +++++++++++++++++++++++++---
>  arch/arm/Makefile                  |  6 ++++++
>  common/boards/configs/nomci.config |  1 +
>  common/boards/configs/nomtd.config |  1 +
>  4 files changed, 33 insertions(+), 3 deletions(-)
>  create mode 100644 common/boards/configs/nomci.config
>  create mode 100644 common/boards/configs/nomtd.config
>
> diff --git a/Documentation/boards/am335x.rst b/Documentation/boards/am335x.rst
> index f54611428bb3..ec7322a0acdf 100644
> --- a/Documentation/boards/am335x.rst
> +++ b/Documentation/boards/am335x.rst
> @@ -8,9 +8,15 @@ loader from the same medium.
>  Building barebox
>  ----------------
>
> -The TI AM335x boards in barebox are covered by the ``am335x_mlo_defconfig``
> -for the MLO and ``omap_defconfig`` for the regular barebox image. The
> -resulting images will be placed under ``images/``:
> +Booting with barebox on the TI AM335x is a two-stage process and unlike
> +more recently added SoCs, requires building barebox twice, each time
> +with a different defconfig:
> +
> +* ``omap_defconfig`` for the regular (second-stage) barebox image
> +* For the MLO first-stage, either ``am335x_mlo_sdmmc_defconfig`` for
> +  SD/eMMC or ``am335x_mlo_rawflash_defconfig`` for raw NOR/NAND.
> +
> +The resulting images will be placed under ``images/``:
>
>  ::
>
> @@ -30,6 +36,22 @@ resulting images will be placed under ``images/``:
>
>  Some boards come in different variants, make sure to pick the correct one.
>
> +Size Constraints
> +^^^^^^^^^^^^^^^^
> +
> +As the MLO needs to setup DRAM first, it must fit into the 109KiB
> +of available on-Chip SRAM. Depending on the boards, drivers and general
> +features enabled by your config, barebox may exceed this size resulting
> +in an error message during build, e.g.::
> +
> +  images/start_am33xx_myirtech_sram.pblb size 111800 > maximum size 111616
> +
> +If you run into this issue, consider disabling some unneeded config options
> +for the MLO via ``make menuconfig`` and try again.
> +The ``am335x_mlo_sdmmc_defconfig`` and ``am335x_mlo_rawflash_defconfig``
> +defconfigs do just that by disabling ``CONFIG_MTD`` and ``CONFIG_MCI``,
> +respectively.
> +
>  Starting and updating barebox
>  -----------------------------
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 6785432c52ca..7138f638651e 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -2,6 +2,12 @@
>
>  KBUILD_DEFCONFIG := multi_v8_defconfig
>
> +generated_configs += $(patsubst %, %_defconfig, sdmmc rawflash)
> +am335x_mlo_sdmmc_defconfig:
> +	$(call merge_into_defconfig,am335x_mlo_defconfig,nomtd)
> +am335x_mlo_rawflash_defconfig:
> +	$(call merge_into_defconfig,am335x_mlo_defconfig,nomci)
> +
>  KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
>  # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
>  ifeq ($(CONFIG_CPU_64),y)
> diff --git a/common/boards/configs/nomci.config b/common/boards/configs/nomci.config
> new file mode 100644
> index 000000000000..f541645cccfc
> --- /dev/null
> +++ b/common/boards/configs/nomci.config
> @@ -0,0 +1 @@
> +# CONFIG_MCI is not set
> diff --git a/common/boards/configs/nomtd.config b/common/boards/configs/nomtd.config
> new file mode 100644
> index 000000000000..f29845573ae6
> --- /dev/null
> +++ b/common/boards/configs/nomtd.config
> @@ -0,0 +1 @@
> +# CONFIG_MTD is not set

Is it possible to remove also CONFIG_MACH_MYIRTECH_X335X by default, I
still get this error:

  OBJCOPYB images/start_am33xx_myirtech_sram.pblb
  CHKFILESIZE images/start_am33xx_myirtech_sram.pblb
  OBJCOPYB images/start_am33xx_phytec_phycore_r2_sram.pblb
images/start_am33xx_myirtech_sram.pblb size 111856 > maximum size 111616
make[1]: *** [/home/smalinux/repos/bbb/barebox_standalone/barebox/images/Makefile:82: images/start_am33xx_myirtech_sram.pblb] Error 1
make[1]: *** Deleting file 'images/start_am33xx_myirtech_sram.pblb'
make[1]: *** Waiting for unfinished jobs....
  CHKFILESIZE images/start_am33xx_phytec_phycore_r2_sram.pblb
make: *** [Makefile:736: images] Error 2



> --
> 2.39.5
>



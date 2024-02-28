Delivery-date: Wed, 28 Feb 2024 09:38:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfFSB-00D2tz-0I
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 09:38:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfFSA-00029s-Ey
	for lore@pengutronix.de; Wed, 28 Feb 2024 09:38:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nd/BWIZaTP6U3dveRhQrC4o0TEm7TbZJYN3zEEhSOX4=; b=p50AcgX0EhTrbrfiT6d9XSptYc
	aOHBaadijrva3JPy8DaCqK7v4Himk9jWzMGoV2By6UBL5mnxY65s5KIh8BM27tn6ZoOTY+8q1YgrI
	cPZ5TIv9UscY+xhmuqzxZfMjGkRjtS/3kJvEmmL5XHimhOwNtG1ychcbRJ35ibrZHLHSoyQsXdckD
	p9tXxfg4zddwdVQv1mmMW/RBDsEOXtKOhc6l4sKJ1CGplNYWHxGE/PK9ebz4avYiDifZVLiLtU6B7
	ra8EKnzn2pNr5R63hTBYepda1ZfgML0TKbwPEibjjplPZ2AbCixWTNDqtE2pQRQ3FHjzIkaP+bq4J
	YupdqG+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfFRZ-00000008VQ6-14Ae;
	Wed, 28 Feb 2024 08:37:37 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfFRV-00000008VOm-3Jjd
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 08:37:35 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-512fb30dbc9so3305336e87.2
        for <barebox@lists.infradead.org>; Wed, 28 Feb 2024 00:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709109450; x=1709714250; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nd/BWIZaTP6U3dveRhQrC4o0TEm7TbZJYN3zEEhSOX4=;
        b=EY5qbhy1fPeRXlwi5C+coGcA7byCQ8J5jEYd3jq1Mqlqw1LySYlIXr+6Ku9goBoxjd
         KI2gC1XOnqN3DfyyCbpQVUh+KkJnav6UmRTHqqMoBhZ/DeNaX5Mh1bputy/2wPAeFMYU
         YK5B7CqVBVtQL4S5CHZ4jeqzx7oUHEQxea/QTdfCoGHUaNy0QB6C9jjigDiw2mNBouA6
         BHLXrCLg0HqhuzaLRjUIYJvmnQSjFrGqFuRpkvf4dLgo/72sodf8jhjaWdqbk1EnbCBT
         /Wj32qfLjX0S7vih6dUtPQVlvc7LtZzSbC5eHDnlld5Yr2g2ZEUzgGDqEdnUHi74mnZX
         R3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709109450; x=1709714250;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nd/BWIZaTP6U3dveRhQrC4o0TEm7TbZJYN3zEEhSOX4=;
        b=R86TX0UeiBWqE067O+jLkOJiyTuo8Q376kuF+ZKWPYJs8qZx9Z+T3zQ3TOkCMzK3eB
         hNfSk1NjqbaatGgQo5xqeXbcjWdEWLrgJdydd3W7ipZAiPFG1ozw4YmPSoneDzNrQCLy
         37i+DYcV+ZyWjhWzeIl5Rgp0deZBNaJlXYwbSAJx2Hl7qsMac2HxRkmYsL66gG9T+EYe
         gmWyPBXOvEqszSIrQ5pwf8u8/D3E4dTny77AKzjxisZejrNn6RQrtYFA273xVAZ2du3h
         tN/rkspk4hKca+H453puxTmWYwuBXE5/dWtX/UNJS5ybxH77HEoFUg/mJuB0ZD/Ib3wE
         PvRg==
X-Gm-Message-State: AOJu0Yx4WbRTrZHCyZjf3tdK0ibJg1YK54Wox3Z9vE4/5HJa32NMVrtn
	GtqH3j/4Vn11ByvCzWaevjtiGWoJmQUpCB21msuYSdUFEQmDAUHk6owoi7bP
X-Google-Smtp-Source: AGHT+IFEMEUl09RVLvjW/G1egFKp4dVRyw8g2LlvlDiOJmNY5VCbiqKPmMEtYs9HEKUQHIECKRcwnA==
X-Received: by 2002:a05:6512:2241:b0:513:34b:67ec with SMTP id i1-20020a056512224100b00513034b67ecmr3737899lfu.58.1709109450319;
        Wed, 28 Feb 2024 00:37:30 -0800 (PST)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id q14-20020a19430e000000b00512b3c170a3sm1514747lfa.60.2024.02.28.00.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 00:37:29 -0800 (PST)
Date: Wed, 28 Feb 2024 11:47:36 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Message-Id: <20240228114736.4f9e9a00d35f7bfaba1cb546@gmail.com>
In-Reply-To: <20240227073923.148943-1-antonynpavlov@gmail.com>
References: <20240227073923.148943-1-antonynpavlov@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_003733_855736_D5FAA20B 
X-CRM114-Status: GOOD (  13.58  )
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
X-Spam-Status: No, score=-7.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: drop unused rarp.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 27 Feb 2024 10:39:23 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi All!

Actually there are much more unused header files:

    $ git clone https://github.com/barebox/barebox
    $ cd barebox
    barebox$ for i in $(git grep -h "#.*include" | sed "s/ //g" | grep "^#i=
nclude" | sed "s/^#include[\"<]//g" | sed "s/[>\"]$//g" | sort | uniq); do =
basename $i; done | sort | uniq > /tmp/list1
    barebox$ for i in $(find -iname '*.h'); do basename $i; done | sort | u=
niq > /tmp/list2


Show unused header files:

    barebox$ for i in $(comm -13 /tmp/list1 /tmp/list2); do find -iname $i =
-type f ; done | grep -v ^./dts/ | sort

./arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h
./arch/arm/include/asm/arch-check.h
./arch/powerpc/include/asm/pci_io.h
./arch/powerpc/include/asm/status_led.h
./arch/x86/include/asm/modes.h
./arch/x86/include/asm/segment.h
./drivers/mtd/nand/atmel/atmel_nand_ecc.h
./drivers/usb/host/ehci-core.h
./fs/fat/ffconf.h
./include/gpiod.h
./include/linux/mtd/ndfc.h
./include/linux/mtd/nftl.h
./include/linux/usb/usbroothubdes.h
./include/mach/imx/ccm.h
./include/mach/imx/devices-imx21.h
./include/mach/imx/devices-imx31.h
./include/mach/imx/devices-imx35.h
./include/mach/imx/devices-imx50.h
./include/mach/imx/habv3-imx25-gencsf.h
./include/mach/imx/iomux-mx21.h
./include/mach/imx/iomux-mx35.h
./include/mach/imx/iomux-mx50.h
./include/mach/omap/intc.h
./include/usb_dfu_trailer.h
./lib/bzlib_private.h
./lib/zstd/zstd_opt.h
./net/nfs.h
./net/rarp.h


Check for false positives:

    barebox$ for i in $(comm -13 /tmp/list1 /tmp/list2); do git grep $i ; d=
one  | grep -v ^dts\/ | grep "#include"

drivers/mtd/nand/atmel/legacy.c:#include "atmel_nand_ecc.h"	/* Hardware ECC=
 registers */
fs/fat/ff.h:#include "ffconf.h"	/* FatFs configuration options */
arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S:#include <mach/pxa/re=
gs-intc.h>



> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  net/rarp.h | 23 -----------------------
>  1 file changed, 23 deletions(-)
>=20
> diff --git a/net/rarp.h b/net/rarp.h
> deleted file mode 100644
> index 0986b02513f..00000000000
> --- a/net/rarp.h
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-or-later */
> -/* SPDX-FileCopyrightText: 2000 Wolfgang Denk <wd@denx.de>, DENX Softwar=
e Engineering */
> -
> -#ifndef __RARP_H__
> -#define __RARP_H__
> -
> -#ifndef __NET_H__
> -#include <net.h>
> -#endif /* __NET_H__ */
> -
> -
> -/**********************************************************************/
> -/*
> - *	Global functions and variables.
> - */
> -
> -extern int	RarpTry;
> -
> -extern void RarpRequest (void);	/* Send a RARP request */
> -
> -/**********************************************************************/
> -
> -#endif /* __RARP_H__ */
> --=20
> 2.39.0
>=20


--=20
Best regards,
=A0 Antony Pavlov



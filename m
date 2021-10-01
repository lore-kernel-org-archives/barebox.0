Delivery-date: Fri, 01 Oct 2021 13:48:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWH1T-0006IX-AK
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 13:48:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWH1S-0001A7-9t
	for lore@pengutronix.de; Fri, 01 Oct 2021 13:48:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Message-Id:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aDLIBaMHPIMUm19uUwV0qVViP46l+monXne7/rDdU0I=; b=CRS4zwV6bJy3lE
	mkQA2y9zjs+kYsL85BNM3JCM/S3oGu1amJZqTI9rPUSvoHWs+kW8GW7Y9AiEkAiZlanmAFemXjTXv
	OqMeGmMpmdvZjefz7xJaSgX+gQFl/KHD3k5U2vGwhUw+Dka+CePB6qWJomkNOc2e+gxLGuP+9vRQV
	Fm2i7lnjzGaxGuAJthfbttVdVZX8rjqdKw2+C2078WpPu2UedB2qJTx42Xz6Tf+9XseLfR+C2agRT
	LU3TJGyrJTtgCSV/jfXK952lEqnv/pIpH8lgjniJ0aGtrvlO5cakp8iTmXtMhXYy1obUrCRcKLaGu
	kV2YqK4dxukWF+67Psjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWGzq-0001eh-Q8; Fri, 01 Oct 2021 11:46:35 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWGzf-0001Zf-U9
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 11:46:25 +0000
Received: by mail-lf1-x133.google.com with SMTP id i25so37641652lfg.6
 for <barebox@lists.infradead.org>; Fri, 01 Oct 2021 04:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=QSHvGof5lv6QiIYvp5iGDaUMA6GRGDyVE7AUfgkVjos=;
 b=E+fpbHHYEACLXCcNv0647SbmJbwVrrZPTpZEy5EmVVHBBYJYtZC5XLEjKcslfsbLIo
 CeVnpKrkhgXhfUWg+AytrJ7DL1ZcMjz1/cMKajU5pueV3vO5x4wjZu915iEcRsKHVQtk
 sUuIRlJyLLPuhXfsOIUfpmcq+3QdOagAf9UT6T5eWm8h9t/VCIHkqGjcTORE66Fog90Q
 9jz2PFxkwtKORstvujRrWeaQkB6z61Qc6aWHGgiQqPKaum5qIq8vxtE+9B3T47paXmms
 RJbvJz1EGSz84CLPICT5R/6oPJyLg0m6EZrse4ySO3l89QmcV+JnKt2MplPCFirW/W80
 F4YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=QSHvGof5lv6QiIYvp5iGDaUMA6GRGDyVE7AUfgkVjos=;
 b=lH1VWBLR1aLxZrf0WeLUHgbmrPJauYQQXMBxvMKDUnETz5heBfRzFpYoT4dJTA5GU7
 qEoxzgOkJcF+VmT34WBHAYxspTDX7cmmxmhYqNz7ZhU3ij/FXwvw8tslWhGpLTVrQDxE
 16j1cQM3pF7zKPMrHrSi6q55qMeWP5rruZ15R+V0e4cI5EIPjHzXQf1hh9MXu2qAF00Z
 V6l6GrECYwBvDWTGFNF2g/5v471UKAIe2U3Qw0lW8a3bLsUmw8JC5Xp+Gss8oXhvPZ0T
 1Kaiym5gYvGjxCieV/GnsQgvfUrV0E+N5GSg6l1le72noXEYy/PAq+PUxhplA0T+BX5J
 X8Gw==
X-Gm-Message-State: AOAM530zW4KwJ0SZ/tTob9hbtkeX1k+uwygz3Ud2tl9BlMQM5fC6nrB3
 CMD4gfNh3JJc42hAoX0dBjXrkGtpMH4=
X-Google-Smtp-Source: ABdhPJyaO5p5uig2SRun2xkQxvSTt1vdukzTqpS7VIl783RFpLz+ENL/0H82boAet3lasm7dnUYb+A==
X-Received: by 2002:ac2:54b1:: with SMTP id w17mr4914555lfk.466.1633088781250; 
 Fri, 01 Oct 2021 04:46:21 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id n24sm710398lfq.294.2021.10.01.04.46.20
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 04:46:20 -0700 (PDT)
Date: Fri, 1 Oct 2021 14:46:19 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Message-Id: <20211001144619.6db15b8269c912722bf0f2d0@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_044624_043852_246468B0 
X-CRM114-Status: UNSURE (   6.08  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: 'of_compatible' and 'model' imd records are unusable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all!

I have cloned barebox c67ada0024da (v2021.08.0) and found that
'of_compatible' and 'model' imd records are unusable.

E.g.

barebox$ make ARCH=3Darm CROSS_COMPILE=3Daarch64-linux-gnu- imx_v8_defconfig
barebox$ make ARCH=3Darm CROSS_COMPILE=3Daarch64-linux-gnu-
...
images built:
barebox-nxp-imx8mm-evk.img
barebox-prt-prt8mm.img
barebox-nxp-imx8mp-evk.img
barebox-nxp-imx8mq-evk.img
barebox-zii-imx8mq-dev.img
barebox-phytec-phycore-imx8mq.img

barebox$ ./scripts/bareboximd images/barebox-nxp-imx8mm-evk.img
build: #1 Fri Oct 1 10:16:30 UTC 2021
buildsystem version: =

crc32: 0x00000000
release: 2021.08.0
barebox$ =


There is no 'of_compatible' and 'model' imd records in bareboximd output.

So there is no chance to imd_find_type(..., IMD_TYPE_OF_COMPATIBLE)
(see common/bbu.c) in a barebox image file.

scripts/gen-dtb-s puts IMD_TYPE_OF_COMPATIBLE and IMD_TYPE_MODEL
records into barebox_imd_0 section.

BAREBOX_IMD macro (include/asm-generic/barebox.lds.h)
does not KEEP barebox_imd_0 section":

#define BAREBOX_IMD                             \
        STRUCT_ALIGN();                         \
        KEEP(*(.barebox_imd_start))             \
        KEEP(*(.barebox_imd_1*))                \
        *(.barebox_imd_0*)                      \
        KEEP(*(.barebox_imd_end))

KEEPing barebox_imd_0 leads to several 'of_compatible' and 'model' records
in one barebox image file, e.g.:

barebox$ ./scripts/bareboximd images/barebox-prt-prt8mm.img
build: #2 Fri Oct 1 10:19:07 UTC 2021
buildsystem version: =

crc32: 0x00000000
release: 2021.08.0-dirty
of_compatible: fsl,imx8mm-evk fsl,imx8mm
model: FSL i.MX8MM EVK board
of_compatible: prt,prt8mm fsl,imx8mm
model: Protonic PRT8MM
of_compatible: fsl,imx8mp-evk fsl,imx8mp
model: NXP i.MX8MPlus EVK board
of_compatible: fsl,imx8mq-evk fsl,imx8mq
model: NXP i.MX8MQ EVK
of_compatible: phytec,imx8mq-pcl066 fsl,imx8mq
model: Phytec phyCORE-i.MX8
of_compatible: zii,imx8mq-ultra-rmb3 zii,imx8mq-ultra fsl,imx8mq
model: ZII Ultra RMB3 Board
of_compatible: zii,imx8mq-ultra-zest zii,imx8mq-ultra fsl,imx8mq
model: ZII Ultra Zest Board
builduser@ae676260680c:~/barebox$ =


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


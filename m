Delivery-date: Tue, 29 Jul 2025 22:37:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr50-0052RJ-2Y
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 22:37:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr50-0007i6-6M
	for lore@pengutronix.de; Tue, 29 Jul 2025 22:37:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JpbwTTZm4zhixy4JOAaHAbXFAwP1lgW//bS+UnFLbUs=; b=SqgaDg7Q0/eGuVr/XO5rSJTHap
	sk2FEvyPmWNVwdpWojOU7Fqg8cdIt4kfngVJqrhgvXvcSY7DX+61nJL5guzxZCVQfkfvLYtAINLVU
	CCySEkGm3kUm0vb5MqSVmJ4PSJS97i8cJky2KE41OD78kEIoWnHGjDW3dLVG3KpgZfes+zyiq+3QT
	oV8eHr/w4PqihhZWTUc4UZ5TAKL6NNPqTjGaZnq+vpUmS8PGhHuJWM+sQd1A4sM1d7jSmcpZBfqrd
	7Wth5k/ylbZfYowmEVKw7UPNeb4MjKMnhIKUGjLZvfFOu8xqKoDMHwKp3Mnl5lxS6BjMEgzo9BxNk
	bazwUsvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4O-000000003yC-0kqG;
	Tue, 29 Jul 2025 20:37:08 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4L-000000003xD-0FKP
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 20:37:06 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-45610582d07so39071035e9.0
        for <barebox@lists.infradead.org>; Tue, 29 Jul 2025 13:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753821423; x=1754426223; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JpbwTTZm4zhixy4JOAaHAbXFAwP1lgW//bS+UnFLbUs=;
        b=LmGxyrjZC3FFr2vRG68yz4Ei7nuC/eqATmUX9l8+9ce/sAcOzddd2oJMSptKm4SaVu
         MRredShhneQTrfzb2QwEFzGv14ANY54uoeUKdUad4sHMS2AeXds2wmc6LhrH3pBI9BIQ
         ZgYsCpMBsmLGdn2qkk3rb2H2U3vwiO5dK2E59ZgEtQCnDSvVf/5C4WTPTZrmV3eTbRlo
         PcU9nw7a4ShF4sREOhn0ia+/pffYhD+rkqNg5Vs+tnfwk8Orh78AqwYC8NHnh03LNqv1
         Icf2v8lmfVWnlAlew4gXTIaZ8XO6FJQAh/twJc2SLmfQwCUyam99aD/aELm8izpTWKTL
         8npQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753821423; x=1754426223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JpbwTTZm4zhixy4JOAaHAbXFAwP1lgW//bS+UnFLbUs=;
        b=Mfp6KUPuSFfFyECS9+TM9JnjNzKvst3H3BC3dHDkDzdihk9cIqL34s1O0IoSsPw5ZS
         1fHaK10B+3a+J0Udg25bGNILfJEg5UUPgMGWuKajU9obf9gEpucqHJTJLJIytKzAhG6N
         t7U+Jro41urX0sNuuKO7wSBAkdkAj1ydFV4dFjqJX2tg8XXwIWvSuJyTBUypI0yUi/5C
         R0IN6i5KJ4RO6VxYZQKvyktWGd0pIkSlAXIpnj5LaGs2XFbUj5dgdOP3r76Gb7nIT4vd
         Qtx64bITHjZ3bl061xS+FBEdQUdMVjso3XRliFnDTq1t7m25flw/X4wkHqVCjlM3oPu/
         z2yg==
X-Gm-Message-State: AOJu0YwhLxB+Yv6kzPFp9Zkt8JiN1rIYxPBETR+wn8PbRiRxIfhAD3LH
	XvBgXGlLxI6H19btIPyW4wzghOHIAIfgxaKum511ukGy13IizOsWQqqZegk8Yg==
X-Gm-Gg: ASbGncvybcVl3QXR9ef2QRS7bRx/rcB1Q0+oIN65XhdVwKUlNs0tluiLObA8EmDb/w0
	rKRiZNEhU6jvFMzgdNwuTF5kTf4cwt0wt9ge0WaKvg519pq7YxAM5ifIXRPCmF2HhsvzN7SkSEK
	N+OokUh1llaJAh+OB9jG6pCH3L64iyv+CQfQi7GDXvTdSl5/QkvD5KNBBYEPAgngzH/THWKGqHn
	OvlzMgui2B5h1LwVyzCXIY4Fb6EdbzsLdXTwUzA7LAfFH87dEKNTjv2+3ozX8tgEWHLKUmStw9E
	Gw+LN6dvXmW0olgwlycB2uipI4FqUSVerzK8M4fIEITFKP+lRZU4c2p8r5MensDFfonT1K0kccP
	iuyM3HapcyEcWP81+WMWrbAkTHrTJqWZfobpLagC8noPbgdZ1zCvBFaigJnAPTvxgcxBGL+7alc
	XRk0Ir2jR/
X-Google-Smtp-Source: AGHT+IE4wgpvfTyJdhjb2ZB2dfYTdcj+Lgeq8tzlGt46l33aPYTvsOSmi7zMDXvjUo09MBGSU2tV6Q==
X-Received: by 2002:a05:600c:a06:b0:456:2379:c238 with SMTP id 5b1f17b1804b1-45892bc6bb2mr11225765e9.17.1753821422521;
        Tue, 29 Jul 2025 13:37:02 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45895386627sm481325e9.19.2025.07.29.13.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 13:37:02 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 29 Jul 2025 23:36:55 +0300
Message-ID: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_133705_099238_B5EDB8B8 
X-CRM114-Status: GOOD (  14.74  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 0/4] ARM: boards: add support for Samsung Galaxy S8 and S20 5G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hey folks,

This patchset focuses on adding support for S8 and S20. It's designed to allow
adding support for new exynos devices easy, with the primary differentiating
factor being the device tree. Currently, the same built barebox-exynos.img
can be booted on both S20 and S8 without any changes in the code, as it can
dynamically recognize what device it's booting on based on the tree provided
at x0 from the previous bootloader (s-boot).

On these devices, barebox will be used as a shim after the stock bootloader
(s-boot), replacing the linux kernel image in the boot.img.

Please read the patch commit messages, I've tried to describe everything
well enough. Thanks!

Best regards,
Ivaylo

Ivaylo Ivanov (4):
  video: simplefb-client: switch to dev_get_resource
  clocksource: arm_architected_timer: support clock-frequency
  ARM: boards: add support for Samsung Galaxy S8 (dreamlte)
  ARM: boards: add support for Samsung Galaxy S20 5G (x1s)

 arch/arm/Kconfig                            |  5 ++
 arch/arm/boards/Makefile                    |  1 +
 arch/arm/boards/samsung-exynos/Makefile     |  4 +
 arch/arm/boards/samsung-exynos/board.c      | 66 +++++++++++++++++
 arch/arm/boards/samsung-exynos/lowlevel.c   | 81 +++++++++++++++++++++
 arch/arm/dts/Makefile                       |  2 +
 arch/arm/dts/exynos8895-dreamlte.dts        | 13 ++++
 arch/arm/dts/exynos990-x1s.dts              | 13 ++++
 arch/arm/mach-samsung/Kconfig               | 13 ++++
 drivers/clocksource/arm_architected_timer.c | 11 ++-
 drivers/video/simplefb-client.c             |  5 +-
 images/Makefile                             |  1 +
 images/Makefile.exynos                      |  8 ++
 13 files changed, 219 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boards/samsung-exynos/Makefile
 create mode 100644 arch/arm/boards/samsung-exynos/board.c
 create mode 100644 arch/arm/boards/samsung-exynos/lowlevel.c
 create mode 100644 arch/arm/dts/exynos8895-dreamlte.dts
 create mode 100644 arch/arm/dts/exynos990-x1s.dts
 create mode 100644 arch/arm/mach-samsung/Kconfig
 create mode 100644 images/Makefile.exynos

-- 
2.43.0




Delivery-date: Tue, 02 Sep 2025 21:12:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWQi-007NZr-0s
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 21:12:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWQh-0006ew-1l
	for lore@pengutronix.de; Tue, 02 Sep 2025 21:12:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HCZnuqz8O1d/+zxhHfN3ZpYlNMFlZz4iZu9/QR5XRqg=; b=QorW2A9m3CpJHjbTu4hXPfA2J4
	s4HjP7VouYEmXfkn5aiPON2hFF29os+/x9E8fe/nOeUguNSgr13WaEFFWbj91b8jwkYoUNDkBzNpe
	hud19o5jSYkQDypbS40uT25mduvB/P65VeHU/4x0O1GfUGIiWFvyOGQLUzSCiZHa2QIoba/wTylRN
	xeLp2p1QltYJQIaBGVfE7uib5rWww++zHH2tmipMafmHgk61beeFawUbAKVJbBTdG0jrz/WCYHxZy
	VRl+n+4ixyKqPveM5IFCazf+iWhuGKLTRqyxerMjW8156WQONsIkNln9EZ0nyp82UyrGF6G+H49bA
	GK3R94pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utWQD-00000001czS-1z9P;
	Tue, 02 Sep 2025 19:12:01 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utRYY-00000000DcL-22gQ
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 14:00:19 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-afede1b3d05so901930266b.2
        for <barebox@lists.infradead.org>; Tue, 02 Sep 2025 07:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756821616; x=1757426416; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HCZnuqz8O1d/+zxhHfN3ZpYlNMFlZz4iZu9/QR5XRqg=;
        b=YPwIUKkhSDvotnpqVWoV0posa8a/Aciu/1hNj/OqlX7h75RMhqjcmlYbF4zpyeqcWh
         u6PK4LWFBYYzfbqFHG2+/yEOZ0FCVNxc4r8YDH0JqusmQCHrwQ/Lk+dphZ+V0bntSq0R
         iXl1+aeUfeXmAilcIlJR7Gu7o66+emIkNicEBylhbL9QxAhGv1uBcAtC4SuiCtae+ZER
         rlNqmAV3pvn+A4tPhBOraDcqCHhzVS9TYINxgJ2fmx0zmIntKaYIDMuVMLFyi7ZtigPU
         5O5NnnsafMn8i/k7L2tfHh7/Vl6RfEBuHY7tFMn8Yo7Lo1F6FhHKxsPij2Mk67e39zDj
         6btw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821616; x=1757426416;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HCZnuqz8O1d/+zxhHfN3ZpYlNMFlZz4iZu9/QR5XRqg=;
        b=X4+JVPsU59Rq48bKg51n5kZE0rxAbYm/XkO00fCzqF/Q8vvtFrEVRuBT9q9SgvkQUM
         37wGsXkQZtqvYTdxXTpkRRIC1v1nd1QhN2Fe4qQCsM3Kx79/eJ+xn6T4qfnyLokH4v6i
         aTUhMvMLUMN7BKOQ+NsmUFAK7hRZd/gZifLwVwGwfPdT5sQXRPH1YIcYxubXyOE0xClG
         oeh980vZe0eWrf8FX3rEAcbMSCgZKdmTSnLEHO5G3t5GUvLDogBTRu56uDrWK5fI3bSs
         mHFDAadHfFGqpx1QPG3zuLdJ9VDSDcB64UBHVDuekR7xMTns+sEjOz0h8/YmIzuLbDY1
         hp2g==
X-Gm-Message-State: AOJu0YzUpXjc+3u0sl4/ODDKlDmXVambCUu8I+8B8Y/ShlXGNTwsfcdc
	06IG7KCn32suMK7KntaMZYNhYTPjr+0dUBzL6OU3PVLWWiVTU1owk/70+hIi/Q==
X-Gm-Gg: ASbGncuRw0Bo+1n8p3/GZ03KXH+eLDN2NjDodSLg6XKwRPbfi/rvyY6pxpHkWcbAjxX
	qimbes3iLHmbc1gaGYfff+SoIKSczG6InMQcqBRt9cDsmJQEIg/NGNpX+BADd/V08GttTRFutPN
	2e4rTPC4nfqETTpkI+aHUq57XoKk9GatgklWVNiXoWI/qqUJC3+E8foetlv1fywgCr5QmWZh8Qj
	fse8Hp9/vKqZOb36TsgPAeximlQ4uyXg1stT7odg48wHOowPTKUgykP3rcRVnMJp3yRozpRgMq8
	xvVAYPzHLMw7KH9qSFiF9O2k6lC89Ri8ARlgQ+GQHWNA3wZIdw2ilwcMPA+Ohk+bJ9YP1ECzcbn
	ueLDKT6co3mr9uxNuJxDcZVoIEzWeZ3p2
X-Google-Smtp-Source: AGHT+IFvA8uCEpPkGkueSujGKpvgMWjTuh8ykQrdpaBmGCnH9QYpHsKwgwhbk0q+cKAMAUagFK4blQ==
X-Received: by 2002:a17:907:3e08:b0:afe:a4a7:df95 with SMTP id a640c23a62f3a-b01d8a26e5amr1118769866b.3.1756821616043;
        Tue, 02 Sep 2025 07:00:16 -0700 (PDT)
Received: from ivaylo-T580.. ([37.63.16.182])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff08b86833sm1034411366b.48.2025.09.02.07.00.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:15 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue,  2 Sep 2025 17:00:03 +0300
Message-ID: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_070018_532162_6801A3C6 
X-CRM114-Status: GOOD (  17.69  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/3] ARM: boards: add support for Samsung Galaxy S8 and S20 5G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hey folks,

This patchset focuses on adding support for S8 and S20. It's designed to
allow adding support for new exynos devices easy, with the primary
differentiating factor being the device tree. Currently, the same built
barebox-exynos.img can be booted on both S20 and S8 without any changes
in the code, as it can dynamically recognize what device it's booting on
based on the tree provided at x0 from the previous bootloader (s-boot).

On these devices, barebox will be used as a shim after the stock bootloader
(s-boot), replacing the linux kernel image in the boot.img.

Please read the patch commit messages, I've tried to describe everything
well enough. Thanks!

Best regards,
Ivaylo

Changes in V2:
- drop the applied patch
- s/Since/If in 1/3
- add r-b tag on 1/3 from Ahmad
- add a simple defaultenv that autoboots a fit image from memory
- change is_compat to is_model
- rework the entry to deal with SP in assembly and jump us to C
- set up properly before touching fdts
- beautify postcore a bit
- enable deep probe on both platforms in DT

Ivaylo Ivanov (3):
  video: simplefb-client: switch to dev_get_resource
  ARM: boards: add support for Samsung Galaxy S8 (dreamlte)
  ARM: boards: add support for Samsung Galaxy S20 5G (x1s)

 arch/arm/Kconfig                              |  5 ++
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/samsung-exynos/Makefile       |  5 ++
 arch/arm/boards/samsung-exynos/board.c        | 69 +++++++++++++++
 .../defaultenv-exynos/boot/ramfit             | 16 ++++
 .../defaultenv-exynos/init/bootsource         |  3 +
 arch/arm/boards/samsung-exynos/entry.S        | 31 +++++++
 arch/arm/boards/samsung-exynos/lowlevel.c     | 83 +++++++++++++++++++
 arch/arm/dts/Makefile                         |  2 +
 arch/arm/dts/exynos8895-dreamlte.dts          | 13 +++
 arch/arm/dts/exynos990-x1s.dts                | 13 +++
 arch/arm/mach-samsung/Kconfig                 | 13 +++
 drivers/video/simplefb-client.c               |  5 +-
 images/Makefile                               |  1 +
 images/Makefile.exynos                        |  8 ++
 15 files changed, 265 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/samsung-exynos/Makefile
 create mode 100644 arch/arm/boards/samsung-exynos/board.c
 create mode 100644 arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit
 create mode 100644 arch/arm/boards/samsung-exynos/defaultenv-exynos/init/bootsource
 create mode 100644 arch/arm/boards/samsung-exynos/entry.S
 create mode 100644 arch/arm/boards/samsung-exynos/lowlevel.c
 create mode 100644 arch/arm/dts/exynos8895-dreamlte.dts
 create mode 100644 arch/arm/dts/exynos990-x1s.dts
 create mode 100644 arch/arm/mach-samsung/Kconfig
 create mode 100644 images/Makefile.exynos

-- 
2.43.0




Delivery-date: Tue, 09 Sep 2025 18:02:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o6-0017da-11
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:02:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0o5-0007nk-Bh
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:02:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nNBS+8qvtyl6RkNWZ7Ka4yJq1wMfPTZ1BBxziVfamNQ=; b=Eb1CtRARIQGUF12cZ3o6zBIudJ
	1L4yk0kU4DlIVwNupw5A36x8dxX744BFyfHs1qKjDRUypXop5futRw7uc4gx3omiNBQbKntGKhq+K
	K0oUhTfEVm252YcXDxmJVlEJ33DSCQVPEgT7hM68ijoG5vkH3KNToDFGnxVuGdW5szWEdGX9XAB4R
	p067XhznLuA/HGxeqNjftCgN9J09Rg6GK0k1NFjt127OZAxRlvrTNxX2eN94n4oNGiqNx3jENBbWb
	liVLzBV8knqdZjArxJtv4LO1DGlv9t5G3HROyWgUfqBzYJZOa+aw3wVkTMG5w4VxrKaeyBadY6clg
	y4waCFFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0na-00000008NiC-2Fy7;
	Tue, 09 Sep 2025 16:02:26 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyFb-00000007KI7-2ZQR
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 13:19:13 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b04b869abb9so452687866b.1
        for <barebox@lists.infradead.org>; Tue, 09 Sep 2025 06:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757423949; x=1758028749; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nNBS+8qvtyl6RkNWZ7Ka4yJq1wMfPTZ1BBxziVfamNQ=;
        b=auMug/FmAh0ES/bCSyL8i+T4AfDa4DzDQtyb4+L4jr58ekwRMXdiAFnrgweVS4kgkH
         4GsmbUeMRAZYMhtoBxWKDnat7tMGBE22WRS2VmsHDQiEZ6IJeCvJPDMyzvLvgBL4W6Yg
         74p0PsvGbbA/RFW6boLjK66Lb7fXoKWq9f/RIEj7OBxmOG3HNL/GaCqfakEb/SvuhHmS
         inBywZ79sIOXcunYMfjPy4EZ4Iq4Vc9tKk07Ml0loefnMoC33tUp/SBpjW/yk0DlmgLS
         u3iBFhyp/kRW4gkCsriByllFGJcpkBI6AlfRfHlj3W5digOPxpJCnIBIgU6+yoUAfAi2
         zbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757423949; x=1758028749;
        h=content-transfer-encoding:organization:mime-version:message-id:date
         :subject:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nNBS+8qvtyl6RkNWZ7Ka4yJq1wMfPTZ1BBxziVfamNQ=;
        b=lyaSKdlP3OD5HObT2YmM53NplAQaPOHVSsyNlFhfiJfv2UlwhzhBhPjB+j0a4ec0tj
         lDKHUEX0RLvjPxtlgr9lKCCJ54yMJY0am3+mtP/+XQnSs/fa6qbIfeLyYGpAsdd91Xat
         zupSi8xYPLriBddhmCYxV89w91+DmOU8dUdlsVliufz7plhfQPLRh1gZ3Y1dwWhmBPDT
         MNgLC48jVLPMwKxDtI4PY6b9IEjJjs00pW98L/nZLj9jjauqAv452VDJw03Ij/K5YyUJ
         yqjK2+usZAOMlAp7bsBJVDfZW5bYO9bMz/cYoxLLTzhX1xOmGcA1o/XyO2afZWV6uw8f
         aeGQ==
X-Gm-Message-State: AOJu0YwvpVZl0AlGoImjaqU6t4OrXun8dKcnDnRcSWhgyX0TjXo90Ll3
	ATzMSRx+TJuFMR/yLw5apDJBqRxB9HSiXfZaRbwT+gLJmpOWmV/nSZWqXsmnjw0l37W8gpsrTet
	FWc1R
X-Gm-Gg: ASbGncuqFM5JjeF/c1zA/nb9jiGYX9DN92tdtw8EuWH8SRJ29VWWLL1F2D/1bAKQQaq
	uHvuuXREx6ap48T7Y6cYFUsdXUvR+ZipNiJizpZ0R5Q85XDHeBwgIGS6duwl7iUtxzEGZF1g5Rt
	m2MDqdUh7FoPu5KoT0AHzNZKph9x8/qT2Iaig96xwbgNV9VIgB35G5KKGLRNO5vAtarA/oK9Wew
	cAnUIfNLe8H2Wiy3QzOMY2RHAPYRwNyXoIyvWmqSz0Wms31bh4ElQez0cGdNW/bC3IBCHZILtGi
	bpX0myCaUI8zf7BHtn4W19sisv3/57/50d/0BNO+0/y2RI3KV3wRHYG10r+5fGKV3IDSxIbLDQ0
	0ngkeJsBnWXSq5zDbbzXy9fclK9bWTsp3Fqxp9DyygVz0udXv6amMhfifGCTicQXOZWKpILTEXB
	4z
X-Google-Smtp-Source: AGHT+IH4C5VdWpI4AY4DO7nrcTihdkT+9koYm3kir37EwphywGU7STMl+PM9tbhK8FM0KPHB/wyY2A==
X-Received: by 2002:a17:907:6eab:b0:b04:274a:fc87 with SMTP id a640c23a62f3a-b04b13fe46bmr1190983266b.4.1757423948851;
        Tue, 09 Sep 2025 06:19:08 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm2131074366b.60.2025.09.09.06.19.08
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:19:08 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Tue,  9 Sep 2025 15:18:33 +0200
Message-ID: <20250909131843.2260573-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_061911_719238_ED5E6065 
X-CRM114-Status: GOOD (  10.21  )
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
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/7] dm: Initial work on a device mapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Start work on adding a device mapper that is compatible with the
corresponding subsystem in Linux.

v1:
https://lore.kernel.org/barebox/20250828150637.2222474-1-tobias@waldekranz.com/

v1 -> v2:
- Fix review comments from Ahmad (see individual commits)
- Add (2/7): Add rasprintf(), to make scenarios where strings are
  built up in multiple steps more ergonomic to work with.
- Add (5/7): As a result of making sure that the DM selftests execute
  in the CI suite, the qemu-malta build ran into a table size
  overflow.

Tobias Waldekranz (7):
  string: add strtok/strtokv
  vsprintf: Add rasprintf(): the reallocing string printf family
  dm: Add initial device mapper infrastructure
  dm: linear: Add linear target
  MIPS: qemu-malta_defconfig: Use largest possible relocation table
  test: self: dm: Add test of linear target
  commands: dmsetup: Basic command set for dm device management

 arch/mips/configs/qemu-malta_defconfig |   1 +
 commands/Kconfig                       |  14 +
 commands/Makefile                      |   1 +
 commands/dmsetup.c                     | 144 +++++++++
 drivers/block/Kconfig                  |   2 +
 drivers/block/Makefile                 |   1 +
 drivers/block/dm/Kconfig               |  13 +
 drivers/block/dm/Makefile              |   3 +
 drivers/block/dm/dm-core.c             | 395 +++++++++++++++++++++++++
 drivers/block/dm/dm-linear.c           | 129 ++++++++
 drivers/block/dm/dm-target.h           |  39 +++
 include/device-mapper.h                |  16 +
 include/stdio.h                        |  10 +
 include/string.h                       |   1 +
 include/xfuncs.h                       |   4 +
 lib/string.c                           |  30 ++
 lib/vsprintf.c                         |  35 +++
 lib/xfuncs.c                           |  24 ++
 test/self/Kconfig                      |  10 +
 test/self/Makefile                     |   1 +
 test/self/dm.c                         | 159 ++++++++++
 21 files changed, 1032 insertions(+)
 create mode 100644 commands/dmsetup.c
 create mode 100644 drivers/block/dm/Kconfig
 create mode 100644 drivers/block/dm/Makefile
 create mode 100644 drivers/block/dm/dm-core.c
 create mode 100644 drivers/block/dm/dm-linear.c
 create mode 100644 drivers/block/dm/dm-target.h
 create mode 100644 include/device-mapper.h
 create mode 100644 test/self/dm.c

-- 
2.43.0




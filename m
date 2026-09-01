Delivery-date: Tue, 01 Sep 2026 17:14:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1QC4-009gT4-0e
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 17:14:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5BF35204974
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 17:14:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xOC5xdL7;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="qbE/pNDt";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HmzQs/e30tZJcBv1XKc4Mxtinve+svWUaMl/klG4lWg=; b=xOC5xdL7UUJmOf
	TLWCdQM+xO2Kc7wL4VvVG+zWAy1juPN0zCkN6vG45wbcHrMJJvdqdOSzbRUh642YrzTfzzQ3onr71
	XiuSTGqrwP/b+He81wOxKq1HU4iIVXswvPLqdrP68TpGYLw9Zg8h8vgsfwh0sRKHpndNyN0L2voBq
	2IDhsUnf58tnCw9EJbcW1pcOJ+BjiD6btU5HLj2G2P8xrr5R1ZlTrk5DQ5DecMRcjmLWu1mD6pG99
	tCbv40soHu/Kr1m0Cw19rXnrHXNcpxdIneDpWAFkf2OpspLWbJC3yn2qDMz7MzW8hcpl6J39ri308
	8lQrnGcv+62RtKJKB/Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBO-0000000CRYx-0aLH;
	Tue, 01 Sep 2026 15:13:54 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBL-0000000CRXO-32xq
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 15:13:52 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-49b965570d7so10889635e9.0
        for <barebox@lists.infradead.org>; Tue, 01 Sep 2026 08:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275629; x=1788880429; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=HmzQs/e30tZJcBv1XKc4Mxtinve+svWUaMl/klG4lWg=;
        b=qbE/pNDtRk50UUAmkO2hAfsPN7x1g93Dk81skL8reLQBF2LMvJNYzrc+qwdLD7Kt9u
         SGIo6dttH8ndReWUnwmkNqgilH48ni07NuXdLPgwSEyKKUMYd2DmGHB/rtvIATCTNx2y
         6VikIGHbtOEb8IyZCAgF7/o6XgjceVq4btI+DXz2MDOIvZ3Vw5gpqJihaDD0dAwrFpB8
         dbGYiKDiQ/racJc4m4eYUDXNfDlOdrCgAlnnOaM8gBlGEolkBkxZAAmNLvQ9ULgM1KVe
         RIYNpmA9Cc2u2SEaIQhvDnSmGw1nB0D5zURfh2dL+NXglsiycqKPy+CwOIHtlbscBI3/
         SKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275629; x=1788880429;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=HmzQs/e30tZJcBv1XKc4Mxtinve+svWUaMl/klG4lWg=;
        b=KMCDfxTFFwm4AF8UV83AD8xABJNE+oTjVFGnm7ZbMRWXvhWzUvjhVb0CqwViOBVTg3
         pimx6PC1FeCjO7PdczUVPOnhO6B8BxoAJoGP+72UYW3XR9uEzqRibBjzgbWpLuyVNuca
         ixgGQU1mS1HwNP7I5LYKMD38kkQSQe1A811sY4aauJBUsuBt5rLSZVjua7Ik/zi2FNnj
         +57MEVb1ZtxSdrc0g6/1SOeBGgnIiEty79cVrVcmZ7D8Wq4qNN/ThC4rJproC13Ch2vM
         Y+Q5NS86hZBrBEvOJRj55l5JcIlG00Wby8k+JwpV8+Ob6Wajk4c7QBn4NhRdct1a1/Qy
         NIiQ==
X-Gm-Message-State: AFuF++kkP6MOFwkUQEYf3qmR8BTWZhJ9F/8zGgPTyt1gvpDc7VYCvw1d
	HfPLACgStuCN5TtlOxq2jsnypZasizkKDHb+PsOgwjLn4kmHTv9mpQXDZ2K9ZA==
X-Gm-Gg: AR+sD13goDWGFuSOklB/pxmfjhZXSL9TQ7Ve7P9hGCN/LPqS57SoU/BW+pVkxmlUsu1
	LaLr45kI6HfhdNkY4Dsla+ohUEYc5sxTe0lrkonx34ffSvO5f7TgvdHKvYxvpRcWALoII0GXCHc
	PZZNJhf+kNRbSDNfbo8mfIIvZVaotrcw5Lym7kcxkzq3wwaywHjq22mvKqGX+YPSPjYUOCoHZ24
	CfX+J6TJo1RuZnaqQmmJnu05cC6n0qhL4sk13dtMxWIZUbx3ESa+7CEIfiJZUeXXmC7L1rViC0P
	w92pS++Sap9qMCMBWggGV/lImm4jwxNQyDX8GiUlip6BcwuGiWYbVgyOS7KSo0E904rGk2i7G0/
	RI/CLe00Rm/yjdCZwS9AI6LEggJ6+lGqk73glkzW5Xhd4BAlV9V6QEWZUhYv8BSaFJXh1SRgjgZ
	HfwpP/35ElikY+7g9swE2QjLG94U24TSg0V74JUqso6sMKrC1k94V5N3fW0s2wPrc11yDHbGtBj
	uIqtiQ44WhQd0+SQc8Sy1LsAdtX+P2N8i5V9LNrWcCnUPfKD3DECfs13GDz46ziEHMh48tJWnk9
	943GxQ==
X-Received: by 2002:a05:600c:1393:b0:49b:12c2:104f with SMTP id 5b1f17b1804b1-49b91c2660amr495694155e9.1.1788275628924;
        Tue, 01 Sep 2026 08:13:48 -0700 (PDT)
Received: from [192.168.0.233] (2a02-8388-e6ca-5780-e161-768d-5c97-84d0.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:e161:768d:5c97:84d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b955e7906sm303549035e9.1.2026.09.01.08.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:13:48 -0700 (PDT)
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Subject: [RFC PATCH 0/6] Add Raspberry Pi 5 initial support
Date: Tue, 01 Sep 2026 17:12:55 +0200
Message-Id: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQ6CQAxA4auQrm0ygwLiVYiL+SlQFzBpB2NCu
 LujLL/FezsoCZPCo9pB6M3K61JgLxWE2S0TIcdiqE3dmt5YdDGiJG5Qt5RWyXj3o7tdyYbed1C
 yJDTy578cnqd18y8K+feB4/gCA9U40HQAAAA=
X-Change-ID: 20260901-add-rpi5-support-8bfa43e1c9b7
To: barebox@lists.infradead.org
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788275628; l=2488;
 i=andrey.lalaev@gmail.com; s=20260901; h=from:subject:message-id;
 bh=baqS3SS1NHsEfUirEiNobN4Rm7MNOTcvegmq1qphGgU=;
 b=8egel4C8352c0cY1qNRWf2sG3vMmcgFABGl48qU2mrutgIjRD4lHkUZYtzuqolUEFEKTzH6qk
 2UFmy048azmAJFCh7iQAT2/mKIKtboz2t6yCuwqua0sWjIAesNsoUWv
X-Developer-Key: i=andrey.lalaev@gmail.com; a=ed25519;
 pk=YHk+K3q98GV/1CigmrEAQ+Vc0o+GlFWt3j94jvrEh6o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081351_786648_CC845608 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This patchseries adds initial support of Raspberry Pi 5. Since
    the most peripheral is routed though RP1 south bridge, only debug UART and
    SD card are supported. Boot log: NOTICE: BL31: v2.6(release):v2.6-240-gfc45bc492
    NOTICE: BL31: Built : 12:55:13, Dec 4 2024 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:330 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [andrey.lalaev(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: imck1fgwkgykn7iz5uogba9x8mqrmbpi
X-Rspamd-Queue-Id: 5BF35204974
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::330:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	TAGGED_RCPT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Action: no action

This patchseries adds initial support of Raspberry Pi 5.
Since the most peripheral is routed though RP1 south bridge,
only debug UART and SD card are supported.

Boot log:
  NOTICE:  BL31: v2.6(release):v2.6-240-gfc45bc492
  NOTICE:  BL31: Built : 12:55:13, Dec  4 2024

  barebox 2026.08.0-00096-g549bcd6aa802 Tue Sep 1 07:54:36 CEST 2026

  Board: Raspberry Pi 5
  ERROR: regulator-fixed sd-vcc-reg.of: probe permanently deferred
  WARNING: sdhci-bcmstb 1000fff000.mmc@fff000.of: Failed to get 'vmmc' regulator (ignored).
  sdhci-bcmstb 1000fff000.mmc@fff000.of: registered as mci0
  ERROR: regulator-fixed wl-on-reg.of: probe permanently deferred
  malloc space: 0x1fd00000 -> 0x3f70ffff (size 506.1 MiB)
  mci0: detected SD card version 3.0
  mci0: registered disk0
  environment load /boot/barebox.env: No such file or directory
  Maybe you have to create the partition.
  barebox@Raspberry Pi 5 Model B Rev 1.0:/

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
Andrei Lalaev (6):
      mci: add driver for Broadcom SDHCI
      ARM: rpi: add Raspberry Pi 5 support
      Documentation: bcm283x: add Raspberry Pi 5 support
      arm: dts: bcm2712-rpi: specify clock frequency for uart
      arm: dts: bcm2712-rpi: disable wifi SDIO
      bcm283x: debug_ll: add Raspberry Pi 5 UART support

 Documentation/boards/bcm2835.rst          |   4 +-
 arch/arm/boards/raspberry-pi/lowlevel.c   |   3 +
 arch/arm/boards/raspberry-pi/rpi-common.c |  11 ++
 arch/arm/configs/rpi_v8a_defconfig        |   2 +
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/bcm2712-rpi-5.dts            |   4 +
 arch/arm/dts/bcm2712-rpi.dtsi             |  14 +++
 arch/arm/include/asm/system_info.h        |   3 +
 arch/arm/mach-bcm283x/Kconfig             |   6 ++
 arch/arm/mach-bcm283x/core.c              |   4 +-
 common/Kconfig.debug_ll                   |   8 ++
 drivers/mci/Kconfig                       |   5 +
 drivers/mci/Makefile                      |   1 +
 drivers/mci/bcmstb-sdhci.c                | 165 ++++++++++++++++++++++++++++++
 include/mach/bcm283x/debug_ll.h           |  10 ++
 include/mach/bcm283x/mbox.h               |   1 +
 include/mach/bcm283x/platform.h           |   1 +
 17 files changed, 240 insertions(+), 3 deletions(-)
---
base-commit: 42e510a258d7c276c35f06c103e685c80d376eab
change-id: 20260901-add-rpi5-support-8bfa43e1c9b7

Best regards,
--  
Andrei Lalaev <andrey.lalaev@gmail.com>




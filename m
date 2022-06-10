Delivery-date: Fri, 10 Jun 2022 10:58:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaTC-009qOu-Iy
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 10:58:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaTA-00053U-GU
	for lore@pengutronix.de; Fri, 10 Jun 2022 10:58:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rkx6X/bK9ke0CozxcrXOWvrT9b2m7vZZuj8tDfqM4fw=; b=KFMWK9FDDui5D7
	3Rh2dcRPfSXdFXa+moYFNnRThR5hWQpvdZnx3q+KMmEhiIqTz0aQRqSDS98Kp/LgYfSXr4J18BVkA
	vxv/CqYX6TfdKbdDi/tCEDLpgFydX4P34a1JHfJHVoIRSzaifOf2Ar8zgDMaXre28PXd1DID73+yF
	pebw677lb3XMG/2ZxNgY4Tkbub7FDnkb+dGurez/X296MRNG68KlR/jiy4uJ3QYVW1BFgKubpivss
	xRaUGeyxnLp1ivqRnzry8/cZY+SzOVlB0R4tB5BtXeF9I76EiS9uzd9jA1mNBPjLaDtQ7QEEgb4uj
	va/yVchf9ynQb95072Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaRt-006xWq-C2; Fri, 10 Jun 2022 08:56:57 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaRk-006xV0-3A
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 08:56:49 +0000
Received: by mail-lj1-x22c.google.com with SMTP id d18so484327ljc.4
        for <barebox@lists.infradead.org>; Fri, 10 Jun 2022 01:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MG7x+cszDt2EYMh+QsTy1bGftpG1CyP7vCnCDreuye8=;
        b=jXcdTS/G4RyvfNTTOkCyOzaJKMUPm7pYHb/RgHpAf6x/LLy68k4IuebyfSUpQtIAcA
         1f6SvYv7F1buncFA7l078a9F8OEQTEZwLgCfXdpF6piag5RANf9zc8GZuQWvoxBiUlS6
         NhRtECmLz+40SCQsveWx2N6THaPLd3OlMpSSrdzc6ynG95nnXsgiJk02svm8EtVJstTB
         fdaexCNcuc0tJVni7FVz8OkALg4wawc69r3Cx4Der0+lAEKMLeXs7SZLj/WRQvK3ryu9
         ZXqJCzuFUVu0tYkFFDKGZKPBA9muVf7k5mtKM+FqKIVEjLjw1PKhmqTHmTJ38ocU2Tkd
         Y/bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MG7x+cszDt2EYMh+QsTy1bGftpG1CyP7vCnCDreuye8=;
        b=U5yiFrRyJoGzEQZtR3X6uatw1KEG01KjZOESW7ZWggL8MPE5ZdvGHLeWaa8mnzjMEB
         4aNPhfyL291bXa+RupGbXFIr7CNc2doTuEs/CNPGtGIuSM0Kj5oUZ9aHuXsn5zRQevnm
         EDVAKDZpTbMggggwVy0l1WnPsMI/zk5cnPXXUkejJb9O6lAM+DPHK/7peItpOmgvmcRg
         kg8r7KrdRT6CfREF7INfHPalRFVh054N1tDcAEXz2j8vokgeU5KDtFUCjq5VQOQdrKeE
         XZGkhiidVZ7Ulg9V4Yh7i+wsqXLoQm+E6sn3xVMWVy9/zrVXmlMnBLta6nm5jOJYU/d4
         iztg==
X-Gm-Message-State: AOAM530V2uOjm78tEUUQ9XZUyX9rMBUKgfK4IuUzE+pDn9rqhPkPJj7q
	mE52KD4mwdOVupr+GHozaEFSsff2uPw=
X-Google-Smtp-Source: ABdhPJxOB1ehny1vGojsdsFNGdSGClbVtW4vZTgWf6Bw3MC4Cqdr2RozVRQ7n9nDOCEkLKgBVTA2AQ==
X-Received: by 2002:a2e:a16d:0:b0:255:c0ef:b53b with SMTP id u13-20020a2ea16d000000b00255c0efb53bmr6624016ljl.183.1654851405630;
        Fri, 10 Jun 2022 01:56:45 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q9-20020ac25109000000b00479395286ffsm2484410lfb.107.2022.06.10.01.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 01:56:44 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 11:56:33 +0300
Message-Id: <20220610085633.21606-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610085633.21606-1-eagle.alexander923@gmail.com>
References: <20220610085633.21606-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_015648_185526_4393ED08 
X-CRM114-Status: UNSURE (   6.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 0/2] Context storage for the clocksource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

First patch: Implement "ctx" field for struct clocksource and
convert all users to updated structure.

Second patch: Simple example to context usage.

Alexander Shiyan (2):
  clocksource: Introduce a context storage for the clocksource structure
  clocksource: arm_global_timer: Convert driver to use clocksource
    context field

 arch/arm/mach-at91/at91rm9200_time.c        |  4 +--
 arch/arm/mach-davinci/time.c                |  4 +--
 arch/arm/mach-ep93xx/clocksource.c          |  4 +--
 arch/arm/mach-mxs/clocksource-imx23.c       |  4 +--
 arch/arm/mach-mxs/clocksource-imx28.c       |  4 +--
 arch/arm/mach-pxa/clocksource.c             |  4 +--
 arch/arm/mach-samsung/s3c-timer.c           |  4 +--
 arch/arm/mach-tegra/tegra20-timer.c         |  4 +--
 arch/arm/mach-versatile/core.c              |  4 +--
 arch/mips/lib/csrc-r4k.c                    |  4 +--
 arch/mips/mach-xburst/csrc-jz4750.c         |  4 +--
 arch/openrisc/lib/clock.c                   |  4 +--
 arch/powerpc/mach-mpc5xxx/time.c            |  4 +--
 arch/powerpc/mach-mpc85xx/time.c            |  4 +--
 arch/sandbox/board/clock.c                  |  4 +--
 common/clock.c                              | 18 ++++++++-----
 drivers/clocksource/amba-sp804.c            |  4 +--
 drivers/clocksource/arm_architected_timer.c |  4 +--
 drivers/clocksource/arm_global_timer.c      | 29 ++++++++++++---------
 drivers/clocksource/arm_smp_twd.c           |  4 +--
 drivers/clocksource/armv7m_systick.c        |  4 +--
 drivers/clocksource/bcm2835.c               |  4 +--
 drivers/clocksource/clps711x.c              |  4 +--
 drivers/clocksource/digic.c                 |  4 +--
 drivers/clocksource/dw_apb_timer.c          |  4 +--
 drivers/clocksource/efi.c                   |  4 +--
 drivers/clocksource/efi_x86.c               |  4 +--
 drivers/clocksource/kvx_timer.c             |  4 +--
 drivers/clocksource/mvebu.c                 |  4 +--
 drivers/clocksource/nomadik.c               |  4 +--
 drivers/clocksource/orion.c                 |  4 +--
 drivers/clocksource/rk_timer.c              |  4 +--
 drivers/clocksource/timer-atmel-pit.c       |  4 +--
 drivers/clocksource/timer-clint.c           |  4 +--
 drivers/clocksource/timer-imx-gpt.c         |  4 +--
 drivers/clocksource/timer-riscv.c           |  6 ++---
 drivers/clocksource/timer-stm32.c           |  4 +--
 drivers/clocksource/timer-ti-32k.c          |  4 +--
 drivers/clocksource/timer-ti-dm.c           |  4 +--
 drivers/clocksource/uemd.c                  |  4 +--
 include/clock.h                             |  7 ++---
 41 files changed, 109 insertions(+), 99 deletions(-)

-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


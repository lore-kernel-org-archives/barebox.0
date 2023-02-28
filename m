Delivery-date: Tue, 28 Feb 2023 11:36:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWxKx-004bRr-UA
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 11:36:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWxKx-0007R8-Fp
	for lore@pengutronix.de; Tue, 28 Feb 2023 11:36:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ett/V3l8wQrDcBpawfP2HygDMcE35/C0VW2lnP6FXno=; b=i3dZ3n1X2mS+WF
	lEU0jT+RjcD6ylCg2Yo4KwkML7UBHGMJbZyV15XWXrP+hjUFVHlDh8qcnnu9ycAs+rs3TUqqAjISo
	xE8FneYWHdocERLwRxyeXnFy/D2SeG8cinV2EsqUtey7l6YzKd+KLq/+0/61fH++oHyLvE2ri6gu2
	dY/aFLcALRlm0lGZucHh8jiCbeBEIZWhiGd6DXYke6U6fSB7RtlJWfrFslOB87LcNBgeXIEzkK2+K
	38EUREmSKQhZErPqruTwGh7vrqz1UYzobDrNR9ptMjpYQ/TK0mGd2u0r+XPIuALsvmkwI2Mv/xdrL
	rO0IXC3sTCgM2a9Jwhbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWxJ9-00Cg28-QX; Tue, 28 Feb 2023 10:34:08 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWxIC-00CfaC-3l
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 10:33:09 +0000
Received: by mail-lj1-x236.google.com with SMTP id t14so9647070ljd.5
        for <barebox@lists.infradead.org>; Tue, 28 Feb 2023 02:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ett/V3l8wQrDcBpawfP2HygDMcE35/C0VW2lnP6FXno=;
        b=Jgxegdf8jQBCwGZACvgjHH9x1crMaKs/pV5DwryDhOAxceExV1HfdDhLFOQFFykp00
         rO0nA8Qeew8qbjQeSyMZEL48jSA3WAyByXaBOXCaUjwGTbNPpJlzEn4QmHRlXpF8zM43
         X8wtkVzl29XPxERNBAB9O4XUVXwAIKPK7MLBw727RhHVZGjeiB2BOZZ092KkxG6nDvUa
         VVFDxbXdnKNxAAVnyjV9WsYV1gjggqGpsUwWXtgVzlqVrPhwjZ6Fa9xMI3kkq55xjaBL
         wsRXFONO25QkU8Grc1A//NvekPwQLT09SpKnYChMJ9JcU/1e+hGBlRhOeAuUQSPua/oz
         AvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ett/V3l8wQrDcBpawfP2HygDMcE35/C0VW2lnP6FXno=;
        b=1utepFoIihrBADewmCQ5y/SrWussrIUCZQZ3MEUNg+AHFlFnfHdwCFHZ2D3Uv+KLxL
         YLrjU0BYG7zsasdb2Q6PRwz7oFPcb0TAOs267y0yiYrm5yCOJ+xdZk4nq4e1QpcAzF+o
         UdUS/VZqkNyQ3X+tJbvF6o7QvUwD1TR1Rfru5nyqRRQnli6EgqBmdHSk/T7uAEvFf/If
         /mJ1iVxhFsQ+pPRxPr9iBs9YXpM5CtmIgqIlwK11FpcfsgtLe9QyonsEzuz9CDA3oIz9
         r2vnG/9j5wFpZ4Zn/RaLbRpu4SMk5vy24rvLaztjRFnGXpEpXqiQoSoFpPK9hG5UmPyb
         QkBA==
X-Gm-Message-State: AO0yUKXOz0MSdWkwgdpcsprZrnIyX62CXps3G4KRK/uhvjNPilhcK04s
	7xmAI/jzp8CWe0PgR3kuxtaFXDmUWvoP4FeJ
X-Google-Smtp-Source: AK7set9aQkEsBs3WlFnlo8xJ6rKpcGxZYYwqsPB/xt2c7Ktc3unOctUIBGf5oJi4lTRLPHFqB7JxHw==
X-Received: by 2002:a05:651c:a05:b0:295:b0aa:978a with SMTP id k5-20020a05651c0a0500b00295b0aa978amr2826270ljq.6.1677580382718;
        Tue, 28 Feb 2023 02:33:02 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id p18-20020a2ea4d2000000b002953cc656dasm1127003ljm.87.2023.02.28.02.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 02:33:02 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 28 Feb 2023 13:32:46 +0300
Message-Id: <20230228103248.2118342-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_023308_238657_A8FEE8D4 
X-CRM114-Status: GOOD (  14.95  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 0/2] dma: clean up streaming DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes some incoherence between dma_map/free_coherent() and
dma_sync_single_for_*() functions. While the former do appropriate
cpu/dma conversions, the latter do not. This also fixes streaming DMA
for MIPS CPUs and cleans up the interface somewhat.

I want to get some thoughts on whether those are the appropriate changes
to make and if I missed something important.

The changes are split in two parts for now so it would be easier to
review them. The first commit is the main part. It contains interface
changes and arch-specific code adjustments. The second one just updates
the functions usage in drivers.

Denis Orlov (2):
  dma: rework dma_sync_single interface
  dma: update dma_sync_single uses in drivers

 arch/arm/cpu/mmu-common.c            |   9 +--
 arch/arm/cpu/mmu.c                   |  17 +++--
 arch/arm/cpu/mmu_64.c                |  13 ++--
 arch/arm/include/asm/dma.h           |  12 ++--
 arch/arm/mach-bcm283x/mbox.c         |   4 +-
 arch/kvx/lib/dma-default.c           |  16 +++--
 arch/mips/lib/dma-default.c          |  12 ++--
 arch/riscv/cpu/dma.c                 |  23 +++---
 arch/riscv/include/asm/dma.h         |   4 +-
 arch/sandbox/include/asm/dma.h       |  12 ++--
 arch/x86/include/asm/dma.h           |  12 ++--
 drivers/crypto/caam/caam-blobgen.c   |  28 ++++----
 drivers/crypto/caam/caamrng.c        |   6 +-
 drivers/crypto/caam/rng_self_test.c  |   6 +-
 drivers/dma/Makefile                 |   1 -
 drivers/dma/map.c                    |  39 -----------
 drivers/mci/dove-sdhci.c             |   8 +--
 drivers/mci/stm32_sdmmc2.c           |   8 +--
 drivers/mci/tegra-sdmmc.c            |   8 +--
 drivers/net/ag71xx.c                 |   8 +--
 drivers/net/arc_emac.c               |  10 +--
 drivers/net/at91_ether.c             |   8 +--
 drivers/net/bcmgenet.c               |   4 +-
 drivers/net/cpsw.c                   |   8 +--
 drivers/net/davinci_emac.c           |   8 +--
 drivers/net/designware.c             |  10 +--
 drivers/net/designware_eqos.c        |   4 +-
 drivers/net/e1000/main.c             |   4 +-
 drivers/net/fec_imx.c                |   4 +-
 drivers/net/fsl-fman.c               |   7 +-
 drivers/net/macb.c                   |  20 +++---
 drivers/net/mvneta.c                 |   8 +--
 drivers/net/orion-gbe.c              |   8 +--
 drivers/net/rtl8169.c                |  12 ++--
 drivers/soc/sifive/sifive_l2_cache.c |   2 +-
 drivers/soc/starfive/jh7100_dma.c    |   2 +-
 drivers/usb/gadget/fsl_udc.c         |   4 +-
 drivers/usb/host/ohci-hcd.c          |   6 +-
 include/dma.h                        | 101 +++++++++++++++++++--------
 39 files changed, 240 insertions(+), 236 deletions(-)
 delete mode 100644 drivers/dma/map.c

-- 
2.30.2




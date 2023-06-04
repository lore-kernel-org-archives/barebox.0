Delivery-date: Sun, 04 Jun 2023 23:51:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q5vdb-00AwtF-GX
	for lore@lore.pengutronix.de; Sun, 04 Jun 2023 23:51:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q5vdZ-0004pj-4C
	for lore@pengutronix.de; Sun, 04 Jun 2023 23:51:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LR9WS+oisXhqQYGd7lt2oe7hWZ3H/KfBVXEx+vdykic=; b=bH8+9Nib2k2Tox
	EDZr54eOLnVDQsX5qGR35jIwFMd/eZVP33OZqR+N/OyySodX0/aXm3U2crvg8NNRdv+hui1InhiBY
	D9eZZZB5Ig+Lf8IEBTv6cqBW0dU/lfjWUjqOC7RGuvWn0j5QzajjcSLfsDsktsRpe7uOb71/vLzoz
	boRGOdgFhc1tvRPZl8xpxiRFacY5UC8ifn822o3GD0S+qAVQDfUjF5XSuAsjlqBLtVjPnF08YQ4G5
	Pep7HUT9ixy/XJs6Twoxu4bvxsXq+bHyUsVBt485znotyZnmF32Ilhl0W7ygg/J6WDD7tGnFGTGWX
	wVV5k1lcu2j4nmloORsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5vcP-00DEE3-0H;
	Sun, 04 Jun 2023 21:50:33 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5vcM-00DECb-2X
	for barebox@lists.infradead.org;
	Sun, 04 Jun 2023 21:50:32 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b1badb8f9bso19175021fa.1
        for <barebox@lists.infradead.org>; Sun, 04 Jun 2023 14:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685915428; x=1688507428;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LR9WS+oisXhqQYGd7lt2oe7hWZ3H/KfBVXEx+vdykic=;
        b=ga6MK6TOi2XEg1nJ4IIRsMcQRBrP3/l0UgBsxaS81uUv2a5+g+/gaA2e8D+1cZfBx0
         dTJwzLH484iCcoajOpZbXJ2YniHDGVA6vR4SW7SaDiQxkuVLnhioQ4NFNH6kd8uLPgql
         IbERZA/3W1H5gvcbat4UMgssRNnfbxwzwBgok5G40jcusjDwjG1QKSWnHattBZ1o7qCA
         HFVu/vYRCAzJB2Hnrb1gJF5yFsL1TJL9GaH/Ts4nmYrn7i9UbyhMLU9xKEtytZSal8w3
         l98naqsqmhcyq6GFXtddgMUsj5g8FZt/lYXywgJ7Oksd6qneS8L95IOVFd/9HagHLcQR
         tqhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685915428; x=1688507428;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LR9WS+oisXhqQYGd7lt2oe7hWZ3H/KfBVXEx+vdykic=;
        b=Q/sNlRQrQSd+spL8yPsIJ4rHof94VkuB2/WCHeRtjc1XZib1Uhmjz0c6yDF3YhzdvP
         3/r+3Da3H8J5gQLYAO5jDTwgGjxa5yOZqJhNoompL7lZYd0AEv5PSQJU0qGvBimjbVbn
         99HkYw4mYMPS1kmJAHUntausDhHLFLSEiEnlq0+Nn28J62qLqq1mVhQWGg7FqBRniy+c
         d8ORrLfE4N+7JpU/H8V7djtGvTE2c3fhD3qmmGdBG0m180OMJYymJ4kHBBi7c0dFEdhl
         hJ0qPWyXf+gvr0b9ntgful/JMzcDdzfQ3weibssrwsLcAZbl7wsQLn1GeTyioXw9qcg9
         k0Yw==
X-Gm-Message-State: AC+VfDwIljJWwi25MpGHtc2uAIgCjfKelODoQrErgYGl6H7Oov66tdQo
	ByekjyXSi3ELBVJ5eIOdzqT6wXaUGjEKeQ==
X-Google-Smtp-Source: ACHHUZ4egT8BcZBukVhz8+7e1T1+72IxC+nS1Gmuj6lyyJ66KRMHEnbjn5DKxkHp+GZN68D6Ts/ntA==
X-Received: by 2002:a2e:8783:0:b0:2ae:db65:2d01 with SMTP id n3-20020a2e8783000000b002aedb652d01mr3179752lji.23.1685915427976;
        Sun, 04 Jun 2023 14:50:27 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.237])
        by smtp.gmail.com with ESMTPSA id 7-20020a05651c00c700b002adc6c2cb3bsm1173561ljr.5.2023.06.04.14.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 14:50:27 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 00:45:00 +0300
Message-ID: <20230604215002.20240-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_145030_863876_486B6D49 
X-CRM114-Status: GOOD (  11.86  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] dma: rework streaming DMA interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes issues with streaming DMA on MIPS and more or less properly
fixes support for non 1-to-1 mappings via 'dma-ranges' device tree
property.

It needs to be tested properly on non-MIPS architectures as I only
have tested the compilation for some of those.

The differences from RFC include merging two parts of the patch and
dropping changes not really related to the matter at hand.

Denis Orlov (2):
  dma: rework dma_sync_single_for_*() interface
  net: macb: remove const from dev pointer in macb_device

 arch/arm/cpu/dma_32.c               | 17 +++---
 arch/arm/cpu/dma_64.c               | 13 +++--
 arch/arm/cpu/mmu-common.c           |  9 ++--
 arch/arm/include/asm/dma.h          | 12 ++---
 arch/arm/mach-bcm283x/mbox.c        |  4 +-
 arch/kvx/lib/dma-default.c          | 16 +++---
 arch/mips/lib/dma-default.c         | 18 +++----
 arch/riscv/cpu/dma.c                | 23 +++++----
 arch/sandbox/include/asm/dma.h      | 12 ++---
 arch/x86/include/asm/dma.h          | 12 ++---
 drivers/crypto/caam/caam-blobgen.c  | 28 +++++-----
 drivers/crypto/caam/caamrng.c       |  6 +--
 drivers/crypto/caam/rng_self_test.c |  6 +--
 drivers/dma/Makefile                |  1 -
 drivers/dma/map.c                   | 39 --------------
 drivers/mci/dove-sdhci.c            |  8 +--
 drivers/mci/stm32_sdmmc2.c          |  8 +--
 drivers/mci/tegra-sdmmc.c           |  8 +--
 drivers/net/ag71xx.c                |  8 +--
 drivers/net/arc_emac.c              | 10 ++--
 drivers/net/at91_ether.c            | 11 ++--
 drivers/net/bcmgenet.c              |  4 +-
 drivers/net/cpsw.c                  |  8 +--
 drivers/net/davinci_emac.c          |  8 +--
 drivers/net/designware.c            | 10 ++--
 drivers/net/designware_eqos.c       |  6 ++-
 drivers/net/e1000/main.c            |  4 +-
 drivers/net/fec_imx.c               |  4 +-
 drivers/net/fsl-fman.c              |  7 +--
 drivers/net/macb.c                  | 22 ++++----
 drivers/net/mvneta.c                |  8 +--
 drivers/net/orion-gbe.c             |  8 +--
 drivers/net/r8169_main.c            | 10 ++--
 drivers/usb/gadget/udc/fsl_udc.c    |  8 +--
 drivers/usb/host/ohci-hcd.c         |  7 +--
 include/dma.h                       | 80 ++++++++++++++++++++++-------
 36 files changed, 237 insertions(+), 226 deletions(-)
 delete mode 100644 drivers/dma/map.c

-- 
2.41.0




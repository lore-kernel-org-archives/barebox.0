Delivery-date: Wed, 06 Nov 2024 16:37:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6D-005Zyb-06
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:37:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6D-0004A6-Mx
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:37:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3UfLCaqjyMfidS/Nf6kaxFSDztzhoQGUgAxxpwzrx+Y=; b=x7cJNrZgBozoX5
	RS0euPIFTsdmBNuwIPWXJovLi0Rhqnb9mjm458qL2ZEWiYkT1OP50eaMu4+tJZitWyMpCYxNC9vLx
	0p5PIV6XWEY+Lr33phiHNiZdKmy1IaoDJshZNCoiAszoh5kZARmslt/53PvnrKSb7NSTjwsd4trOz
	//9KZhrU0jmopZ9vNyjULT2LXz4gEDuimblcbfM71idNrCUVFZVRlplclS6VkKk90n9iqzFa33QDS
	r7cZVSZtz4bz52OSX2Ue/1ElWY2dlb8w9NOIJCTI/hZW+13VPdthu+4tsNKlnky+Gb+Sbua1vt40Q
	FGDf/zIgnGHZ3XCGnRYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5o-00000003qZO-2Ah3;
	Wed, 06 Nov 2024 15:37:12 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5k-00000003qWy-1L4i
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:37:09 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-37d4ac91d97so5802379f8f.2
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:37:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730907426; x=1731512226; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3UfLCaqjyMfidS/Nf6kaxFSDztzhoQGUgAxxpwzrx+Y=;
        b=Z7eSE5EQrG2b8+dvrSddy4T+s1CxJiFjbGDXim4El3WGYpru7WUj1iWMCkOzhmRRhW
         vGd9281vfeRH/3Di+NDBbN4FbQkSMAJEhVZnM785f5tEEk9xUQiIr0xg19Vcqtg8nrf0
         4cKMkUTG1KzBv2rzLSDCzvE2SRKywFNZLDuwz8yA/z/vqPlPUSvmIX95ev2BaNg6dbwb
         L9jLRCXTyKD3PYigBi+0//N+11qc1gwGuc4TvrkGqk4rHZx9dWldLWzVYDKQbO1VdU9o
         JvJ3mWx2/lUIdYRrMzcHDftGO0edOfDBNv7Jh6rW1L45aQOm1NPLC8Rwsl6va9O+h4Vn
         K5jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730907426; x=1731512226;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3UfLCaqjyMfidS/Nf6kaxFSDztzhoQGUgAxxpwzrx+Y=;
        b=GR4EDId09KIt05NjjICl5FcPV8Wr/Gw0rpZKNINO3KA7Qm4Sd7OmxhDL2r/A+8yJKQ
         J6m0Bl189Mb2Y8w4mV/VsxzgeLuCcAjkDWckWJ5qjfnC+/evuFKx36b1d9Ld8SG3EshC
         WPSGgO2r0b8XR7NFKdWb1NyLhNTFZocqRk48gmf+EPmPJdgUdghSPkkAZHT8ZZYZrnbg
         MK6mBLZ71amAZVPmJhX/u72ISSCihhVp8k0+q/6ruCkcNAAs5YM70SReJO/u7KXXkE/T
         FYbOX41ya06cI7Dh0gqfDk1xgVNzV6TuB1kdlDKuMq+gOMjH2Hktnddl0PTOgeKUoDnj
         LI0w==
X-Gm-Message-State: AOJu0Yxxg1SPrNl1xu6W2ga5DxEGMRZj/TzJhkRINGDymSy+ud6eaHfk
	ljzzJtObKpWd2xXzkno1l2pFVp92+xmD4zTqWtXu1sRsbDrjNlGYz8r0MLAOE7A=
X-Google-Smtp-Source: AGHT+IE35nsnqeVO70c7rLpGPvzoLRtiNbj2n6tahGyFXoAyFQyQDK+C017YTIwHBGzK0Iyh5xP4aw==
X-Received: by 2002:a5d:59ab:0:b0:37c:cdbf:2cc0 with SMTP id ffacd0b85a97d-381c7ae06e0mr22648353f8f.53.1730907425740;
        Wed, 06 Nov 2024 07:37:05 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c113e5cbsm19608925f8f.80.2024.11.06.07.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:37:05 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
X-Google-Original-From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:36:58 +0100
Message-ID: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073708_368625_CD9BD165 
X-CRM114-Status: UNSURE (   9.63  )
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
Cc: a.fatoum@pengutronix.de, sebastien.bourdelin@rtone.fr, oss-contrib@rtone.fr
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/4] Add a struct mci_cmd::busy_timeout member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch series introduces the busy_timeout member as part of the
struct mci_cmd and fix the SDHCI timeout value for the BCM2711 SoC.

It comes as a first step to [1] and allow sdhci drivers to define their
timeout value.

[1] https://github.com/barebox/barebox/blob/master/drivers/mci/mci-core.c#L2109

Sebastien Bourdelin (4):
  mci: add a busy_timeout member to the struct mci_cmd
  mci: zeroed all structs mci_cmd instances
  mci: sdhci: use the busy_timeout value in the sdhci_wait_idle
    functions
  mci: bcm2835: set timeout value to 100ms

 arch/arm/mach-socfpga/arria10-xload-emmc.c |  2 +-
 drivers/mci/dwcmshc-sdhci.c                |  2 +-
 drivers/mci/imx-esdhc-pbl.c                |  4 +--
 drivers/mci/mci-bcm2835.c                  |  4 +++
 drivers/mci/mci-core.c                     | 34 +++++++++++-----------
 drivers/mci/sdhci.c                        | 14 +++++++--
 drivers/mci/sdhci.h                        |  2 ++
 drivers/mci/stm32_sdmmc2.c                 |  2 +-
 include/mci.h                              |  1 +
 9 files changed, 41 insertions(+), 24 deletions(-)

-- 
2.46.2




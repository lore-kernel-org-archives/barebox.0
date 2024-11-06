Delivery-date: Wed, 06 Nov 2024 16:26:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8hvG-005ZjD-0N
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:26:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8hvG-0002No-O5
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:26:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JkDc8MlIIwUsgQT7wEEnS1PCDyrbXPb3oLx6zA73W1A=; b=NhAGyNpXGc2qx0
	7CRREYHe4ZOsD5mI/5HyKUPPaXCkCu8BzYTTPh4hMC0Nu+egxRKmwq8/oGC4kZopB3oUgin1zDsuX
	EFExYSlHAyXPMi2fkPcWf/a/FTncYyhyA0s0NSRt4EQAGYFySb0a+NpjZd9SWIKx5KqY0bMtnFJHI
	2Ji9Ef0un5NNfNOXECu+mxjXqMLqwixl0HwsQMhMwqwBiGI4wIAx7FEzy8MIDyfPtVT+Rw4viQJ/r
	p/L73SncnSgyLo6ou5IE/aS9n9wIrMwV/T5aRgJEM316m1Wyp477ZS2WBrVfARxJruNZ4HKwty5g2
	pcUGOt8DjL1lc6EVrtyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8hul-00000003nsf-1mMG;
	Wed, 06 Nov 2024 15:25:47 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8huh-00000003npk-0t8q
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:25:45 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-37d47eff9acso4463114f8f.3
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730906741; x=1731511541; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JkDc8MlIIwUsgQT7wEEnS1PCDyrbXPb3oLx6zA73W1A=;
        b=SGnAeSo32+GbSJlPSR92/h7E5d8YAx5bPN2Pi1RAPKZmtniJYURGpfpH5ul+S6Pqb3
         x+E7MHT5Noi3267yt5+krSKFyaaDT3qz4omRE78vtiWMPcMuIrx1iBmP5v4YQw+ynI7I
         SOV9mo+ZPh0FdqqFZKraV8RGEakQwomzlbMrMWP+/vPfBeqmGG1AZtpn3VHCOFUe5AeR
         RYBSyyzWgayVhSH/sqS8D+Sq1I74n19+9LE2hAmf+5tnpHeFHWJV881GRt98Ojx7bbpW
         nqhZ6Zbj8+ni+CTgQHD+Smhjag6QWZ3LoYVHHf+wTW37MpArKalcLXUx36L3GNCQgS8/
         0XhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730906741; x=1731511541;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JkDc8MlIIwUsgQT7wEEnS1PCDyrbXPb3oLx6zA73W1A=;
        b=pASJv2te52jWU4TaGLxVEuSIG86Z9piZleasGA5Bgpr+EhfHlNcgo7IQJbwcYXku3P
         c2xGJjWju3y9QEeorb8nC/dkk8VCvroBKiGQaq1DJ+wP0DzFAArcgRsP5Lm0U9kw+kxp
         t1P5PmQqmXbAOO2+azYJjyGOHE5fTDUhvt7eUsYc4Rl+VQiJb0+F8fVhR0Mv1w+cwmLn
         IkFPDFzsYC2f6DTlQYOia5gVj6ffPlu28KwiR+4ByLWS6uRVLzzgLpSmXAqx2Zj4/O8Q
         arMVC70ooJn4JtPhHm0PWIXs3TWkxXPBFAGlomhaYUX3hfP5k0kIZ2Fq0dm39A46PWSW
         m6Mg==
X-Gm-Message-State: AOJu0YymjSk3PugT4HqKKHaeCaNxnhBw8xqRhFwa0odSOmHAN+VXd9nO
	tjvSpy+KZmc/TNNcuFDlSHnU17gxFWj24ZYrhNTiry24WppG9STpAMxIAgm/mhI=
X-Google-Smtp-Source: AGHT+IEnLJrBhte4TVG+mClzZ8Gbz54EuVU/GUsmRebZgei2jHfDMn2fa0s5302e1C9gyINeE+mNPQ==
X-Received: by 2002:a5d:47ac:0:b0:371:9360:c4a8 with SMTP id ffacd0b85a97d-381c7a472ecmr17815816f8f.6.1730906740561;
        Wed, 06 Nov 2024 07:25:40 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa6b58d1sm26781685e9.11.2024.11.06.07.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:25:39 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:25:21 +0100
Message-ID: <20241106152525.856201-1-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_072543_273817_D3B003B9 
X-CRM114-Status: UNSURE (   9.99  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] Add a struct mci_cmd::busy_timeout member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

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




Delivery-date: Thu, 31 Oct 2024 10:28:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RTy-0032p9-0s
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 10:28:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RTy-0007l1-SP
	for lore@pengutronix.de; Thu, 31 Oct 2024 10:28:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oz37kEBVlnkQ9WUaeLj4Vh9qN4/Qntdp6L7HsDuGkrQ=; b=cnHDIhTtXeEGrKxUR2fRLF/+p1
	dND47C2fQ5guPfkPIm9Tg9SZypPunvNtzVqlF2XTPnpABOpxgVs/dYlym1AxwZtCHasiXIEHAPnX/
	t1Nroj+835cEoUko/6iILm9y+MJB45rUQgcrYgXiqZvWOiSiIv9SmijWUgO8x1+OE2GDhbsRXdkaW
	dEX+xxNIczWK3MMDBlyM/AKzkH+KbroJJ6Z+AsxENaFc9rTaMGED08D1j20uQ9+rhkJCkvV43HbyX
	COLgh1yVEw/gD7VzEhgP1WwVEP6K/pWSupb3wv5aRUsWflxcKSESlXrQ06tQMpFt7nsJ6scKcAlNB
	CZCyO+Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RTR-000000034rS-1EQo;
	Thu, 31 Oct 2024 09:28:13 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RSj-000000034oI-1zz8
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 09:27:30 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4319399a411so6105045e9.2
        for <barebox@lists.infradead.org>; Thu, 31 Oct 2024 02:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730366847; x=1730971647; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oz37kEBVlnkQ9WUaeLj4Vh9qN4/Qntdp6L7HsDuGkrQ=;
        b=hZGUpqhWPEBhMsO4fWFhwnI83dRU9dt82NBie7BBQRzmjuwaxxuI7/sWzkdXzDr7lo
         gnq3IaV43L3oXJmYVl8b/algMFgwxfcwJ02cfkSWpGxMnUWLoPgBKsxo7N8pbJ5v3Pmk
         vQdCuJAn68LbEDzbUuiYdgbFmUVENZuBPNTbog5GJyxO2e16n/eoA6QswTzDRvcVacwe
         RjGR0Ug/WtwqPWkmBKUrD8kSeSarixI5P8PzkeyrjEFU6OogR9MzEtwDH7d7Mz+iViu4
         8I0I/BWStFtUAu623g5Rk3ts3YiGbt4tXKkNni6VLgP+pQvin3I0TInCAnufYXXWDNoH
         lTaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730366847; x=1730971647;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oz37kEBVlnkQ9WUaeLj4Vh9qN4/Qntdp6L7HsDuGkrQ=;
        b=OKcL1KI5e0RoYX2NqB5cMTLHaufS4lF0I6ZA7DnanldBTxpbxnwe7mtww/je0EiuX6
         BMIgT7854JuY6a3nixIfL3vy/qZUSEvn+NOWTesr9jraxDqPfbUqA76GVucH8NKLVpGA
         tu5xfxQ8acYvleUfWCQfCD5pUzG9oVn4Ga+U5KUqt4lhJrpDF0xZAHdOFnpjrwOVPQI0
         L/2gZK1wllZlayWKRUMvrtFaw69l3fMZEvKV5dtpjsYNjO42ieXJd898pmPtxyjrW9fs
         BspiE7//9aKAxQVBPzA/ml7xlcm8pitf2y+cKRHDf0o9g+S0pekEfsJgTkP/ubclN6tR
         PBzg==
X-Gm-Message-State: AOJu0YxXnBt8V57nzetacY0F0hbYgxzqk8o6KESNapuSIxeiKOLhIJ+R
	2gpJLoKIwqX5BXZOra2nJ20brB5WJxg3QeO2xnyd8u0PFhk+/kY1/KNXGoto
X-Google-Smtp-Source: AGHT+IGxpNns163NP79eapHV3BMiTZUZ9CkPaFt3AZooNIx8dBXLJeN2KFUbSBZUMPEQmX6gUA6Ugw==
X-Received: by 2002:a05:600c:3583:b0:42c:baf9:bee7 with SMTP id 5b1f17b1804b1-4319ac9ca86mr153524205e9.12.1730366847155;
        Thu, 31 Oct 2024 02:27:27 -0700 (PDT)
Received: from kaliss.. (82-65-217-21.subs.proxad.net. [82.65.217.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10d4d82sm1538825f8f.45.2024.10.31.02.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 02:27:26 -0700 (PDT)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Cc: oss-contrib@rtone.fr,
	sebastien.bourdelin@gmail.com,
	Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Date: Thu, 31 Oct 2024 10:27:17 +0100
Message-ID: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_022729_540335_346F84CE 
X-CRM114-Status: UNSURE (   9.21  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] Add a struct mci_cmd::busy_timeout member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

This patch series introduce the busy_timeout member as part of the
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




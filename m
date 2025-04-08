Delivery-date: Tue, 08 Apr 2025 09:09:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2350-009sm5-2m
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 09:09:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2350-0002Nc-Ad
	for lore@pengutronix.de; Tue, 08 Apr 2025 09:09:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9s+GbCUm/aNsdy+qToMzxjo7fmtZNsZQWP3bNFXlqnI=; b=Ip7xD8XbepnXOiFQxhvwIg1zzC
	1qDEhFv5jk1Jl8qKM5IYZRai8bGoPT+u4pi6mbePIA4kigEig3HpCKbTaN8q89zG87rVs6f2vQxte
	d+EoGiQXkLpjBJTzctit498YNVC/gYW8/3esx0nEmfKH5Ccshz7QSD5y1q/yzFjbZDJBPNnQNOG4x
	RqG/MUfmz3oOqJacgJ/Y7aS1lWDnBSti5FA7tTpIaGuYZSvxRulxX36085aFcZQMPlAlPIy8MfILP
	w2TWvGzhopzEJLepm/6xad6cNzG/lwV1rI0ESPem0rJBVMae2EdR5+XGGfx4Ssuo4g5OmqUrCJRId
	RCz+rdiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u234N-000000030VD-3wnm;
	Tue, 08 Apr 2025 07:08:27 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u22zx-00000002zXz-1LOX
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 07:03:54 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-54acc04516fso4876051e87.0
        for <barebox@lists.infradead.org>; Tue, 08 Apr 2025 00:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744095831; x=1744700631; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9s+GbCUm/aNsdy+qToMzxjo7fmtZNsZQWP3bNFXlqnI=;
        b=TwYbj48Ao4pu32Ap59hQa/xWXokbhOMs6crOGzrkgbX38utzeUnkL/NhQCI85uQ2KD
         WfyBBfqiN7Fq/msDIWsg13e/3ElYthJG+lPz+Yu0vY0qnuasrdH3lC25enDS5mhci755
         Rw3fOeqmew0XQ0sPbyrTYiWI6zZ4eGBvSOMB+5484w+46cPAnJYkuqxcU/ZVSSLE5O+Q
         hfKn4XD07lXyJ4bgv2vzebLDvu4HS2LKtcwXkekeFxssV2vbwf/Lu/7n32oCEsiGI5XB
         sJDVnZbXBDzM9J92cayJxbPgBliVxCq9TSsFGt18gTHlFC1vyHNV7Eb0zquX6lH8umy5
         jHsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744095831; x=1744700631;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9s+GbCUm/aNsdy+qToMzxjo7fmtZNsZQWP3bNFXlqnI=;
        b=KVKXrpLsrxR5Ga9CF1cNOJ3+xkBaTXJuNg1XVtrRBfdOeyEDGbo/e5HIfySS6YH6An
         AU8p4lBpzCPKDIyEEqikRUu7CTAEjoSPgR2K4bvPthJG2bmEC7IB/oD0upbgji/03wgk
         F2J+oDH+tKctaZv+Lz8BDJ0kxLEtlYdxvpBLmQFC4RyyShqGuSBQctn1ksvV+U07f0WK
         q+hLNuTcvtogdoOvXuJJuQISab4Rs/4hREvUkUk5u7d0uh7p/i7aaKGDGfdckAnGPy4e
         Cc3rSwruTeNfAd7WOd4Wi9j+26h67w8fJaLJ36M7D+ipWUbkhxdKZ4kcmW9vxifC4DAS
         fiUA==
X-Gm-Message-State: AOJu0YxIJwROIjRyIsKwSHuBToDibQzlmCaoL8KgPjyWrcFEC22Titgd
	zxUQw8W1K8fkLy0iGYbujIMHniTWuM3Wofwk8Db/DJvQ1bbOYiOA0UwuCw==
X-Gm-Gg: ASbGnct10bs64s6/yhyM2zH0OTjlsAKsQ5N6otOKihUXAhynDmBkYxEWat2iRUfNEkK
	9ilqeyJGEtT3R1AUtO52LJvlRTsVUVQoF/z+pVtFUcNqwSd537/w/fHC+tih3YK9m1/r3IDRSoJ
	E0RkBVDgdTqrlfPnybIgzUa84OWcPSJc+tna/tFSWhCW/htGGd/DSCQQ5+xWIHtctWsecMEuxEs
	RV2SA4W/ucJTie5rKHDLVF1iLTulAxeOUBpIVp4nM1u0KG+7PAiWoopj155G+kAb0zu1cHEMbTX
	Rr7na7ccPszGoyhQCopM1K1yEzsLh8Kt/NHmsE40CI7wRUxdC3WjiAI0a6V5Scu3oXs=
X-Google-Smtp-Source: AGHT+IE1a1JHlIyz8MTuYsbX/AKK9ULJdHTBsN7iZN8PHd03J9fZ5WEPORL8+FPQmReqIMGar3Ozxg==
X-Received: by 2002:a05:6512:ba0:b0:54b:117c:118a with SMTP id 2adb3069b0e04-54c2335dcd4mr3922916e87.55.1744095830832;
        Tue, 08 Apr 2025 00:03:50 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65ce3esm1438027e87.166.2025.04.08.00.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 00:03:50 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue,  8 Apr 2025 10:03:39 +0300
Message-Id: <20250408070339.53470-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_000353_357066_ED63AC64 
X-CRM114-Status: GOOD (  11.11  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: mci-core: Compile fix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix compilation error:
drivers/mci/mci-core.c: In function 'mci_part_add':
drivers/mci/mci-core.c:693:32: error: invalid storage class for function 'mmc_extract_gpp_units'
  693 | static __maybe_unused unsigned mmc_extract_gpp_units(const char *ecsd_info, unsigned idx)
      |                                ^~~~~~~~~~~~~~~~~~~~~
drivers/mci/mci-core.c:693:1: warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
  693 | static __maybe_unused unsigned mmc_extract_gpp_units(const char *ecsd_info, unsigned idx)
...

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mci/mci-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 76d679ed2e..2c82379b0d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -676,7 +676,7 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 
 	if (area_type == MMC_BLK_DATA_AREA_RPMB)
 		mci->rpmb_part = part;
-	else if (area_type == MMC_BLK_DATA_AREA_MAIN) {
+	else if (area_type == MMC_BLK_DATA_AREA_MAIN)
 		cdev_set_of_node(&part->blk.cdev, mci->host->hw_dev->of_node);
 
 	mci->nr_parts++;
-- 
2.39.1




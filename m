Delivery-date: Fri, 07 Mar 2025 12:25:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqVpM-00AzXL-1h
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 12:25:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqVpL-0001tK-AE
	for lore@pengutronix.de; Fri, 07 Mar 2025 12:25:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TomsZYWi4PwXqwS2YO+jhDma1gIyYUPKwWTYYzzz7i4=; b=eRot+ktKJtMxmZiTk+8s/2mDU8
	WzWUsI4+V9BwVIZooazBfTOMW96CVxgHMMh9YAKvq/MBr2xn+tZFjNVFV6fIKJVXcEbgIkz8s9dE3
	nk6HvHpMyVYNORqEyLTKCmQ0wUXoHBcZczjB6BCfMtTjbqkcL3iLmAgWpsKDFITTvtJ+lNABmOC1m
	N66eDDeK74fryDn3g31dK3g0hV+JNqU5E3XZC10V3a/SHO9NPVw9rRr6Z6xJNjhMQJqGzH3gVk04s
	PjFAECYGub85rLTxKWSbyjKiNYRPADo9RDb6/hTsl0RTo9zLixgjQeNYNdvMKkEKuKFSyakUL5akS
	QY36pE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqVod-0000000E29Q-0aXT;
	Fri, 07 Mar 2025 11:24:31 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqVmD-0000000E1bi-2IKH
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 11:22:02 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-30bb2fdbb09so16852281fa.2
        for <barebox@lists.infradead.org>; Fri, 07 Mar 2025 03:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741346519; x=1741951319; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TomsZYWi4PwXqwS2YO+jhDma1gIyYUPKwWTYYzzz7i4=;
        b=MsMRpBQwZBZrMG2AsxnvTGVbnNRBc6mVyiZdVRWTR1ZkxgvnaAdPbGYzlZMl8NPvw5
         rQNzoEJNRqmc0R8c6oeprl/076MB56cQfnYIS/iSiqgpkuGgQjSn4x64gsGMVKVZD1BL
         MRqDlK1lllYI8+HjOk6XhV221icaR/jAvRFTBokK6zkWwZc0b6/MK6DakjX//QShClox
         SrUh8AADwb/nKSAfXw1wTM8DGlhm20pCGoEByTEnQoLzxCRbgljq20K9kSpWPiH6+ZS2
         n6muyl3EoTPqTCk3D2wGekvVIUMwL+bhb7bq5dAeI0HthAfwpnPy6Wrix1tJrmx26/Az
         LAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741346519; x=1741951319;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TomsZYWi4PwXqwS2YO+jhDma1gIyYUPKwWTYYzzz7i4=;
        b=Dug7sFolaoI53bH+TUNQXIMg1bvuGt27buihGnJbBu68NNUNCY6TOI81ewrn9pWYIT
         2RIsBTm0+HQo0Yr5aFK+q2aedy8DkmgSYwC9r/gvpmUyusu3+jCp7UrYS9n6VDmfq4zv
         KyJ/nT2ccBNqmBqUSq2VPAdF34AekoVcxn+frhMaweGA9PV3talhqwc1yxmt1942oodS
         d35kw9MTZC9BvtiOjlX7ZYT3nRSsrb2vr6F2KGekvX5scMR8BsZGOYvjIBlux6Lvse5F
         QLfN+GU/tauprfEY0BDNrMAZVUX54Y81H3GAXLAw/5SOWicFTLYsyFNEnfM9szTau5zF
         6BzA==
X-Gm-Message-State: AOJu0YwKz8d5l9rpAvM0ENaeJ0zKYavGMGjS1NX0BHbed2uCb6T92TDI
	9U9k4b3xoD1tO5C4q1kGkALvj0esGnwqc/LiRraZ1Rh9e66xlOktJ0Emaw==
X-Gm-Gg: ASbGncs6DyNY0Nnb+mL9U8mRLx0UP7ncuJ10j+JGtria46aGKEGbsTnWyKUueiPsPko
	sZsLwLpFuPwA5em7xXXjlNsV5OmHpDalN///naoe6T+ivX1SmDJh4xOgDNG3v1JzeVMtkelCAVO
	fVf7fludy5P4N25lbn96p0H9T6t7guRKdoIrBqq4uyepIGDcPJRKGgqgFQwMQemm8z6/HTH0CRr
	Z3pOkBaqactkjhHMt6fgidAOiIGQ8+IoJh8rzVTSX5UdKtKdiuCQN4nFfR0kn251tqlbqnBA67O
	kh0o1dq9Q80q4ogNYuKe7X4/iPuX/i2OXHSCO1osb9G/Qwv9gIx0xBN1h0BvsDxtYRI7Tw==
X-Google-Smtp-Source: AGHT+IHNypvW9dBazVizTk+Q2UTHZHCw0bfdiTRnJI35edqokGpkWf1JiW6p9CG9muPVES4YUGCJmg==
X-Received: by 2002:a05:651c:1689:b0:302:1861:6df8 with SMTP id 38308e7fff4ca-30bf4635d39mr8425441fa.33.1741346518482;
        Fri, 07 Mar 2025 03:21:58 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be98d09edsm5027561fa.10.2025.03.07.03.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 03:21:57 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  7 Mar 2025 14:21:45 +0300
Message-Id: <20250307112145.3679965-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_032201_587642_FBF93AC0 
X-CRM114-Status: UNSURE (   8.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] images: at91: Fix MAX_PBL_IMAGE_SIZE value for xload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

he maximum allowed code size read from external boot source
by SAMA5Dx bootrom is 64KB.
It seems that the last allowed address is currently used,
let's fix this value for the verification script.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 images/Makefile.at91 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/images/Makefile.at91 b/images/Makefile.at91
index 06f8936893..81e7c22e8b 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -16,7 +16,7 @@ FILE_barebox-microchip-ksz9477-evb.img = start_sama5d3_xplained_ung8071.pblb
 image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
 
 pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071_xload_mmc
-MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_ung8071_xload_mmc = 0xffff
+MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_ung8071_xload_mmc = 0x10000
 FILE_barebox-microchip-ksz9477-evb-xload-mmc.img = start_sama5d3_xplained_ung8071_xload_mmc.pblb
 image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb-xload-mmc.img
 
@@ -25,7 +25,7 @@ FILE_barebox-microchip-sama5d3-eds.img = start_microchip_sama5d3_eds.pblb
 image-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += barebox-microchip-sama5d3-eds.img
 
 pblb-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += start_microchip_sama5d3_eds_xload_mmc
-MAX_PBL_IMAGE_SIZE_start_microchip_sama5d3_eds_xload_mmc = 0xffff
+MAX_PBL_IMAGE_SIZE_start_microchip_sama5d3_eds_xload_mmc = 0x10000
 FILE_barebox-microchip-sama5d3-eds-xload-mmc.img = start_microchip_sama5d3_eds_xload_mmc.pblb
 image-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += barebox-microchip-sama5d3-eds-xload-mmc.img
 
@@ -34,7 +34,7 @@ FILE_barebox-sama5d3-xplained.img = start_sama5d3_xplained.pblb
 image-$(CONFIG_MACH_SAMA5D3_XPLAINED) += barebox-sama5d3-xplained.img
 
 pblb-$(CONFIG_MACH_SAMA5D3_XPLAINED) += start_sama5d3_xplained_xload_mmc
-MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_xload_mmc = 0xffff
+MAX_PBL_IMAGE_SIZE_start_sama5d3_xplained_xload_mmc = 0x10000
 FILE_barebox-sama5d3-xplained-xload-mmc.img = start_sama5d3_xplained_xload_mmc.pblb
 image-$(CONFIG_MACH_SAMA5D3_XPLAINED) += barebox-sama5d3-xplained-xload-mmc.img
 
@@ -43,7 +43,7 @@ FILE_barebox-sama5d27-som1-ek.img = start_sama5d27_som1_ek.pblb
 image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek.img
 
 pblb-$(CONFIG_MACH_SAMA5D27_SOM1) += start_sama5d27_som1_ek_xload_mmc
-MAX_PBL_IMAGE_SIZE_start_sama5d27_som1_ek_xload_mmc = 0xffff
+MAX_PBL_IMAGE_SIZE_start_sama5d27_som1_ek_xload_mmc = 0x10000
 FILE_barebox-sama5d27-som1-ek-xload-mmc.img = start_sama5d27_som1_ek_xload_mmc.pblb
 image-$(CONFIG_MACH_SAMA5D27_SOM1) += barebox-sama5d27-som1-ek-xload-mmc.img
 
-- 
2.38.2




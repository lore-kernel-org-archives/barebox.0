Delivery-date: Thu, 20 Feb 2025 17:41:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl9cN-004mLE-26
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 17:41:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tl9cM-00064q-Dw
	for lore@pengutronix.de; Thu, 20 Feb 2025 17:41:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-Id:To:Subject:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8nHzvuygRdHc66hurl7MtOLzMEjudOxV9kOoAKYMzG0=; b=lG/hH8mT1WTxnY8nD5Hwz92px5
	uoZMb1R9HFDuWT0XdUuO/hCryQfJHy1iWOktphkx0XANqRXxoQuD5sZexFtv94wWj3Atv0wZItUiA
	GM6Glz/9f86MAnJSZQMTWwKME2D+/0ZMmrMfjon82ltQDtfXtgjZfVb0xLxA0+A1Zaqc74GM/CenF
	dDnu+gfjU8r46PbDeY4Iscftm04TfJ49S1FYT9Dn53YedLpjEzQIxAIut6htCAAIGVMSnWm5zPlP4
	8iPo6tA1ZJr7ll/UUtbyUqK5NveJIqt0+p5Krc4cTdGQxQuFKJ+A5QINRQ6PguOo9fq74N9mfG5Nb
	QxRgqkhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9bj-00000001uz5-1RZB;
	Thu, 20 Feb 2025 16:41:03 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9bg-00000001uwF-3LMD
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 16:41:01 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-38f5fc33602so679037f8f.0
        for <barebox@lists.infradead.org>; Thu, 20 Feb 2025 08:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740069659; x=1740674459; darn=lists.infradead.org;
        h=mime-version:message-id:to:subject:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8nHzvuygRdHc66hurl7MtOLzMEjudOxV9kOoAKYMzG0=;
        b=MHUJUjszYv36fgxe1AOVGWhqXo8D1MlS1M8vwjWzAxIRbfrkVNRDYOFL+yDTGpBxao
         1F78PtWp9ZlFliv7CWaysOhfrknUVheXA97ZViiCI5jEFhdeksaAbfKUwg6gT+B/bS1e
         tHPPZSmes7IOwmRt4MPILoXuhpUXsyqDFFKQgLZpehpYIaUl32cMbLcvRxKxY/lnrsls
         4TS4ZRRcN57oMAKa9VuLpN/T2ux3zpH51uB0Sat/0SJBJTVBDdXuu7Y/JcjuQ9KrF4Sq
         0Nq8p7Pj/f5DQ2FZVDxd0MTajmOweJKUjttwvWvwfLV8pHRETWgwISYVe000vaBSNEvb
         0YEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740069659; x=1740674459;
        h=mime-version:message-id:to:subject:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8nHzvuygRdHc66hurl7MtOLzMEjudOxV9kOoAKYMzG0=;
        b=VUq5zIbT1zvsvkYr5TPM0i7+/ZtMrVQUedMxvlltpWLn9f4k9+V2OFOkWoJ97ss8HC
         a1WReT0edWTAWX2wyJ2BslVLGWqee1o+L55kLzzr8LzjuDvcKX5F/f07Z9EyhWUwD3uo
         sxibXKQ0DgRoFXyxSzw28RqUyMKUdFNQhEDWxlfgwKtEhYc80FC9KaD98nKWvfRVRWdH
         SpI8jI09vGCqUMXxWRuZoSih8nW1lOX/0adAbl24tQhkSZaY+lu/ns7B3iuyyjglTsmy
         bpInaR+vD14+H1RVmPEOyEfWUiG4vwwyaeqGacihOkn6nFqz4zn8my6ca90w/9rbc4eO
         28Bw==
X-Gm-Message-State: AOJu0YxPsanUNrigO9IURpElV7gzUp5TYYPImYewk8Oa37aJyNPS+Lu8
	96rTjj2ZzxopoJgegA8s7SvfdAHugigcUVHF2sbUamdCCkyapbkgD1RkoA==
X-Gm-Gg: ASbGncvgMTa+ah8gyoG2sYF1r2FixxP5s+SKHh/XxZbGm43+Pgfq3zmrWHyy0+xzkhn
	/IRu9S/DwLr3LsewhUS+8VXgmAjOIgxgEemNYkCwyZTAzYu2m5XIIHxf/a1MGnSCzuSvkesOUCw
	TeplE2seS7sjcdQZ3+orCccLBpykGt5oXa7vlkdUrBbHpERfMGoYd+BPGGW0wX7BoEnBR7Is93i
	AWTHQRojVOn29hBEW/Z0KdT9/ktWdGdoElL2Ct/h6uxBP9Ms390cCzvIWyhRBLVLKMIuM0wRatx
	vfGJD5Sru1D0MfipY+23iyUR9uOUb1zOpL8sY7pD46wgXmY7vvkzl2E=
X-Google-Smtp-Source: AGHT+IGNLcg4izloMmGqnaAzPLGHEBky6LiXF6ue6F1SfwBcRRviS3dwlSlTlj9hLy5+pSgdJj4Xig==
X-Received: by 2002:adf:fb4a:0:b0:38d:ba8e:7327 with SMTP id ffacd0b85a97d-38f615b5c1bmr3210064f8f.8.1740069659010;
        Thu, 20 Feb 2025 08:40:59 -0800 (PST)
Received: from [192.168.47.169] (93-44-40-74.ip95.fastwebnet.it. [93.44.40.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258b4118sm21638832f8f.18.2025.02.20.08.40.58
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 08:40:58 -0800 (PST)
Date: Thu, 20 Feb 2025 18:39:56 +0100
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Message-Id: <K2TZRS.I55GET28HSJS3@gmail.com>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_084100_832993_21B6709E 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: boards: fix nand bbu_handler device paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bbu handler for nand now takes the device
path as parameter and no longer use the hardcoded
value.
Make the change accordingly to all the boards
using it.

Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
---
 arch/arm/boards/digi-ccimx6ulsom/board.c | 3 ++-
 arch/arm/boards/gateworks-ventana/board.c | 4 +++-
 arch/arm/boards/karo-tx6x/board.c | 3 ++-
 arch/arm/boards/phytec-som-imx6/board.c | 4 +++-
 4 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/digi-ccimx6ulsom/board.c 
b/arch/arm/boards/digi-ccimx6ulsom/board.c
index ef6828c02c..9765c65839 100644
--- a/arch/arm/boards/digi-ccimx6ulsom/board.c
+++ b/arch/arm/boards/digi-ccimx6ulsom/board.c
@@ -11,7 +11,8 @@ static int digi_ccimx6ulsbcpro_device_init(void)
  if (!of_machine_is_compatible("digi,ccimx6ulsbcpro"))
   return 0;

- imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+ imx6_bbu_nand_register_handler("nand", "/dev/nand0.barebox",
+ BBU_HANDLER_FLAG_DEFAULT);

  barebox_set_hostname("ccimx6ulsbcpro");

diff --git a/arch/arm/boards/gateworks-ventana/board.c 
b/arch/arm/boards/gateworks-ventana/board.c
index aa2137a971..9c0012b359 100644
--- a/arch/arm/boards/gateworks-ventana/board.c
+++ b/arch/arm/boards/gateworks-ventana/board.c
@@ -72,7 +72,9 @@ static int gw54xx_devices_init(void)
  if (gsc_get_rev(&client) < 'E')
   of_register_fixup(gw54xx_wdog_of_fixup, NULL);

- imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+ imx6_bbu_nand_register_handler("nand",
+ "/dev/nand0.barebox",
+ BBU_HANDLER_FLAG_DEFAULT);

  barebox_set_hostname("gw54xx");

diff --git a/arch/arm/boards/karo-tx6x/board.c 
b/arch/arm/boards/karo-tx6x/board.c
index f964ddefd1..1e14a75272 100644
--- a/arch/arm/boards/karo-tx6x/board.c
+++ b/arch/arm/boards/karo-tx6x/board.c
@@ -110,7 +110,8 @@ static int tx6x_devices_init(void)
   * this board has eMMC or NAND.
   */
  if (sbmr1 & (1 << 7)) {
- imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+ imx6_bbu_nand_register_handler("nand", "/dev/nand0.barebox",
+ BBU_HANDLER_FLAG_DEFAULT);
   of_device_enable_and_register_by_name("environment-nand");
   of_device_enable_and_register_by_alias("nand");
  } else {
diff --git a/arch/arm/boards/phytec-som-imx6/board.c 
b/arch/arm/boards/phytec-som-imx6/board.c
index 2db3fa1db8..7e6f61bc36 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -259,7 +259,9 @@ static int physom_imx6_probe(struct device *dev)
   imx6_bbu_internal_mmcboot_register_handler("mmc1-boot",
       "mmc1", 0);
  } else {
- imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+ imx6_bbu_nand_register_handler("nand",
+ "/dev/nand0.barebox",
+ BBU_HANDLER_FLAG_DEFAULT);
  }

  defaultenv_append_directory(defaultenv_physom_imx6);
-- 
2.25.1






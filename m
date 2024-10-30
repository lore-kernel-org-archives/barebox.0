Delivery-date: Wed, 30 Oct 2024 12:58:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Kq-002gM2-2u
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 12:58:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Kr-0005DP-HP
	for lore@pengutronix.de; Wed, 30 Oct 2024 12:58:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yzyGmenpXIik/dv0/5pA8C2bIetUQ3UyCP9jabCDKeU=; b=X+r+NgCGPlcJD/TfLPcDcWic94
	LLd93hgt85XBLQ4JvJ+sZ0LYuhCKf+V0ONCdb9qmL/yiLSxnXUiMVW6fISuV2c/y/DEXRPTGoHzXm
	bEe9hrzfKn1P7q1XtjhHo1OZcqnof5hFaLRpNL4idoMh1VOnj7h376a97Umuq96qHwG2eFGkPZyq3
	PUqKjmb7mAF70RyH8b1KU0juqLreXcWANYSMjaE9l9O/jsxxDOP3eos+TdKG/Uvh5gumhzmtEHRls
	ZDgauBxdF/mz5AjQHLXonrw7s4nmh1DYrc0THx9TLykBZouqegwyX/ID8gOwArjTW5GBa04sPbCs9
	6HvBUPPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t67KL-00000000F63-2jCQ;
	Wed, 30 Oct 2024 11:57:29 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t67HM-00000000ERY-1luL
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 11:54:25 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2fb3c3d5513so59026721fa.1
        for <barebox@lists.infradead.org>; Wed, 30 Oct 2024 04:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730289262; x=1730894062; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yzyGmenpXIik/dv0/5pA8C2bIetUQ3UyCP9jabCDKeU=;
        b=Ap7KTmjajt1h0HvFfR6MPKl8rNNIZvaqF0txWLqJoZJwnGgN3trhEj4KXFbldeeZOF
         HylqyNRuZpga0VdfZYNmA7PVBAMDaZeDaV9MbScf3oG+LAua34aFj/SnThygfZv7llw1
         ibqmPgh+5ovozvq1xAqgoMHHfwbgiwYja74XmrxMWe2KBOxnHE19bmkSCPbxoOJmyBr8
         vyRgw9f3lIQ8uFh6zYcncyP7KARyDf6Yk/SJsZn7m97xucIwo9vgfMXvyic30NTdEp+h
         9xp13CDaD5/DD0KoLq7dw/DSvVHGW/lDOcJ9r7SCzLFM/DYyzcHes3Rn4ltrOa8ikaPS
         QZNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730289262; x=1730894062;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yzyGmenpXIik/dv0/5pA8C2bIetUQ3UyCP9jabCDKeU=;
        b=a+aNa2kfOyAmGbnUfmOOIrNeM6PeDIeHAVR6cph244ZZL4cNwa3fXAKO9wo4h0iDE8
         9rauXcT2fc+xnB0ldsP0dItZsdTlalkAuD+Lj7mLrS3LsA8DLZNCCB+6pipNr9UulCbm
         6zpooKBtOxTLqVYCMiw18KQENsEM12dw2YGQiMMv1WIrzPcv8W/urj6DsC2thWD6ms9z
         rf3m4UK2sdpY7i1opGe1qkKdgk6uVFpxB7PB73Tp3QLY8B8aioTJMg97/LXUdjpod+at
         8zD9r6VHeiwaOd6SbzlW+qAjTTwc6Z6+Q835VQxB7QSLTBAU52VZ6GQmY8jeT5beJtDM
         WUOQ==
X-Gm-Message-State: AOJu0YysQKkFM3LIPf3CDvWk34K36UyIIQkjqPFCljcTGxL+qClEkEXz
	wJsY1omwSlFXVHJVryr2fVrmeRHaV7fsMhpp6DLWWJaWToi/gHdCcsnzFA==
X-Google-Smtp-Source: AGHT+IEkqV9t5vJ7KXCEuTEp1OnweQSPnWFXtqXZ+GEHM8cNVLbNqE0xerMDd0YwTMprzn9pi4/gZA==
X-Received: by 2002:a2e:4619:0:b0:2fb:59ec:4a32 with SMTP id 38308e7fff4ca-2fcbdff75a5mr58238401fa.25.1730289261889;
        Wed, 30 Oct 2024 04:54:21 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fd4ae6fc91sm2542321fa.1.2024.10.30.04.54.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 04:54:19 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 30 Oct 2024 14:54:07 +0300
Message-Id: <20241030115407.841758-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_045424_518972_8EEA11D7 
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Revert "mtd: nand: make interleaved placement optional"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This reverts commit d1fe68f1b010b83ddd3559ffbfcb70dca68b2563
and ec3b8c646bdc8c2ea0a78923ccb745012eabc097 (as a fixup).

The message "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled"
is always issued, regardless of the MTD ECC layout used, since it
is executed through "fallthrough" from the previous case statement.

Additionally, if !IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED)
is triggered, the patch calls break, which disables the additional checks.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mtd/nand/raw/Kconfig     | 4 ----
 drivers/mtd/nand/raw/nand_base.c | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index b6c6e62731..e9d1b83706 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -35,9 +35,6 @@ config NAND_ALLOW_ERASE_BAD
 config NAND_NEED_EXEC_OP
 	bool
 
-config NAND_NEED_ECC_PLACEMENT_INTERLEAVED
-	bool
-
 comment "Raw/parallel NAND flash controllers"
 
 config NAND_IMX
@@ -159,7 +156,6 @@ config MTD_NAND_DENALI
 	tristate "Support Denali NAND controller"
 	depends on HAS_DMA
 	select NAND_NEED_EXEC_OP
-	select NAND_NEED_ECC_PLACEMENT_INTERLEAVED
 	help
 	  Enable support for the Denali NAND controller.  This should be
 	  combined with either the PCI or platform drivers to provide device
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index b6bef46499..9769725026 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5671,10 +5671,6 @@ static int nand_set_ecc_on_host_ops(struct nand_chip *chip)
 		fallthrough;
 
 	case NAND_ECC_PLACEMENT_INTERLEAVED:
-		if (!IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED)) {
-			WARN(1, "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled\n");
-			break;
-		}
 		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
 		    (!ecc->read_page ||
 		     ecc->read_page == nand_read_page_hwecc ||
-- 
2.38.2




Delivery-date: Wed, 06 Nov 2024 07:04:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8Z9q-005QKG-27
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 07:04:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8Z9r-0000rO-9E
	for lore@pengutronix.de; Wed, 06 Nov 2024 07:04:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eWErqnzXSFidhtHk1NO72awWUgU+4Mj3Knf90QpEd6c=; b=vv6Cmahh9U1hEr0cwYd/3H76AA
	EwF5mOWJDpoavNoz7UfkWiIf6gq/nX/C8wEA1bvBBt8a31Coyv9JCae42GT1SkWT1CNEmBPWwWKq6
	I+GDZeIoXcHBJuty8WBwwMexMhhGUBv2UvaekTqkG0pnH2Xm5gPvxQ7z+Hi+Eh86wKBPiNIt0FsS9
	SPQwsGTF81Admz/uLxi+ov956R9+3FzuXbmBsOK4odcqiC5rWzCab+heE3RzM/yOj0DtUOwu4x9IG
	zF5H4lcA/hP/vwezL/IYtk0Unemao/r7jwzdMAV/4+kjaV1nRNjsL3R4sZ1v4mD23zm3aBASa0bdH
	EQiTOsAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8Z98-00000001w9r-0Dwm;
	Wed, 06 Nov 2024 06:04:02 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8Z94-00000001w98-2E12
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 06:04:00 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-539ee1acb86so6354709e87.0
        for <barebox@lists.infradead.org>; Tue, 05 Nov 2024 22:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730873034; x=1731477834; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eWErqnzXSFidhtHk1NO72awWUgU+4Mj3Knf90QpEd6c=;
        b=U+ZUM9LRcVTjxTXlegIpOSZMuOoRKR71WDd3DRq8qweaDW2X8+Lkc52YCqSd9eRBig
         OJ3iLHjflXdKPhZzKU3HwQoy3MDYN3Gq7xX6sLJ9tIqsD+WEnjAgltJLk92gZf2Oz9W+
         LJh7MXZqDbR6vDTQkyi/VjMp1tnuyK547kYZYccoW62b3yT3JD6Ksl/5Ce+bYnOLqZfF
         gCLIKM7OlgxHtL0WRiv8EWywgBpeaQHXfAdjVNVc1juqSAAZ/OpIMjoUPBUT9v7ktOmf
         l+xHzQlbJfd1W5K/Hf9fJ8ENK7w+PI+BJyTpaq05mYV1SSmeLnhGkqmRas155vn/jol3
         AyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730873034; x=1731477834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eWErqnzXSFidhtHk1NO72awWUgU+4Mj3Knf90QpEd6c=;
        b=IV9eYvT28YDVAlAEZeKaAluZWer35iODczIUhXswEGrave7gH0WRhC9pUOfcIcyYxh
         tQXxvXm8Tk+opzDDlUeHINp4cDRVgitMcKVGBMIYDH5a7CznwpkMBvKRAfSH93GQB5yw
         7pQNfdLMr4dVFPHqajZO4oQVcSG+Vc3qi9ca34jTxiAyAZ+ciZpA8nm6BP/ArFFN7Ema
         t6MsW4a0OV16+wmk0cc4G6yFTRTztiO+h1S49X4UK4Asqawf+YdhstBYL57ns6zAYgAs
         sEPJr8j1Lm1CEjDjXTNkI2nR/6WF0jFTZNa+3zois9eS7PtJv9ucb4IHou2/llNpiLw5
         xQpw==
X-Gm-Message-State: AOJu0Yyyfv8tsCZsJzHTckaIr9x5f2bW8M+X/FaGF3zHm/xVWLq0UukB
	U8+MpebGpoQacckUTfr3MN86Hv3owpzqttO7/UWFN5xHUQE/oDOV9lLghw==
X-Google-Smtp-Source: AGHT+IEUqq2FmZZEoJ7SlkwHlbVXf6HjwA3apkZ0mZtRFVT9dDNAVEp6QJo7MIn4g7VZfyxMO4SFeQ==
X-Received: by 2002:a05:6512:2809:b0:52e:987f:cfc6 with SMTP id 2adb3069b0e04-53d65e25188mr8085882e87.51.1730873033998;
        Tue, 05 Nov 2024 22:03:53 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bc959casm2359495e87.49.2024.11.05.22.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 22:03:51 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  6 Nov 2024 09:03:38 +0300
Message-Id: <20241106060338.8757-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_220358_634933_AA303DE3 
X-CRM114-Status: GOOD (  12.37  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ntd: nand: Fix unconditional message "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The message "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled"
is always issued, regardless of the MTD ECC layout used, since it
is executed through "fallthrough" from the previous case statement.

Additionally, if !IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED)
is triggered, the patch calls break, which disables the additional checks.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mtd/nand/raw/nand_base.c | 35 ++++++++++++++++----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index e586c4cc89..4ecad0a935 100644
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
@@ -5683,19 +5679,24 @@ static int nand_set_ecc_on_host_ops(struct nand_chip *chip)
 			WARN(1, "No ECC functions supplied; hardware ECC not possible\n");
 			return -EINVAL;
 		}
-		/* Use standard syndrome read/write page function? */
-		if (!ecc->read_page)
-			ecc->read_page = nand_read_page_syndrome;
-		if (!ecc->write_page)
-			ecc->write_page = nand_write_page_syndrome;
-		if (!ecc->read_page_raw)
-			ecc->read_page_raw = nand_read_page_raw_syndrome;
-		if (!ecc->write_page_raw)
-			ecc->write_page_raw = nand_write_page_raw_syndrome;
-		if (!ecc->read_oob)
-			ecc->read_oob = nand_read_oob_syndrome;
-		if (!ecc->write_oob)
-			ecc->write_oob = nand_write_oob_syndrome;
+		if (IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED)) {
+			/* Use standard syndrome read/write page function? */
+			if (!ecc->read_page)
+				ecc->read_page = nand_read_page_syndrome;
+			if (!ecc->write_page)
+				ecc->write_page = nand_write_page_syndrome;
+			if (!ecc->read_page_raw)
+				ecc->read_page_raw = nand_read_page_raw_syndrome;
+			if (!ecc->write_page_raw)
+				ecc->write_page_raw = nand_write_page_raw_syndrome;
+			if (!ecc->read_oob)
+				ecc->read_oob = nand_read_oob_syndrome;
+			if (!ecc->write_oob)
+				ecc->write_oob = nand_write_oob_syndrome;
+		} else {
+			if (ecc->placement == NAND_ECC_PLACEMENT_INTERLEAVED)
+				WARN(1, "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled\n");
+		}
 		break;
 
 	default:
-- 
2.39.1




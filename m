Delivery-date: Mon, 31 Oct 2022 08:35:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opPKb-008u2b-Lw
	for lore@lore.pengutronix.de; Mon, 31 Oct 2022 08:35:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opPKZ-0004wT-Jx
	for lore@pengutronix.de; Mon, 31 Oct 2022 08:35:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6tEbMDK7oP2q2rksLtBbgJdCy0Jiq7h+yRI9bZfaIOI=; b=g9ctZdr2K64Xcb
	aRv1ySDPWMvZNcn2mrB446B8i8i3NJQLuvtO6I5yX9S0h4deoYCGGuMUEfvSmQ5RLKFOa24SjKhEu
	GiKKivHcbbINk87VvHih0feSwSZ/TKBvYj7KhEn9zIX1IfYmcYtWtBAPk5d55ACD0YO/L6rvpSofK
	7a0PeVFiNDV6AILu+cyfGU/hWRpFv7JU6pvm5oQzJP6FVT/UOhHU2O7+EkE1leXUvwRLhC59Um2IG
	D1Qi3s6NimjiKEWKsNm60xSVr/WExpMxeO765hdhwYlxsVYqfiJJf787z/24cYYZmvIAasUWhCpPM
	t7FV/g13hbYnf9HI7MDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opPIc-009BSu-QN; Mon, 31 Oct 2022 07:33:34 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opPIX-009BRQ-4O
	for barebox@lists.infradead.org; Mon, 31 Oct 2022 07:33:30 +0000
Received: by mail-lf1-x131.google.com with SMTP id d6so17919073lfs.10
        for <barebox@lists.infradead.org>; Mon, 31 Oct 2022 00:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6tEbMDK7oP2q2rksLtBbgJdCy0Jiq7h+yRI9bZfaIOI=;
        b=QlQSmCrSYDKBarXdIYTgRZpYga+VvU9EbBOOqtZqBEdeNNrlfIlfPVf8jBWTRQqyGT
         z/avLoxwdLXmqAeMw/0kRnIEaI7u3PQrsMJHFMTp3regR9qCgwhS3c/0FqcG2Y55+t+9
         pGy5bUHnTqWE5xj0arsvD6wiqykiHxGy942zms5WZwR0/6QTL6ElhXI1vX2CRR7s6nZl
         jVSaC3N75mAxjVEnAHsMpSr2Vl155TxhJFR4Tc0UeX1DS4HwTjebqruvh3ZMZHfxTEsH
         qVRsIBjJfvdEPSlveR5Hw9Orhzo7Pc8fj7FfzFhpHpsXsMtXcGXyJcl8eEX+xr9/FwwX
         uCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6tEbMDK7oP2q2rksLtBbgJdCy0Jiq7h+yRI9bZfaIOI=;
        b=wqBPQChzLTle5GdBgphB9ttaMdeA9u8cI6W1wrQrrJKliAXckuUNuNtEb/8cvRNpob
         R8oP1xtfAuKEaUZER261haUJzphaHBt/ZqaC7N2SvotCZLDFqkywCbvFVE33RgzuyMIk
         oAz1PL2129nNERfjF50+uiaS7yJBtCQXDXW7eQGLOs2hSXMpjOoQD8mtyKQL40t4htXC
         FiYOJm9aQLPe4jA0cTmdziiMVyLxFotjHJJpimXvRu91HczFJhQkgMdg7YhqJJ86Qiq2
         AFQF94FCBwn8EOXLrKpm8WRMsByMe2C/GwnDRQ2/AF3h/+IAMHpKsKHy+9bcc9ClK3BA
         ArQg==
X-Gm-Message-State: ACrzQf3I4s9P7Z4eQsaxbfrT/DKtjhcdP7WtlT7TRVOkc4a60hX2rhyI
	54A8kS6pcpkplIxHDh5Nhkd8JUBlC+Xh+c7t
X-Google-Smtp-Source: AMsMyM5a8QtRMHjE0aco1LCA0JW8CFyBWgzYeLB6lUhYjMNAhtit0ktr7x/eig5pA5PNGufW0I+6RA==
X-Received: by 2002:a05:6512:511:b0:4a1:7ac2:2a83 with SMTP id o17-20020a056512051100b004a17ac22a83mr4548026lfb.175.1667201605375;
        Mon, 31 Oct 2022 00:33:25 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id p13-20020a2eb98d000000b0026c42f67eb8sm1201714ljp.7.2022.10.31.00.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 00:33:24 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 31 Oct 2022 10:33:19 +0300
Message-Id: <20221031073319.1656130-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_003329_353432_5A39F549 
X-CRM114-Status: GOOD (  12.14  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] net: e1000: fix <NULL>s in log messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We do not have an edev.dev set up yet when we are filling in the device
structure and reading an EEPROM in probe. Besides, using hw->dev for
those messages seems more appropriate.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/e1000/eeprom.c | 6 +++---
 drivers/net/e1000/main.c   | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 1072bc54ef..27143bd6d0 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -800,7 +800,7 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
 
 	/* Read the EEPROM */
 	if (e1000_read_eeprom(hw, 0, EEPROM_CHECKSUM_REG + 1, buf) < 0) {
-		dev_err(&hw->edev.dev, "Unable to read EEPROM!\n");
+		dev_err(hw->dev, "Unable to read EEPROM!\n");
 		return -E1000_ERR_EEPROM;
 	}
 
@@ -816,8 +816,8 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
 		return 0;
 
 	/* Hrm, verification failed, print an error */
-	dev_err(&hw->edev.dev, "EEPROM checksum is incorrect!\n");
-	dev_err(&hw->edev.dev, "  ...register was 0x%04hx, calculated 0x%04hx\n",
+	dev_err(hw->dev, "EEPROM checksum is incorrect!\n");
+	dev_err(hw->dev, "  ...register was 0x%04hx, calculated 0x%04hx\n",
 			checksum_reg, checksum);
 
 	return -E1000_ERR_EEPROM;
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 363730de0a..1f84cf2949 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3226,7 +3226,7 @@ static int e1000_sw_init(struct eth_device *edev)
 	/* identify the MAC */
 	result = e1000_set_mac_type(hw);
 	if (result) {
-		dev_err(&hw->edev.dev, "Unknown MAC Type\n");
+		dev_err(hw->dev, "Unknown MAC Type\n");
 		return result;
 	}
 
-- 
2.30.2




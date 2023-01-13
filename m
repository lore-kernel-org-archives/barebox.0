Delivery-date: Fri, 13 Jan 2023 15:10:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGKlT-00AqOj-K8
	for lore@lore.pengutronix.de; Fri, 13 Jan 2023 15:10:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGKlR-0003u5-VA
	for lore@pengutronix.de; Fri, 13 Jan 2023 15:10:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZxtlaQRk3mFWJet2KX9p7Wx7Hew0xGtGDvpeDD8+bAA=; b=KTtCmro2AG3PpJ
	6NHVwfrIdP+6C66uJl5HMjqP9IJ7VEwPKp7Axu+2ihcuPZVyEFPryhQRdWm5fJcNRw5fsyqIEZ5fx
	NN7GDlOf11qSq+A/3O4Q34bbIHrTg7zssMzMYPcOlEAeS6PJdEbabDoF3ej7CwJS9H6B28ntGHjt5
	pl5pGBhO4YUSCXHlrVqTFDgxGwfiotaCvInB8Bc1gfvMaugB9FV3zpEdRZli578CFqa6QS9Klwh1G
	UbfBVmxSOlKP2wgliu85r/uYdVzqoQhj50l8t6v1HmBQkha345hLBWUD+y6tCzlp4SKsCQKzJ3jEx
	BtDWbefO+OpXIfST4z4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGKkF-002sMb-GM; Fri, 13 Jan 2023 14:09:23 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGKk9-002sKr-QL
	for barebox@lists.infradead.org; Fri, 13 Jan 2023 14:09:19 +0000
Received: by mail-lf1-x136.google.com with SMTP id bp15so33270897lfb.13
        for <barebox@lists.infradead.org>; Fri, 13 Jan 2023 06:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZxtlaQRk3mFWJet2KX9p7Wx7Hew0xGtGDvpeDD8+bAA=;
        b=Ec6ShDgN0E1g5ee3ShAykUdpWFyyMy05fyvkRZnsVf5TZaLhXW9+dJDdyVoTcDv8uO
         ADPU/jAewHInqLlaJn14UEqRqp8e9OKmiAXz/EiIFWA6AKk7kOkbIG2YBgLiflR1sW0x
         oh8+b4U/zPJ3H0fyHbF4tC0nTW73CVPUB2GgVycCo8HaYD2800u7j9kb/CaWtJv39FrV
         i9srud5pXq+BP6pWIwxOdQX5IKLiU/lPbWktVm3J/LUx7T05GlDQe66HMm0OENnMEK5x
         bVfvg5shSwVP3tNPtabl8ix1a7vyqPyC/UjoxHm65Cf5Mjzc82VWPpXFFguaFEZl5bZJ
         Fbqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZxtlaQRk3mFWJet2KX9p7Wx7Hew0xGtGDvpeDD8+bAA=;
        b=xEJHn1nu18jzQyy6OcLWVW5RGW81tYchUdPM7HYLF53SG1GUKOxivZXaeLgfT2WpWL
         1mQ7NwAL2oD0yK/8/UkLmJyM4FSXD5Ij+G6DLoIHeulP5BtmnOY68xLxVN/2uvAdXPzq
         i2cTNmEwcTSCcceFuDj9sTxnhfYvbp0BsQAi61JcTbl4h0qCZGUEzbvD6uCFAQT5GUoO
         7t9vqni3L4uVQTlgaRleRvHaNwQDQnwN7YI9Y2VkpdzAI+f5gzDVDGU6FvWbNE3/UFWV
         qebwuffBfAeHjRpxM2eiNzfItf7kyhJaQ5jaXkZDshXoMh6pcVcSsCzqigrRF6uwxgGr
         Wv0A==
X-Gm-Message-State: AFqh2krZoOsKEpdxOAIO4bgLjsQ9enihPbAy6TClTJGce1gZp205zk0w
	PNvTF9onVPymx91RRnFTmCLMmexT25jkFA==
X-Google-Smtp-Source: AMrXdXsAK/YZ4i2X45TvQTSpL47BoyGuF7G52YOdfVOXhwfw9o4oyfv1jp1l3JFExvzZh6lrddP/bg==
X-Received: by 2002:a19:f508:0:b0:4d2:551e:3838 with SMTP id j8-20020a19f508000000b004d2551e3838mr275917lfb.29.1673618952736;
        Fri, 13 Jan 2023 06:09:12 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id i24-20020ac25238000000b004cdbc21304csm652448lfl.253.2023.01.13.06.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 06:09:12 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 13 Jan 2023 17:09:09 +0300
Message-Id: <20230113140909.31769-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_060917_869745_61FACA74 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH] net: e1000: read EEPROM through EERD register on 8257x adapters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For some reason, we would only use EERD if Flash is used as non-volatile
memory. However, looking at e1000e driver sources from Linux this is how
they are reading NVM on those cards for both EEPROM and Flash.

This fixes issues with reading EEPROM in driver on QEMU emulated 82574
PCIe card.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/e1000/eeprom.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 27143bd6d0..c90faf3a58 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -495,6 +495,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 	case e1000_82571:
 	case e1000_82572:
 		e1000_eeprom_uses_spi(eeprom, eecd);
+		eeprom->read = e1000_read_eeprom_eerd;
 		break;
 
 	case e1000_82573:
@@ -502,7 +503,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		if (e1000_is_onboard_nvm_eeprom(hw)) {
 			e1000_eeprom_uses_spi(eeprom, eecd);
 		} else {
-			eeprom->read = e1000_read_eeprom_eerd;
 			eeprom->type = e1000_eeprom_flash;
 			eeprom->word_size = 2048;
 
@@ -513,6 +513,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 			eecd &= ~E1000_EECD_AUPDEN;
 			e1000_write_reg(hw, E1000_EECD, eecd);
 		}
+		eeprom->read = e1000_read_eeprom_eerd;
 		break;
 
 	case e1000_80003es2lan:
-- 
2.30.2




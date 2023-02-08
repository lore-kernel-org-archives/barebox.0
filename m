Delivery-date: Wed, 08 Feb 2023 09:14:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfbR-000N07-Lt
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 09:14:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfbP-0005Cj-4f
	for lore@pengutronix.de; Wed, 08 Feb 2023 09:14:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lgCQBgJa72hExy8dd7KWZfBJZEFh9ww7FcSn//84sj8=; b=INDlwyzGzEqOFW
	PDGT2it0OXBTVqjtGRRmhiHhhS+NfLcTNV34qBCYXD5rK1qKjtytHvSdqq01fjAiyLuD3gdt0ZN74
	VkC8GXSV4CfELRO0fclQm8S6zMAMK7XUqimbydNuBTFbDOJuEAdZP/U9/xOnw9ujkQCgDlLBM3+Um
	pFEFch5leTfr+Yc+M1k36imPc8nMzrZUQVDGfCFQaUAXwzLH3oc0og/DdDAV7E1ihX414fbiodcJh
	JvqZ49nkwnjJR9AOcw4PmVSZmZ8gGXDYtBJ13KszLXXwO9n6aIw40ZhLrYa2aztaK5PCemtnjUskv
	6c1INs6uJW2jPl8S9j/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfa9-00EYGp-MB; Wed, 08 Feb 2023 08:13:33 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfa4-00EYEz-R7
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 08:13:30 +0000
Received: by mail-qt1-x82a.google.com with SMTP id g18so17572976qtb.6
        for <barebox@lists.infradead.org>; Wed, 08 Feb 2023 00:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lgCQBgJa72hExy8dd7KWZfBJZEFh9ww7FcSn//84sj8=;
        b=lYV0dQ5f7VwzpEoRbruHQTmKINin2X2K5F4T4En6cg1x0qXwiEk+aAnOOY6oJJB+xs
         yDSOItmV3XkDrKvbyxzdhsyh1ZYO6GMwoZ9jT9EGlGaJH9mKwmjj2zctLzhhBIAwDPwy
         O/kaAPz5g/NLtA7DTWEcfAT8chMTAxrlGQXxef+eJy/P6CD8Q411QRKodRLR3CVIUwx2
         vR40MI9Fz4UFeJb87L1F/JN23anSadfvxrjyxmySlzyFaMfzjo1rdLTwZNQu3u3/trEh
         Puy4hT9y9nfsdmIEb49VBLyACXYQnS1pgWbLEjoKOVeDua2g3WODtiS5phvAYYub80+/
         kuuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lgCQBgJa72hExy8dd7KWZfBJZEFh9ww7FcSn//84sj8=;
        b=CYN7Zx/w3hJ25JlUdm1W6gHjgKuOouS17NT1tdHeFvxSbdk1t4IymftvgRsV109x63
         hU+UL0zpYnH+Sqg8GP75+ldaD/HAviWaeFYWdEgoA9KM9qGLy8sFWDx0EFYozG5n5p1R
         1YiJOiwHpth64Hi6U4AkZ8kRNXEF5PDOmebKkH07MFbbx2OAqXoi6Y6/gNQbzZ344ZPE
         J6zKJgWTxTCV5bVv2SNWj64kF6L5NPcG9mB6FxmYrC6RHxYxvvIuAnTbnnsITuVqAlOu
         0OvA/SClA2aRVRfwQOwKAyxwSf34pAPh/6wWZ6EltfJpOa/pL00+gyrIiN05UdryOAeX
         l3yA==
X-Gm-Message-State: AO0yUKW1R/QKWIsiQretXRXolCE179EBkkoA6CEPyccgx2kRbI49Owoe
	k/U8ROJgMkXsAPxqAKDAJSgxjfU94BNIMx+Q
X-Google-Smtp-Source: AK7set/7jNu7S3AOmNvBDkI4EmFU0TaNMdgG7BdOIhATOwesIDC2nhG3RNihRnXTsklYOfMlQuXlrQ==
X-Received: by 2002:a05:622a:406:b0:3b9:8885:296a with SMTP id n6-20020a05622a040600b003b98885296amr10119621qtx.11.1675844003780;
        Wed, 08 Feb 2023 00:13:23 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id bk42-20020a05620a1a2a00b006fa16fe93bbsm11527446qkb.15.2023.02.08.00.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 00:13:23 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  8 Feb 2023 11:13:06 +0300
Message-Id: <20230208081307.3190117-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_001328_907587_205A8F55 
X-CRM114-Status: UNSURE (   9.91  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: rtl8139: remove dependence on MIPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver seems to work fine on ARM64 Virtual Machine in QEMU.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/Kconfig   | 1 -
 drivers/net/rtl8139.c | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 30de1f544c..86096c07e2 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -232,7 +232,6 @@ config DRIVER_NET_ORION
 config DRIVER_NET_RTL8139
 	bool "RealTek RTL-8139 PCI Ethernet driver"
 	depends on PCI
-	depends on MIPS
 	select PHYLIB
 	help
 	  This is a driver for the Fast Ethernet PCI network cards based on
diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index bea888f08d..617a60bfcb 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -10,8 +10,6 @@
 #include <linux/phy.h>
 #include <linux/pci.h>
 
-#include <asm/dma-mapping.h>
-
 #define RTL8139_DEBUG
 #undef RTL8139_DEBUG
 
-- 
2.30.2




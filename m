Delivery-date: Fri, 10 Jan 2025 07:46:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tW8mt-000GdV-25
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 07:46:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tW8mt-0001nY-RY
	for lore@pengutronix.de; Fri, 10 Jan 2025 07:46:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ssKQeb07lx5oRm6BA2IAzbuNXqyUKJEBEwe35EfSLeM=; b=4U7Qo+P5lZxb6p+BC0hs96DmkQ
	nAH0ZKM9GJ9c1qAmQxdYpIVvL5JWr6avdZIDo8CtXf5Ivgv1/mqw89gSIGfe/6leIoOjU1jXIi9U4
	sROpyue25s6GsURE9XeewcJP34gIayUpvmsNhGlkHCeQl8oLqx+H4OdPDAe/Z3vJgr13b/kT6syfz
	q3HVfBDnZbrlXfa1qinfqfgDx7DPIEBjivYv/tS7fXjrEioiuXn19DTjBQYr1gZyUwp9Vp2MJ7Z/K
	MkiZ0BBQK3DSgOglfRZ+GDY/8y//QyknraeEfkxBBfRadM5/SCcLPebQ1Xtm3A3qEoBQIkaH4NaM2
	nuXDXwLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW8mE-0000000EIKG-24w9;
	Fri, 10 Jan 2025 06:45:50 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tW8id-0000000EHqX-3XA1
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 06:42:09 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5401b7f7141so1541326e87.1
        for <barebox@lists.infradead.org>; Thu, 09 Jan 2025 22:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736491324; x=1737096124; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ssKQeb07lx5oRm6BA2IAzbuNXqyUKJEBEwe35EfSLeM=;
        b=KRMa1E/TirmZ0HWYGdpf5vKxqEzcpohR6f3TO05k/UZ/nHYFKFETMRuo8+jZK/8th1
         +4b1Tyow0JBaMOK0Brd1KnBqFvLJEzD1v7ZfZZstfYIrSZfKWpuYRD8Df/nhkvkYXS+t
         X/xtCEr8lIVPuc8atekUOHkyvVJ0FSaq5UltRlWL4FuQXsrQAppSVNUVIBEhV76o/yLu
         wDLXRvP1tFGhAmakz8lObTqMuCbR9shaZdERNxqtx4y9XaU7tw9ErdW+GGD0V9tdIA7J
         vZ9vDPR2qtJ7L2HIs7VQnPSVdPGuNtUpCyD4FCaMbDCmR4pJAhDQmKQoUgKQ4Sy8s+yY
         XgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736491324; x=1737096124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ssKQeb07lx5oRm6BA2IAzbuNXqyUKJEBEwe35EfSLeM=;
        b=u73w6CKTMqPGSurbiZ381gBQOAkFqD31OFGgx363rxlUEKFqNiFiemilolCVZCDGeN
         jHzGwtFs2+XC2uT2u/5K+A3icS5Ffsznj+AEGm4oSm7YAD/sHEmroZQ0yiTQ1oF8BByJ
         xbmRwkGmaKpcHvRvUeKma6fNRbj69CEa/vN8AhHAeokM1Ae4IlPjsosZLDrSChs+Gkdr
         9Z6/ggZM24+03wTBG+ScdpzgrXb9R5Zf4UuiTr8MASWPPuLaEoS2TN9Y20IK1BQZhEP+
         iimU3UcpzPwwvMLtOZ8a6oFvkNhsdAxXJQ8MM7HRcO+J4tS/anIVc6E4REW70s/7qoVR
         5hwA==
X-Gm-Message-State: AOJu0YzAN3wttFCU132xGvbSjMbU+4UBHNDFq+yvOIXzR4SEiKweQeWz
	YKDRORpNqf+ePlo/zO+9cN1xXbJivmsfvnGZ/9Qijn+tXZT9bmBnJokGn4gG
X-Gm-Gg: ASbGnctyk+HAlKYNu4saA/GZwwZKRiA1Ure76vGUKGsHRLS45wKTU3gyEmrUKprfMCh
	duCpLKwLeX2VGb2y6E60j4jDdrVNniwkhRYr+WY5Tufy82Q93dsJMRBNFSEXFTVsxIVIPLYBFXW
	MHR/23zzhAE0VN26Nlp1PPD5+MF9rUKCKwaO+r4FL9VOxsIqPhDokFMi8qodO3pYisKO+50rowM
	5im90XVDSC7YeI5V6CkSaSi/lT6C0DjWemncZXEEugA8IeChoD/MqDbtqtUnK7+yJstlga3DsBr
	tHGB
X-Google-Smtp-Source: AGHT+IEKJhE7G5n8MTNKfMMTQapQYUArp3jt/C4pVxuxQQKQB61jOUn7lvY9ipF8g/hGSDrAmv0mtg==
X-Received: by 2002:a05:6512:3046:b0:540:c349:a80f with SMTP id 2adb3069b0e04-542847f9e0fmr2910903e87.38.1736491323784;
        Thu, 09 Jan 2025 22:42:03 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea681asm423851e87.130.2025.01.09.22.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 22:42:01 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jan 2025 09:41:50 +0300
Message-Id: <20250110064150.18408-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_224207_879929_2B1E19DE 
X-CRM114-Status: GOOD (  11.00  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usb: host: ehci-atmel: Add HSIC mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for USB HSIC-mode for the controllers found on the SAMA5D2 SOCs.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/usb/host/ehci-atmel.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index f176babfa7..4f1f5e5cde 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -11,11 +11,15 @@
 #include <linux/usb/usb.h>
 #include <linux/usb/usb_defs.h>
 #include <linux/usb/ehci.h>
+#include <linux/usb/phy.h>
 #include <errno.h>
 #include <io.h>
 
 #include "ehci.h"
 
+#define EHCI_INSNREG(index)			((index) * 4 + 0x90)
+#define EHCI_INSNREG08_HSIC_EN			BIT(2)
+
 struct atmel_ehci_priv {
 	struct ehci_host *ehci;
 	struct device *dev;
@@ -94,6 +98,9 @@ static int atmel_ehci_probe(struct device *dev)
 
 	atehci->ehci = ehci;
 
+	if (of_usb_get_phy_mode(dev->of_node, NULL) == USBPHY_INTERFACE_MODE_HSIC)
+		writel(EHCI_INSNREG08_HSIC_EN, data.hccr + EHCI_INSNREG(8));
+
 	return 0;
 }
 
-- 
2.39.1




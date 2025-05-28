Delivery-date: Wed, 28 May 2025 14:04:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWV-001B5x-0o
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWO-00073m-7A
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nx25Lgfd8stlrOCsrwCacS2KJ51MDrAKlSeQs6WM19g=; b=tFnPfhOxG/rijjPbUkXNnYWU4v
	Y3Pp8evbv1BcgHPI682EDnXbFkGTLWg/UuWerdQ0aIfmqM4qMyv+FPYByCs/l97IzLPv03j56RrWC
	gd4FD3XycPvlNa7qy7pQCj9sxjnNfhPVmjU8rYiamABV7sSb+VvgLw8i54q3Lb9eb2jX+H5vfOWFF
	HhFel3t5gLZ9HBtfmTOXY2+5pcMFTfS+2dVcfb3SzUV0+eIEUstNGqizFsZ1eAW2B1wyNd7u8uAPA
	uG5U2bj/jYpjWCytlL/4ZRiSSnT8kDhitRmeoJigVTxgmDJoRgJOgakreaP92eH4lyKOK0vi5+2oS
	DyxMmKJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVc-0000000D2tK-13Ql;
	Wed, 28 May 2025 12:03:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU5-0000000D2bn-0pIy
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=nx25Lgfd8stlrOCsrwCacS2KJ51MDrAKlSeQs6WM19g=; b=DjLoOnAdI4i+W1jjMftX4uf9Lf
	a8RhfjaetH97lVLPUI5KjeAroj39msOUvLIad/MHkkI8zKZ/0dtwTLK4+q90kBNDFeNCwVaqACTIc
	2f0NW/XBuwfBIRgUp9GRIxyNpNlTsbNrMJ4q2TR7kSh6nU598gMJpxbPN1AFDM7ifrR2xhCBZ2H77
	F9o/pboFjvuhsufKOweyuXxtVi9pDTB04b9P8FacPnN+mcAI8dIjelqlNarbqzBnGjhm6LedDdQix
	HH6FZRtHYG6Q/EFgmpD/oPebPFAcJ4JAaH5O1LvEXZhB6bvu0RtuUTiOZlrdnLh0oNdkQxcCnJz3e
	X2HSpbjQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU2-0000000Dast-0X0P
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTr-0004WW-9p; Wed, 28 May 2025 14:01:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTr-000aGx-0L;
	Wed, 28 May 2025 14:01:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1u;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-27-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=850;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FIOMw02/ikgNm1fAj8kSIcGsU0Ln0HcKur9RKQV5q18=;
 b=BcMYOD8CLWjdJXCaLOX8MEUqwwIeJ4m1/GevvJB20SxE6/yYlSpzU7sXdMU3mtRNNfb+8uim5
 DpIh1L1+S4zCfEdwKRaZmBrggsj0tjp6ztIsXOtIdcAsqI0GyAj7kQL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130210_317911_D4072C15 
X-CRM114-Status: GOOD (  10.57  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 27/31] gpio: increase ARCH_NR_GPIOS to 512
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TI AM62l EVM board has 259 GPIOs which is more than the current
maximum of 256. We could increase it locally for the K3 arch, but others
are likely to follow, so increase it globally.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/gpio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/gpio.h b/include/gpio.h
index beda10efde0815aa89a8b064b4c9d515c16ae97d..92fd27b2b996eed8777e9321b4f34e245ceca480 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -84,7 +84,7 @@ static inline struct gpio_chip *of_gpio_get_chip_by_alias(const char *alias)
 #if defined(CONFIG_ARCH_NR_GPIO) && CONFIG_ARCH_NR_GPIO > 0
 #define ARCH_NR_GPIOS CONFIG_ARCH_NR_GPIO
 #else
-#define ARCH_NR_GPIOS 256
+#define ARCH_NR_GPIOS 512
 #endif
 
 static inline int gpio_is_valid(int gpio)

-- 
2.39.5




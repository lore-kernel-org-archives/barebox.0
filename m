Delivery-date: Fri, 08 Sep 2023 15:05:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qebB8-008FcL-Tb
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 15:05:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qebB7-0005lG-5m
	for lore@pengutronix.de; Fri, 08 Sep 2023 15:05:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETJ62ZwShBdh23Voa+V+jPL33ie5d3rKSO1fev9yP0Y=; b=i9vqmwpcKB7C0u
	m1xzP15Exj50Lx9bL0zQW3GVAcj/fH+GFzHLLlnePFHazXrYfqrQ5tC9fujqOu60nidxiulSAzPC0
	bLwHQVGRQbTiXynK7PppSlWprq1A91VgvNuwk3hyBJ/C/Yo5yoGFWh2wP2XCqtqU7szIsLQLFAdYo
	H3CHwATzVvZLUGU2B4zzahGPl+/y+0JZ1y8JonYoVmBODMw124v30whouZ8CFtEGoiXhTUJ9ka/SH
	efK2qajnuSYz7YglPgPU8PI0DeYrmDcAE5/fUudz5znv+BMUktsj2900hNtALoRsGJT1gFuXdq6UA
	hNGD+NRZT9hCwpj5Fi7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeb9w-00DoLr-01;
	Fri, 08 Sep 2023 13:04:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeb9s-00DoLS-2h
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 13:04:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qeb9q-0005L5-0q; Fri, 08 Sep 2023 15:04:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qeb9p-004srh-17; Fri, 08 Sep 2023 15:04:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qeb9n-007Ho7-Rn; Fri, 08 Sep 2023 15:04:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  8 Sep 2023 15:04:00 +0200
Message-Id: <20230908130401.1735831-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230908130401.1735831-1-s.hauer@pengutronix.de>
References: <20230908130401.1735831-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_060424_881972_C9B10AFB 
X-CRM114-Status: GOOD (  15.45  )
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
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] spi: Add slices for SPI controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a slice for SPI controllers so that devices using SPI in the background
can check if a SPI bus is busy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c | 10 +++++++++-
 include/spi/spi.h |  8 ++++++++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 584d4ab777..1b8e5f4512 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -12,6 +12,7 @@
 #include <spi/spi.h>
 #include <xfuncs.h>
 #include <malloc.h>
+#include <slice.h>
 #include <errno.h>
 #include <init.h>
 #include <of.h>
@@ -352,12 +353,19 @@ static int __spi_validate(struct spi_device *spi, struct spi_message *message)
 int spi_sync(struct spi_device *spi, struct spi_message *message)
 {
 	int status;
+	int ret;
 
 	status = __spi_validate(spi, message);
 	if (status != 0)
 		return status;
 
-	return spi->controller->transfer(spi, message);
+	slice_acquire(&spi->controller->slice);
+
+	ret = spi->controller->transfer(spi, message);
+
+	slice_release(&spi->controller->slice);
+
+	return ret;
 }
 
 /**
diff --git a/include/spi/spi.h b/include/spi/spi.h
index f806c7a30b..45d6f5931c 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -3,6 +3,7 @@
 #define __INCLUDE_SPI_H
 
 #include <driver.h>
+#include <slice.h>
 #include <linux/err.h>
 #include <linux/kernel.h>
 #include <linux/string.h>
@@ -161,6 +162,8 @@ struct spi_message;
 struct spi_controller {
 	struct device *dev;
 
+	struct slice		slice;
+
 	/* other than negative (== assign one dynamically), bus_num is fully
 	 * board-specific.  usually that simplifies to being SOC-specific.
 	 * example:  one SOC has three SPI controllers, numbered 0..2,
@@ -601,6 +604,11 @@ static inline int spi_driver_register(struct driver *drv)
 	return register_driver(drv);
 }
 
+static inline struct slice *spi_device_slice(struct spi_device *spi)
+{
+	return &spi->controller->slice;
+}
+
 #ifdef CONFIG_SPI
 #define coredevice_spi_driver(drv)	\
 	register_driver_macro(coredevice,spi,drv)
-- 
2.39.2




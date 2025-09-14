Delivery-date: Sun, 14 Sep 2025 21:33:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uxsTY-00341I-1c
	for lore@lore.pengutronix.de;
	Sun, 14 Sep 2025 21:33:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uxsTX-0002S1-Lj
	for lore@pengutronix.de; Sun, 14 Sep 2025 21:33:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KQHNDzcKKfIJ2ZPZ/ubvSTl+W94jdlKyzczL/Xy1JVk=; b=WPLTmUGzytdBckGr/ba29b15YD
	wAmCHNlnZersNwwVgjlkX0p5kwpNdATWVfv46p0zfWB573R+kr9VcbDCK7NO8fyuCpZI2EfLi9iqi
	0RIC/ZKihGPWj2RVvCdujLhTL97vcvkytkSnotp4/EAermmIndDwPIqBhKapM+jgHLYKeWhWrfPY/
	7HYgZKANQLGlh20vvPOjzln2SDwUM8aeFZ/zD7C5JMf2JGSJRjdm2jWlUQI7t6zbjiIXaYXxndpsP
	AIMEPwaZi9GL/+kth8oi0X1wRs9eY1MsjN04n1zn99p8LCtnjBA1me9ES7EQMXryfOYJYWeFReAv9
	53OdXoxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxsT3-000000023El-0Jzn;
	Sun, 14 Sep 2025 19:32:57 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxsT0-000000023Dp-27bU
	for barebox@lists.infradead.org;
	Sun, 14 Sep 2025 19:32:55 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-782ba4488b8so3053436d6.3
        for <barebox@lists.infradead.org>; Sun, 14 Sep 2025 12:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757878373; x=1758483173; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KQHNDzcKKfIJ2ZPZ/ubvSTl+W94jdlKyzczL/Xy1JVk=;
        b=jRJyPR0gOOyK/aHrl16STFGIV007V3WNNNWu87w7NawRz1CplEwZFGMMF413WaNNuz
         XCnpyi/YrRwTIUJkY3TLi2d7ygarFoDs2Rp77e2vPObmK7qTYsx9RWw4jXggnvPSvHXS
         Trm5hDSyzviGkqgvtklRX/RFQS9lfS6aj/l/kN8nAz6DVUfSNEY86gNo5TYg9QE+VFa9
         LaEwK+rNDHhwi/i9L8mmjFPeQ+5tnB5ne8nBqTZBTVngpMcxiBhtPMpbCB9Gna/P/PEa
         cjCaHw7oRcsjeIJ5/ZUAThy3utdCw8r+0OYSer/uq217xkxfJ2FUdR/PSFU5uhSMWR35
         45eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757878373; x=1758483173;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KQHNDzcKKfIJ2ZPZ/ubvSTl+W94jdlKyzczL/Xy1JVk=;
        b=nfnRfye7Q5LSf0OoswKTdONCzWTat8B1Y5BfCpBMjFunNvp5dB5Q+3Qa9iolQuj8Xd
         37w9fbqovXb0EFGPHKl68G7fMIUqnpFijQlqyrI5RYqWe0i88FQSYrdwY+UszYztwulA
         Vajr4CEyqV0ma/sG3anWV4AMpDLn+aKSC0izH+gABWwUw4e3V1axLHuIA5c3MXW//IRD
         Gstosevy0i/QlqOJh63VM/htDAccHc1ZZslxTmy4tgvAt+3+mjJDwML8Qa4ZZr5bt+9L
         k/VL1QC2a6dNrR3hdLeD7s+s1jW9D9nKY1E+OoO87fDhVTiJ+P909/ZDf83dqTaLLAwY
         P0sw==
X-Gm-Message-State: AOJu0YzVYPkCFB9e6W+9UkHKt3SOSaCZn8vvTMFMYWJHpkyUQPeHxvD6
	px+bXxSX5jUnkNSrdyihm/CSCKLGhF7FZWQ8yV9I072NQJBmGOdZuXFm
X-Gm-Gg: ASbGncuocbqF3oV/wR6Nle85zxuP77M22TLRzm0cwYSzQvsalwfHrGMaubF8TNRgti5
	bS1ts1m+4J3xw57NUxjpYg+MVxrTd+94HZWRHS/npSyY/MLPXhcJDkuLodDZuNkdK2WBQ1LwZAQ
	BaYy3SH8pcyLu+AUGWQkapnIY0y6Ie0yq+t5YF59lYAy3TlmiTUkuAJ5gV7oTO21zZ1wHDy98Pk
	jfnroLXYiBikRYhT9kmpZ1wCpO6R0konzmxPdMZ7ImeIR//LkfvOHTsoWwZhmT+lTHUQcpDHDlK
	CZVo5/Kzgy23Eb+n06aNwIrcWU4YYAJtQm8xRl41YLQlYeCytEMqpQPwcKakAR1vUc7mNUjoOZx
	WsXpRWIewXyOph6WC6R0IozTWEEdW5rIhN6dVEPT6FAZN130ldgpLo9/UIKMfhbW3s6HBAgPKQT
	M5wKI/x5XDtKiZs/4WGTNwXPHhaw==
X-Google-Smtp-Source: AGHT+IGRpmMoYKfPMuwMTQQn3wsfwP6z+U/DejuaShbYQYYURVDsDUZESAqy5GW9quLXZeKlOPQbxw==
X-Received: by 2002:a05:6214:f67:b0:70b:af39:8596 with SMTP id 6a1803df08f44-767bd944886mr137978966d6.28.1757878373341;
        Sun, 14 Sep 2025 12:32:53 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:88f2:c609:e1c6:6429])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-763c03a9da5sm62936626d6.60.2025.09.14.12.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 12:32:52 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sun, 14 Sep 2025 15:32:49 -0400
Message-Id: <20250914193249.23414-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_123254_561888_28093136 
X-CRM114-Status: GOOD (  14.73  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] drivers: dma: refactor: rename dma_ops to dma_device_ops.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

This patch is an esthetic cleanup, rename the dma_ops to dma_device_ops
to be sure that the struct in drivers/dma is different from one used in
arch/riscv/cpu. I accidentally faced the issue telling that the struct is
defined in the two places but it is not supposed to happen since the
the driver is never selected from riscv.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/dma/dma-devices.c      | 18 +++++++++---------
 drivers/dma/ti/k3-udma-am62l.c |  2 +-
 drivers/dma/ti/k3-udma.c       |  2 +-
 include/dma-devices.h          |  4 ++--
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/dma/dma-devices.c b/drivers/dma/dma-devices.c
index a8b8086d5f86..43e585175a94 100644
--- a/drivers/dma/dma-devices.c
+++ b/drivers/dma/dma-devices.c
@@ -35,7 +35,7 @@ static int dma_of_xlate_default(struct dma *dma,
 
 static int dma_request(struct device *dev, struct dma *dma)
 {
-	const struct dma_ops *ops = dma->dmad->ops;
+	const struct dma_device_ops *ops = dma->dmad->ops;
 
 	dev_dbg(dma->dev, "%s(dev=%p, dma=%p)\n", __func__, dev, dma);
 
@@ -61,7 +61,7 @@ struct dma *dma_get_by_index(struct device *dev, int index)
 {
 	int ret;
 	struct of_phandle_args args;
-	const struct dma_ops *ops;
+	const struct dma_device_ops *ops;
 	struct dma *dma;
 	struct dma_device *dmad;
 
@@ -120,7 +120,7 @@ struct dma *dma_get_by_name(struct device *dev, const char *name)
 
 int dma_release(struct dma *dma)
 {
-	const struct dma_ops *ops = dma->dmad->ops;
+	const struct dma_device_ops *ops = dma->dmad->ops;
 
 	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
 
@@ -132,7 +132,7 @@ int dma_release(struct dma *dma)
 
 int dma_enable(struct dma *dma)
 {
-	const struct dma_ops *ops = dma->dmad->ops;
+	const struct dma_device_ops *ops = dma->dmad->ops;
 
 	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
 
@@ -144,7 +144,7 @@ int dma_enable(struct dma *dma)
 
 int dma_disable(struct dma *dma)
 {
-	const struct dma_ops *ops = dma->dmad->ops;
+	const struct dma_device_ops *ops = dma->dmad->ops;
 
 	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
 
@@ -156,7 +156,7 @@ int dma_disable(struct dma *dma)
 
 int dma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
 {
-	const struct dma_ops *ops = dma->dmad->ops;
+	const struct dma_device_ops *ops = dma->dmad->ops;
 
 	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
 
@@ -168,7 +168,7 @@ int dma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
 
 int dma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
 {
-	const struct dma_ops *ops = dma->dmad->ops;
+	const struct dma_device_ops *ops = dma->dmad->ops;
 
 	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
 
@@ -180,7 +180,7 @@ int dma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
 
 int dma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata)
 {
-	const struct dma_ops *ops = dma->dmad->ops;
+	const struct dma_device_ops *ops = dma->dmad->ops;
 
 	dev_vdbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
 
@@ -192,7 +192,7 @@ int dma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata)
 
 int dma_get_cfg(struct dma *dma, u32 cfg_id, void **cfg_data)
 {
-	const struct dma_ops *ops = dma->dmad->ops;
+	const struct dma_device_ops *ops = dma->dmad->ops;
 
 	dev_dbg(dma->dev, "%s(dma=%p)\n", __func__, dma);
 
diff --git a/drivers/dma/ti/k3-udma-am62l.c b/drivers/dma/ti/k3-udma-am62l.c
index cd4a4cdf032f..ba54ba53e6d4 100644
--- a/drivers/dma/ti/k3-udma-am62l.c
+++ b/drivers/dma/ti/k3-udma-am62l.c
@@ -408,7 +408,7 @@ static int am62l_udma_rfree(struct dma *dma)
 	return 0;
 }
 
-static const struct dma_ops am62l_udma_ops = {
+static const struct dma_device_ops am62l_udma_ops = {
 	.transfer	= udma_transfer,
 	.of_xlate	= udma_of_xlate,
 	.request	= am62l_udma_request,
diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index fb0fe62c53a9..1f0594749549 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -1190,7 +1190,7 @@ static int udma_rfree(struct dma *dma)
 	return 0;
 }
 
-static const struct dma_ops udma_ops = {
+static const struct dma_device_ops udma_ops = {
 	.transfer	= udma_transfer,
 	.of_xlate	= udma_of_xlate,
 	.request	= udma_request,
diff --git a/include/dma-devices.h b/include/dma-devices.h
index bbb25770f86b..bb081311dd72 100644
--- a/include/dma-devices.h
+++ b/include/dma-devices.h
@@ -40,7 +40,7 @@ struct of_phandle_args;
  * The uclass interface is implemented by all DMA devices which use
  * driver model.
  */
-struct dma_ops {
+struct dma_device_ops {
 	/**
 	 * of_xlate - Translate a client's device-tree (OF) DMA specifier.
 	 *
@@ -155,7 +155,7 @@ struct dma_ops {
 
 struct dma_device {
 	struct device *dev;
-	const struct dma_ops *ops;
+	const struct dma_device_ops *ops;
 	struct list_head list;
 };
 
-- 
2.34.1




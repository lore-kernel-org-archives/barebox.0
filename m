Delivery-date: Thu, 03 Apr 2025 10:33:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0G1F-007kUO-0l
	for lore@lore.pengutronix.de;
	Thu, 03 Apr 2025 10:33:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0G1E-0003ke-CW
	for lore@pengutronix.de; Thu, 03 Apr 2025 10:33:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U7vLfpjrPK6uKqp2rmVS5uh1cOQpMegqvKzOdK1K8Ko=; b=e5tpZ3FTjDCFe38FnF3ResqpSz
	gB2VVir72f99oIW1PSQpZMIUnz2Ohzn3pzcoOokwoHCfgYwxRoh4isERRgT7I4W6hnP5KZsIbjza8
	WSJkwzXR7Wvj0eQhseVB1/pJTyVu62iB5eLUdgj1x4hr3pdY+YMZ9XjdiukZmG7BmSIwzm4Sf3zGo
	TNQ1yvWtCXFbUa/4fzTyv87asR5Xo0Mm74RvNs4wnTxYK+OMbsle57StKLvwCpbDT1q/vhN98SwSe
	FZebqLEBOQM3gdt0dvPeAz5L0kvTl+8+QN+WPcFGYWl2SyOeheXpE4ZW0NA+FK2RcUqFy5zGvIPGa
	mT3yDlbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0G0T-00000008Gzw-3xRi;
	Thu, 03 Apr 2025 08:33:01 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0G0Q-00000008GyN-3Nu6
	for barebox@lists.infradead.org;
	Thu, 03 Apr 2025 08:33:00 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-54b1095625dso750384e87.0
        for <barebox@lists.infradead.org>; Thu, 03 Apr 2025 01:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743669176; x=1744273976; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U7vLfpjrPK6uKqp2rmVS5uh1cOQpMegqvKzOdK1K8Ko=;
        b=hiniDqLvE/RwAJ3Jnc4Wa7rRbrdo2EfrPvyQ1NKH1gyJ2DZOMD3+YiraZms05owZCO
         dTD6Ytj+HUaqjnafSHJdc7AEYORKxoPMFDGIdtuqPJt8ZkkMyCmPjaWeVC43rehvnQ1h
         TsB7/qjmMU+OMCnyzhuBpsv+zdcgG3mlTq52mCHtPPz9Zm1ARk7K9Qq+byc8F0A9h4PS
         JwJ2POszLzRQaM91iJSy17TFC25hTyZFp9zebOMhdPNcBhN6ueJkAKmNCUDlAt5zv16L
         T7aPGndl0NHJNZy8DXltzXcP1h9IVVugiWUnpuOy917r0TtfMyX0BSGOiD/7vwlYcvy1
         KK0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743669176; x=1744273976;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U7vLfpjrPK6uKqp2rmVS5uh1cOQpMegqvKzOdK1K8Ko=;
        b=Zo1ilITcTBzst3eg8dqGd/Jhw4ttFul7rQaD5jbxE+ijEgpbzVNGfcctvFB9RNHfre
         VcR5/o+1Vf2GzNK5I8RnvyO4id/qE8mwEN3icl7hBACrK++bxIxt67w65OAWJQcsUM1K
         9ypfoXvxnKR5E1DUQx0DKicQZ+WVnUe/01t8gNgfOOLKWbYl1TJhWGYCB8BAfIRuv2h7
         y5M45yo7+FrHjwJH19MDmhM8B6/gAU3jLv4nbk+oHIaAv6bYeF+Rcr0NbGrDvgJjmkNZ
         cqS2PRVGQPn180NZwBzWi1Iwj433OWFkLAvZHrJ5BvFUwAj+7msrwyr+U2Kx5tGuo/ra
         MrZg==
X-Gm-Message-State: AOJu0YwB8hjQZe9qM9Wlveyo4Q2EFtT7keCWzOwHxf0eA0bfyrxdum1N
	cOmrK4tdps/2aNFToPkoYvDTmbc6a/xmGZjNOLz0EBghtgjXYNqxK+CSkw==
X-Gm-Gg: ASbGncuScFqFoHzksMp5Yjk8vywEpCmDk2+QLDn/2hGLPbHYuQXECjdVKni9ZlepGSM
	LxsxvnLt99gDR/84LlRg+ClstkNqGNEAsZI1IrxV6rJOy5UiumzRLF2pTT0WbPN9nzLmOzIVAS7
	4HJjXqJQtJiKf+pvg8So2hvH4XdPXPZIjPUka7cAN05GR6l7lpneuM3bmewOmTVbb7JsUtd1UX3
	Htr3Ni8b1oQOksbMn/e/lMNKHpZqFZth/hiHCuQtLvf0y3n8miye924Pjea8M6QVF1mOME9RcyH
	0+LiCO4CYW7aKUAskWKWxEMxddFMcoqjuhm3NEk8y9uRCNXwo8XsmuqBHV5tiFfzRqg=
X-Google-Smtp-Source: AGHT+IGQjhMXHgDPfoj9PJUKv6zYuE4i8twYY8zFVLyLnmP4pnsM3b/36di/LGqe85Qum9tgz6mbnA==
X-Received: by 2002:a05:6512:130e:b0:54b:e49:6274 with SMTP id 2adb3069b0e04-54c1e322ef4mr315943e87.1.1743669175656;
        Thu, 03 Apr 2025 01:32:55 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65d767sm81181e87.202.2025.04.03.01.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:32:54 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  3 Apr 2025 11:32:35 +0300
Message-Id: <20250403083236.29221-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_013258_847765_7D2636CD 
X-CRM114-Status: GOOD (  16.27  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] spi: spi-mem: Partially update the driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The patch partially updates the driver to add the
spi_mem_default_supports_op() function.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/spi/atmel-quadspi.c |  3 +++
 drivers/spi/spi-fsl-qspi.c  |  2 +-
 drivers/spi/spi-mem.c       | 26 +++++++++++++++++---------
 drivers/spi/spi-nxp-fspi.c  |  2 +-
 include/linux/spi/spi-mem.h | 12 ++++++++++++
 5 files changed, 34 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index c680ee15a0..7a0ecb745a 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -207,6 +207,9 @@ static int atmel_qspi_find_mode(const struct spi_mem_op *op)
 static bool atmel_qspi_supports_op(struct spi_mem *mem,
 				   const struct spi_mem_op *op)
 {
+	if (!spi_mem_default_supports_op(mem, op))
+		return false;
+
 	if (atmel_qspi_find_mode(op) < 0)
 		return false;
 
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index 599e5fe96a..cda0b06a54 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -355,7 +355,7 @@ static bool fsl_qspi_supports_op(struct spi_mem *mem,
 	    op->data.nbytes > q->devtype_data->txfifo)
 		return false;
 
-	return true;
+	return spi_mem_default_supports_op(mem, op);
 }
 
 static void fsl_qspi_prepare_lut(struct fsl_qspi *q,
diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
index 1e4120a2dc..71a9afac6d 100644
--- a/drivers/spi/spi-mem.c
+++ b/drivers/spi/spi-mem.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2018 Exceet Electronics GmbH
  * Copyright (C) 2018 Bootlin
@@ -22,15 +22,17 @@ static int spi_check_buswidth_req(struct spi_mem *mem, u8 buswidth, bool tx)
 		return 0;
 
 	case 2:
-		if ((tx && (mode & (SPI_TX_DUAL | SPI_TX_QUAD))) ||
-		    (!tx && (mode & (SPI_RX_DUAL | SPI_RX_QUAD))))
+		if ((tx &&
+		     (mode & (SPI_TX_DUAL | SPI_TX_QUAD | SPI_TX_OCTAL))) ||
+		    (!tx &&
+		     (mode & (SPI_RX_DUAL | SPI_RX_QUAD | SPI_RX_OCTAL))))
 			return 0;
 
 		break;
 
 	case 4:
-		if ((tx && (mode & SPI_TX_QUAD)) ||
-		    (!tx && (mode & SPI_RX_QUAD)))
+		if ((tx && (mode & (SPI_TX_QUAD | SPI_TX_OCTAL))) ||
+		    (!tx && (mode & (SPI_RX_QUAD | SPI_RX_OCTAL))))
 			return 0;
 
 		break;
@@ -49,8 +51,8 @@ static int spi_check_buswidth_req(struct spi_mem *mem, u8 buswidth, bool tx)
 	return -ENOTSUPP;
 }
 
-static bool spi_mem_default_supports_op(struct spi_mem *mem,
-					const struct spi_mem_op *op)
+static bool spi_mem_check_buswidth(struct spi_mem *mem,
+				   const struct spi_mem_op *op)
 {
 	if (spi_check_buswidth_req(mem, op->cmd.buswidth, true))
 		return false;
@@ -70,6 +72,12 @@ static bool spi_mem_default_supports_op(struct spi_mem *mem,
 
 	return true;
 }
+
+bool spi_mem_default_supports_op(struct spi_mem *mem,
+				 const struct spi_mem_op *op)
+{
+	return spi_mem_check_buswidth(mem, op);
+}
 EXPORT_SYMBOL_GPL(spi_mem_default_supports_op);
 
 static bool spi_mem_buswidth_is_valid(u8 buswidth)
@@ -172,7 +180,7 @@ int spi_mem_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 	if (!spi_mem_internal_supports_op(mem, op))
 		return -ENOTSUPP;
 
-	if (ctlr->mem_ops) {
+	if (ctlr->mem_ops && ctlr->mem_ops->exec_op) {
 		ret = spi_mem_access_start(mem);
 		if (ret)
 			return ret;
@@ -186,7 +194,7 @@ int spi_mem_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 		 * read path) and expect the core to use the regular SPI
 		 * interface in other cases.
 		 */
-		if (!ret || ret != -ENOTSUPP)
+		if (!ret || (ret != -ENOTSUPP && ret != -EOPNOTSUPP))
 			return ret;
 	}
 
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
index cfef5795a7..6f91e75d5e 100644
--- a/drivers/spi/spi-nxp-fspi.c
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -453,7 +453,7 @@ static bool nxp_fspi_supports_op(struct spi_mem *mem,
 	    op->data.nbytes > f->devtype_data->txfifo)
 		return false;
 
-	return true;
+	return spi_mem_default_supports_op(mem, op);
 }
 
 /* Instead of busy looping invoke readl_poll_timeout functionality. */
diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
index b5dfb0ca84..a2d7d5dca0 100644
--- a/include/linux/spi/spi-mem.h
+++ b/include/linux/spi/spi-mem.h
@@ -285,6 +285,18 @@ struct spi_mem_driver {
 	int (*remove)(struct spi_mem *mem);
 };
 
+#if IS_ENABLED(CONFIG_SPI_MEM)
+bool spi_mem_default_supports_op(struct spi_mem *mem,
+				 const struct spi_mem_op *op);
+#else
+static inline
+bool spi_mem_default_supports_op(struct spi_mem *mem,
+				 const struct spi_mem_op *op)
+{
+	return false;
+}
+#endif
+
 int spi_mem_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op);
 
 bool spi_mem_supports_op(struct spi_mem *mem,
-- 
2.39.1




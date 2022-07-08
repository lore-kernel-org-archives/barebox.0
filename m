Delivery-date: Fri, 08 Jul 2022 07:55:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gxB-00AA0U-70
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 07:55:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gxD-0000z2-0s
	for lore@pengutronix.de; Fri, 08 Jul 2022 07:55:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJWAaAZC+lOmcCV4esuBThVRmmxSSyggojB86xgoHh4=; b=BNOuYm5yZVMbBbIRbmK57hB2FR
	2ISaJ/4y+uH8NgnwxJdouuup1EeMY3Wq/Zo1yRwVLoG4uoNrNf7t7bYdlW9Bte3YVPrcLGxhu2oiL
	7l9kteSnw+OT4TtdX7o3T+nwQZ7kllFrU6E6PKhEsZqRUjwlwOzoGwuQNO2ObKhh0cSzOZzZVBe21
	5QP3yIdyCMYMczxmZkoLwXZ7+EyG2YpeYKJuqUTmt2aOjimtvL/pcjm/sJtmaFcKx2VHy4UkL+NjN
	L1MkK6NPLeuSml5so075JznVBrhLufqTY4CnXOszaRA+VUzaFOh8D5hl91f6gdCrmcVGzBsFdf8TJ
	yJ79AuAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gvZ-001rx9-9A; Fri, 08 Jul 2022 05:53:21 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gvM-001rtS-MD
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 05:53:10 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 6A1EF1C000C;
	Fri,  8 Jul 2022 05:53:03 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  8 Jul 2022 07:52:50 +0200
Message-Id: <20220708055250.1175444-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220708055250.1175444-1-ahmad@a3f.at>
References: <20220708055250.1175444-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_225308_910124_A34420EF 
X-CRM114-Status: UNSURE (   9.67  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] spi: stm32: fix reads for sizes bigger than SZ_64K-1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

stm32_spi_transfer_one() can transfer no more than SPI_CR2_TSIZE (64K - 1),
while e.g. imd tends to read more than  (64K - 1) from SPI flash:

  barebox:/ imd /dev/m25p0
  imd: error 90

Define spi_controller_mem_ops::exec_op for the SPI controller to fix
this.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/spi/stm32_spi.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
index 0cb04a968c8a..d38207edac5f 100644
--- a/drivers/spi/stm32_spi.c
+++ b/drivers/spi/stm32_spi.c
@@ -11,6 +11,7 @@
 #include <init.h>
 #include <errno.h>
 #include <linux/reset.h>
+#include <linux/spi/spi-mem.h>
 #include <spi/spi.h>
 #include <linux/bitops.h>
 #include <clock.h>
@@ -474,6 +475,24 @@ out:
 	return ret;
 }
 
+static int stm32_spi_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op)
+{
+	if (op->data.nbytes > SPI_CR2_TSIZE)
+		op->data.nbytes = SPI_CR2_TSIZE;
+
+	return 0;
+}
+
+static int stm32_spi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
+{
+	return -ENOTSUPP;
+}
+
+static const struct spi_controller_mem_ops stm32_spi_mem_ops = {
+	.adjust_op_size = stm32_spi_adjust_op_size,
+	.exec_op = stm32_spi_exec_op,
+};
+
 static int stm32_spi_get_fifo_size(struct stm32_spi_priv *priv)
 {
 	u32 count = 0;
@@ -522,6 +541,7 @@ static int stm32_spi_probe(struct device_d *dev)
 
 	master->setup = stm32_spi_setup;
 	master->transfer = stm32_spi_transfer;
+	master->mem_ops = stm32_spi_mem_ops;
 
 	master->bus_num = -1;
 	stm32_spi_dt_probe(priv);
-- 
2.34.1




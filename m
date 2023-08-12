Delivery-date: Sat, 12 Aug 2023 09:50:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUjOc-000OeF-6G
	for lore@lore.pengutronix.de; Sat, 12 Aug 2023 09:50:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUjOa-0005R4-0A
	for lore@pengutronix.de; Sat, 12 Aug 2023 09:50:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wmUhg6FO+/iK1gx1isdTq+JL1bcjummuOpG+mZWy7x0=; b=zuhZhGc6ombD+FLebflWygp9pZ
	TXgFJiJMDKsnlLt1bsYhVVkUoECvkcssVCJAJxu7kMt5JUdjVH1n+WM0kUDl59BW2WvueRKNU7em+
	KlcaeUWcssm28FRw4SknismNwv8uwRKjG5s97RGKtUU1MRoBplBmxiRpsf5KNiP+EWoHN6fwOA8g7
	h106tcfznIXcJdK/Hy8Fvk0mLvhppptvOm+FqiSSIsvUY0gBiaqAOWD+we5Fzz0hl+9mgxFr6MP6+
	/iARnSAN7+p/SaNKJq2QzVnTM0zhY6rhHnJwDHUlmzMs+d/hLDrF7tN0udc6SUiKAAiXFO75dDFtV
	1AzbIcZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUjNU-00CsMo-0o;
	Sat, 12 Aug 2023 07:49:40 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUjNQ-00CsLF-0t
	for barebox@lists.infradead.org;
	Sat, 12 Aug 2023 07:49:37 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 32C09FF803;
	Sat, 12 Aug 2023 07:49:34 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Sat, 12 Aug 2023 09:48:23 +0200
Message-ID: <20230812074859.1755-4-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230812074859.1755-1-jmaselbas@zdiv.net>
References: <20230812074859.1755-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_004936_457015_1D77A93D 
X-CRM114-Status: UNSURE (   9.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] mtd: spi-nor: move SPI_NOR_MAX_ADDR_WIDTH define to spi-nor.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Jules Maselbas <jmaselbas@kalray.eu>

Move the SPI_NOR_MAX_ADDR_WIDTH define into spi-nor.h to be used by
drivers.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 -
 include/linux/mtd/spi-nor.h   | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 968fd3ea7a..ab61e7824c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -21,7 +21,6 @@
 #include <of.h>
 
 #define SPI_NOR_MAX_ID_LEN	6
-#define SPI_NOR_MAX_ADDR_WIDTH	4
 
 /*
  * For everything but full-chip erase; probably could be much smaller, but kept
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index fc7cefb55e..720b4888d4 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -142,6 +142,8 @@
         SNOR_PROTO_ADDR(_addr_nbits) |                         \
         SNOR_PROTO_DATA(_data_nbits))
 
+#define SPI_NOR_MAX_ADDR_WIDTH	4
+
 enum spi_nor_protocol {
        SNOR_PROTO_1_1_1 = SNOR_PROTO_STR(1, 1, 1),
        SNOR_PROTO_1_1_2 = SNOR_PROTO_STR(1, 1, 2),
-- 
2.41.0




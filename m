Delivery-date: Fri, 11 Jun 2021 10:03:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrc8a-0001tF-5C
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 10:03:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrc8Y-0007RQ-Rg
	for lore@pengutronix.de; Fri, 11 Jun 2021 10:03:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/3nOtFM5C9W4VVjfqu1zN2ZQJkbngD3GSjXQNXYgorw=; b=E/qFii1v19xruF
	w3AGsVqS+uD69Of3MqlaDdUkvkIvtVkuiOV1+JyaBEm0PX7v6C+Uj9acDBTaxWyXJFC0u3GVgfX7P
	tuVOArVJLDP1u74l+H5X10rUTHJBn25uvjWAgxTuXWC7XbSUVxppKyZlyGTcl3QBQ1MfIJVMFrUti
	0OwmukZO1Tt4mvT4903z/YiG5NMUOzG2YQZcNZrdakiz8ksT17fuzdNQEX9/hnZ6CHDvWlcaIXffN
	DTO5wZ3u9B3xP+k/A07yCOLeEFnQUkYjxerVtnhhXxh+xIt+xf2PRmheDOxy+/p36bXm/0q3U5ttT
	/BjbX+V0KqmNdin1LmLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrc7G-004HGN-Gi; Fri, 11 Jun 2021 08:02:10 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrc7B-004HEn-Og
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 08:02:07 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 38E08200017;
 Fri, 11 Jun 2021 08:01:59 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 11 Jun 2021 10:01:55 +0200
Message-Id: <20210611080155.3555976-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_010205_960307_F3FAD623 
X-CRM114-Status: UNSURE (   8.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: <io.h>: define (read|write)[bwlq]_relaxed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For Linux, It's always correct to substitute any of the read or
write _relaxed functions with their non relaxed counterpart.
Define functions that do this.

Unlike with Linux, they doesn't per se affect performance: barebox
writel doesn't imply memory barriers, instead it depends on
the architecture support to map IO memory regions as non-bufferable.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/clk/rockchip/clk.h        |  3 ---
 drivers/gpio/gpio-davinci.c       |  3 ---
 drivers/regulator/stm32-vrefbuf.c |  4 +---
 drivers/spi/atmel-quadspi.c       |  3 ---
 include/io.h                      | 32 +++++++++++++++++++++++++++++++
 5 files changed, 33 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 5b5bc8c23137..a3db88dfc890 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -21,9 +21,6 @@
 #include <linux/clk.h>
 #include <restart.h>
 
-#define writel_relaxed	writel
-#define readl_relaxed	readl
-
 #define HIWORD_UPDATE(val, mask, shift) \
 		((val) << (shift) | (mask) << ((shift) + 16))
 
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 20311d968b82..b4f217660691 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -13,9 +13,6 @@
 #include <io.h>
 #include <linux/err.h>
 
-#define readl_relaxed	readl
-#define writel_relaxed	writel
-
 struct davinci_gpio_regs {
 	u32	dir;
 	u32	out_data;
diff --git a/drivers/regulator/stm32-vrefbuf.c b/drivers/regulator/stm32-vrefbuf.c
index 3956b1f64f6e..77287c2b0e82 100644
--- a/drivers/regulator/stm32-vrefbuf.c
+++ b/drivers/regulator/stm32-vrefbuf.c
@@ -10,6 +10,7 @@
 #include <linux/clk.h>
 #include <linux/iopoll.h>
 #include <of.h>
+#include <io.h>
 #include <regulator.h>
 
 /* STM32 VREFBUF registers */
@@ -23,9 +24,6 @@
 
 #define STM32_VREFBUF_AUTO_SUSPEND_DELAY_MS	10
 
-#define readl_relaxed readl
-#define writel_relaxed writel
-
 struct stm32_vrefbuf {
 	void __iomem *base;
 	struct clk *clk;
diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 6799f95ea33e..af2191726fe9 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -34,9 +34,6 @@
 #include <of_device.h>
 #include <linux/iopoll.h>
 
-#define writel_relaxed   writel
-#define readl_relaxed   readl
-
 /* QSPI register offsets */
 #define QSPI_CR      0x0000  /* Control Register */
 #define QSPI_MR      0x0004  /* Mode Register */
diff --git a/include/io.h b/include/io.h
index 79d8b56c4e3f..6a74246ea777 100644
--- a/include/io.h
+++ b/include/io.h
@@ -6,4 +6,36 @@
 
 #define IOMEM_ERR_PTR(err) (__force void __iomem *)ERR_PTR(err)
 
+#ifndef readq_relaxed
+#define readq_relaxed(addr) readq(addr)
+#endif
+
+#ifndef readl_relaxed
+#define readl_relaxed(addr) readl(addr)
+#endif
+
+#ifndef readw_relaxed
+#define readw_relaxed(addr) readw(addr)
+#endif
+
+#ifndef readb_relaxed
+#define readb_relaxed(addr) readb(addr)
+#endif
+
+#ifndef writeq_relaxed
+#define writeq_relaxed(val, addr) writeq((val), (addr))
+#endif
+
+#ifndef writel_relaxed
+#define writel_relaxed(val, addr) writel((val), (addr))
+#endif
+
+#ifndef writew_relaxed
+#define writew_relaxed(val, addr) writew((val), (addr))
+#endif
+
+#ifndef writeb_relaxed
+#define writeb_relaxed(val, addr) writeb((val), (addr))
+#endif
+
 #endif /* __IO_H */
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Thu, 25 May 2023 01:45:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAJ-00Cre6-Tk
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAG-000732-VJ
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yLAN8D31WLpA4rKJFBS9eB+W2LuUIqAWz972j+ZHxYQ=; b=sGgtyE6S4kC1zO56G1D5Sht1X9
	WawiofAsHyFRE8IujUEr8VDy4XUd9QoYWbrMPdwdKFf3jvH/CNwwjI+eocFMziTeXA3jiplFMywtX
	JJl21jF/bOpbGTWdPSkz7GgHzmK6uoS1UFBbmW/ycghWGHfcmMMrOZo3z2+CsY+03FK2HB59XPsYL
	mWFXfgPO0xkXXBk8ySCZyC/QiU97s6aPIuztk2rbiS0YlOq2U5yjjmVsA2JpveIGZ6i6zAXqQT8Ea
	sdmBtqiL7SJx14dxkSRkUQYwpoFfbW9xNKnGaCTUgVnyg4itOR+reRxZe9sl+cgxL85Unt9JiskAM
	LLYAVgUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y97-00EzPg-2K;
	Wed, 24 May 2023 23:43:57 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8x-00EzKe-2r
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:51 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id E41951C0014;
	Wed, 24 May 2023 23:43:41 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:28 +0200
Message-Id: <20230524234328.82741-14-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164348_065482_E7AA07FA 
X-CRM114-Status: GOOD (  14.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 13/13] ARM: sunxi: xload: Add helpers for chain-loading from SD-card
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Provide sun50i_mmc0_start_image helper that can be called from PBL to
to easily initialize mmc0 controller and chainload a barebox.bin file
from the first FAT partition.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 arch/arm/mach-sunxi/Makefile    |  1 +
 arch/arm/mach-sunxi/xload-mmc.c | 67 +++++++++++++++++++++++++++++++++
 include/mach/sunxi/xload.h      |  2 +
 3 files changed, 70 insertions(+)
 create mode 100644 arch/arm/mach-sunxi/xload-mmc.c

diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
index 0808a21605..fd38462477 100644
--- a/arch/arm/mach-sunxi/Makefile
+++ b/arch/arm/mach-sunxi/Makefile
@@ -2,3 +2,4 @@ obj-y += sunxi.o
 lwl-y += cpu_init.o
 lwl-y += sun50i-a64-ddr3-init.o
 lwl-y += sun50i-a64-lpddr3-init.o
+pbl-y += xload-mmc.o
diff --git a/arch/arm/mach-sunxi/xload-mmc.c b/arch/arm/mach-sunxi/xload-mmc.c
new file mode 100644
index 0000000000..9b2d81148e
--- /dev/null
+++ b/arch/arm/mach-sunxi/xload-mmc.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <asm/cache.h>
+#include <linux/bitops.h>
+#include <mach/sunxi/sun50i-regs.h>
+#include <mach/sunxi/sunxi-pinctrl.h>
+#include <mach/sunxi/xload.h>
+
+static void sun50i_mmc0_init(void)
+{
+	void __iomem *ccu = SUN50I_CCU_BASE_ADDR;
+	void __iomem *pio = SUN50I_PIO_BASE_ADDR;
+
+	/* - clock un-gate pinctrl controller */
+	setbits_le32(ccu + CCU_BUS_CLK_GATE2, BIT(5));
+	/* - set mmc alt-function (2) for pins PF5 to PF0 */
+	sunxi_pinmux_set_func(pio, PIO_PF_CFG0, GENMASK(5, 0), 2);
+
+	/* - clock un-gate mmc controller and release reset */
+	setbits_le32(ccu + 0x2c0, /* RST_BUS_MMC0 */ BIT(8));
+	setbits_le32(ccu + 0x060, /* CLK_BUS_MMC0 */ BIT(8));
+	writel(BIT(31), ccu + 0x88); /* MMC0 clock gate */
+}
+
+#if 0 /* currently unused */
+static void sun50i_mmc2_init(void)
+{
+	void __iomem *ccu = SUN50I_CCU_BASE_ADDR;
+	void __iomem *pio = SUN50I_PIO_BASE_ADDR;
+
+	/* - clock un-gate pinctrl controller */
+	setbits_le32(ccu + CCU_BUS_CLK_GATE2, BIT(5));
+	/* - set mmc alt-function (3) for pins PC16 to PC5 */
+	sunxi_pinmux_set_func(pio, PIO_PC_BASE, GENMASK(16, 5), 3);
+
+	/* - clock un-gate mmc controller and release reset */
+	setbits_le32(ccu + 0x2c0, /* RST_BUS_MMC2 */ BIT(10));
+	setbits_le32(ccu + 0x060, /* CLK_BUS_MMC2 */ BIT(10));
+	writel(BIT(31), ccu + 0x90); /* MMC2 clock gate */
+}
+#endif
+
+static void sunxi_fat_start_image(struct pbl_bio *bio, void *buf, size_t size)
+{
+	void (*start)(void) = buf;
+	int ret;
+
+	ret = pbl_fat_load(bio, "barebox.bin", buf, size);
+	if (ret < 0)
+		return;
+	sync_caches_for_execution();
+	start();
+}
+
+void sun50i_mmc0_start_image(void)
+{
+	struct pbl_bio bio;
+	int ret;
+
+	sun50i_mmc0_init();
+
+	ret = sunxi_mmc_bio_init(&bio, SUN50I_MMC0_BASE_ADDR, 24000000, 0);
+	if (ret)
+		return;
+	sunxi_fat_start_image(&bio, IOMEM(SUN50I_DRAM_ADDR), SZ_16M);
+}
diff --git a/include/mach/sunxi/xload.h b/include/mach/sunxi/xload.h
index f978db4951..005f78b5c5 100644
--- a/include/mach/sunxi/xload.h
+++ b/include/mach/sunxi/xload.h
@@ -9,4 +9,6 @@
 int sunxi_mmc_bio_init(struct pbl_bio *bio, void __iomem *base,
 		       unsigned int clock, unsigned int slot);
 
+void sun50i_mmc0_start_image(void);
+
 #endif
-- 
2.40.1




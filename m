Delivery-date: Mon, 07 Jun 2021 12:54:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCtO-0006BT-Mo
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:54:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCtJ-0002gd-03
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:54:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZaK5etZUEF0qP+JjTU5bHHWlHvlDucQ1mRBykCKg6Q=; b=ZiftyxpHLfPBuI
	eUGfHXstFeiY3cjXdsP1HBHsEd8ix+tQzVM+mVv4vb1X10lOfg0Y0qTqrrgC5wHeL3e7qptAhGSDU
	zJj7e3aw+pITEHANjpqKbDSvpX2SyfI0r4RnZx3ZH0atk8QNhJEY2kFcrSR273CI9ukE0mtG5onyP
	xj+0hVcsYwLey3aYwFfGmhFZI5gTuDf/MwvMn9oikT38stV7ww09q18yHKgnoygdTE+Y74eLgujUu
	2aMEtXXehhfAr6u5ufYyYXBkwnY7pa5WjccWDsBQBUrSLgrOw5oJLS+a/bGe5H/GxM5OY3w3Q0Z7N
	zyIKCyappmO1synqZjNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCrG-0034ay-QA; Mon, 07 Jun 2021 10:51:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-00322I-Fe
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dg-PS; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCjt-0008KH-V6; Mon, 07 Jun 2021 12:44:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:03 +0200
Message-Id: <20210607104411.23071-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_974623_84FA99D7 
X-CRM114-Status: GOOD (  27.66  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/12] mci: sdhci: port over some common functions from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds some functions useful for SDHCI drivers from Linux:

sdhci_calc_clk()
sdhci_set_clock()
sdhci_enable_clk()
sdhci_read_caps()
sdhci_set_bus_width()

These functions can be used to further unify our different SDHCI
drivers. All the new functions assume the also newly introduced
sdhci_setup_host() has been called before using them.

The functions are moslty the same as their Linux pendants, only
sdhci_calc_clk() takes an addional clock rate argument where Linux
uses host->max_clk. This is not suitable for the upcoming Rockchip
driver which needs to adjust the input clock using clk_set_rate(),
so fixed host->max_clk is not accurate for this driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/sdhci.c | 281 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/sdhci.h |  53 +++++++++
 include/mci.h       |   2 +
 3 files changed, 336 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index dba26b2665..0783f6d420 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -4,6 +4,7 @@
 #include <driver.h>
 #include <mci.h>
 #include <io.h>
+#include <linux/bitfield.h>
 
 #include "sdhci.h"
 
@@ -88,6 +89,27 @@ static void sdhci_tx_pio(struct sdhci *sdhci, struct mci_data *data,
 		sdhci_write32(sdhci, SDHCI_BUFFER, buf[i]);
 }
 
+void sdhci_set_bus_width(struct sdhci *host, int width)
+{
+	u8 ctrl;
+
+	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
+
+	ctrl = sdhci_read8(host, SDHCI_HOST_CONTROL);
+	if (width == MMC_BUS_WIDTH_8) {
+		ctrl &= ~SDHCI_CTRL_4BITBUS;
+		ctrl |= SDHCI_CTRL_8BITBUS;
+	} else {
+		if (host->mci->host_caps & MMC_CAP_8_BIT_DATA)
+			ctrl &= ~SDHCI_CTRL_8BITBUS;
+		if (width == MMC_BUS_WIDTH_4)
+			ctrl |= SDHCI_CTRL_4BITBUS;
+		else
+			ctrl &= ~SDHCI_CTRL_4BITBUS;
+	}
+	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
+}
+
 #ifdef __PBL__
 /*
  * Stubs to make timeout logic below work in PBL
@@ -149,3 +171,262 @@ int sdhci_reset(struct sdhci *sdhci, u8 mask)
 					val, !(val & mask),
 					100 * USEC_PER_MSEC);
 }
+
+static u16 sdhci_get_preset_value(struct sdhci *host)
+{
+	u16 preset = 0;
+
+	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
+
+	switch (host->timing) {
+	case MMC_TIMING_UHS_SDR12:
+		preset = sdhci_read16(host, SDHCI_PRESET_FOR_SDR12);
+		break;
+	case MMC_TIMING_UHS_SDR25:
+		preset = sdhci_read16(host, SDHCI_PRESET_FOR_SDR25);
+		break;
+	case MMC_TIMING_UHS_SDR50:
+		preset = sdhci_read16(host, SDHCI_PRESET_FOR_SDR50);
+		break;
+	case MMC_TIMING_UHS_SDR104:
+	case MMC_TIMING_MMC_HS200:
+		preset = sdhci_read16(host, SDHCI_PRESET_FOR_SDR104);
+		break;
+	case MMC_TIMING_UHS_DDR50:
+	case MMC_TIMING_MMC_DDR52:
+		preset = sdhci_read16(host, SDHCI_PRESET_FOR_DDR50);
+		break;
+	case MMC_TIMING_MMC_HS400:
+		preset = sdhci_read16(host, SDHCI_PRESET_FOR_HS400);
+		break;
+	default:
+		dev_warn(host->mci->hw_dev, "Invalid UHS-I mode selected\n");
+		preset = sdhci_read16(host, SDHCI_PRESET_FOR_SDR12);
+		break;
+	}
+	return preset;
+}
+
+u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,
+		   unsigned int *actual_clock, unsigned int input_clock)
+{
+	int div = 0; /* Initialized for compiler warning */
+	int real_div = div, clk_mul = 1;
+	u16 clk = 0;
+	bool switch_base_clk = false;
+
+	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
+
+	if (host->version >= SDHCI_SPEC_300) {
+		if (host->preset_enabled) {
+			u16 pre_val;
+
+			clk = sdhci_read16(host, SDHCI_CLOCK_CONTROL);
+			pre_val = sdhci_get_preset_value(host);
+			div = FIELD_GET(SDHCI_PRESET_SDCLK_FREQ_MASK, pre_val);
+			if (host->clk_mul &&
+				(pre_val & SDHCI_PRESET_CLKGEN_SEL)) {
+				clk = SDHCI_PROG_CLOCK_MODE;
+				real_div = div + 1;
+				clk_mul = host->clk_mul;
+			} else {
+				real_div = max_t(int, 1, div << 1);
+			}
+			goto clock_set;
+		}
+
+		/*
+		 * Check if the Host Controller supports Programmable Clock
+		 * Mode.
+		 */
+		if (host->clk_mul) {
+			for (div = 1; div <= 1024; div++) {
+				if ((input_clock * host->clk_mul / div)
+					<= clock)
+					break;
+			}
+			if ((input_clock * host->clk_mul / div) <= clock) {
+				/*
+				 * Set Programmable Clock Mode in the Clock
+				 * Control register.
+				 */
+				clk = SDHCI_PROG_CLOCK_MODE;
+				real_div = div;
+				clk_mul = host->clk_mul;
+				div--;
+			} else {
+				/*
+				 * Divisor can be too small to reach clock
+				 * speed requirement. Then use the base clock.
+				 */
+				switch_base_clk = true;
+			}
+		}
+
+		if (!host->clk_mul || switch_base_clk) {
+			/* Version 3.00 divisors must be a multiple of 2. */
+			if (input_clock <= clock)
+				div = 1;
+			else {
+				for (div = 2; div < SDHCI_MAX_DIV_SPEC_300;
+				     div += 2) {
+					if ((input_clock / div) <= clock)
+						break;
+				}
+			}
+			real_div = div;
+			div >>= 1;
+			if ((host->quirks2 & SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN)
+				&& !div && input_clock <= 25000000)
+				div = 1;
+		}
+	} else {
+		/* Version 2.00 divisors must be a power of 2. */
+		for (div = 1; div < SDHCI_MAX_DIV_SPEC_200; div *= 2) {
+			if ((input_clock / div) <= clock)
+				break;
+		}
+		real_div = div;
+		div >>= 1;
+	}
+
+clock_set:
+	if (real_div)
+		*actual_clock = (input_clock * clk_mul) / real_div;
+	clk |= (div & SDHCI_DIV_MASK) << SDHCI_DIVIDER_SHIFT;
+	clk |= ((div & SDHCI_DIV_HI_MASK) >> SDHCI_DIV_MASK_LEN)
+		<< SDHCI_DIVIDER_HI_SHIFT;
+
+	return clk;
+}
+
+void sdhci_enable_clk(struct sdhci *host, u16 clk)
+{
+	u64 start;
+
+	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
+
+	clk |= SDHCI_CLOCK_INT_EN;
+	sdhci_write16(host, SDHCI_CLOCK_CONTROL, clk);
+
+	start = get_time_ns();
+	while (!(sdhci_read16(host, SDHCI_CLOCK_CONTROL) &
+		SDHCI_CLOCK_INT_STABLE)) {
+		if (is_timeout(start, 150 * MSECOND)) {
+			dev_err(host->mci->hw_dev,
+					"SDHCI clock stable timeout\n");
+			return;
+		}
+	}
+
+	clk |= SDHCI_CLOCK_CARD_EN;
+	sdhci_write16(host, SDHCI_CLOCK_CONTROL, clk);
+}
+
+void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_clock)
+{
+	u16 clk;
+
+	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
+
+	host->mci->clock = 0;
+
+	sdhci_write16(host, SDHCI_CLOCK_CONTROL, 0);
+
+	if (clock == 0)
+		return;
+
+	clk = sdhci_calc_clk(host, clock, &host->mci->clock, input_clock);
+	sdhci_enable_clk(host, clk);
+}
+
+void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
+			const u32 *caps, const u32 *caps1)
+{
+	u16 v;
+	u64 dt_caps_mask = 0;
+	u64 dt_caps = 0;
+	struct device_node *np = host->mci->hw_dev->device_node;
+
+	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
+
+	if (host->read_caps)
+		return;
+
+	host->read_caps = true;
+
+	sdhci_reset(host, SDHCI_RESET_ALL);
+
+	of_property_read_u64(np, "sdhci-caps-mask", &dt_caps_mask);
+	of_property_read_u64(np, "sdhci-caps", &dt_caps);
+
+	v = ver ? *ver : sdhci_read16(host, SDHCI_HOST_VERSION);
+	host->version = (v & SDHCI_SPEC_VER_MASK) >> SDHCI_SPEC_VER_SHIFT;
+
+	if (host->quirks & SDHCI_QUIRK_MISSING_CAPS)
+		return;
+
+	if (caps) {
+		host->caps = *caps;
+	} else {
+		host->caps = sdhci_read32(host, SDHCI_CAPABILITIES);
+		host->caps &= ~lower_32_bits(dt_caps_mask);
+		host->caps |= lower_32_bits(dt_caps);
+	}
+
+	if (host->version < SDHCI_SPEC_300)
+		return;
+
+	if (caps1) {
+		host->caps1 = *caps1;
+	} else {
+		host->caps1 = sdhci_read32(host, SDHCI_CAPABILITIES_1);
+		host->caps1 &= ~upper_32_bits(dt_caps_mask);
+		host->caps1 |= upper_32_bits(dt_caps);
+	}
+}
+
+int sdhci_setup_host(struct sdhci *host)
+{
+	struct mci_host *mci = host->mci;
+
+	BUG_ON(!mci);
+
+	sdhci_read_caps(host);
+
+	if (!host->max_clk) {
+		if (host->version >= SDHCI_SPEC_300)
+			host->max_clk = FIELD_GET(SDHCI_CLOCK_V3_BASE_MASK, host->caps);
+		else
+			host->max_clk = FIELD_GET(SDHCI_CLOCK_BASE_MASK, host->caps);
+
+		host->max_clk *= 1000000;
+	}
+
+	/*
+	 * In case of Host Controller v3.00, find out whether clock
+	 * multiplier is supported.
+	 */
+	host->clk_mul = FIELD_GET(SDHCI_CLOCK_MUL_MASK, host->caps1);
+
+	/*
+	 * In case the value in Clock Multiplier is 0, then programmable
+	 * clock mode is not supported, otherwise the actual clock
+	 * multiplier is one more than the value of Clock Multiplier
+	 * in the Capabilities Register.
+	 */
+	if (host->clk_mul)
+		host->clk_mul += 1;
+
+	if (host->caps & SDHCI_CAN_VDD_180)
+		mci->voltages |= MMC_VDD_165_195;
+	if (host->caps & SDHCI_CAN_VDD_300)
+		mci->voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
+	if (host->caps & SDHCI_CAN_VDD_330)
+		mci->voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
+
+	if (host->caps & SDHCI_CAN_DO_HISPD)
+		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
+
+	return 0;
+}
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index aa6dd9824e..872caabde5 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -69,7 +69,9 @@
 #define  SDHCI_BUS_POWER_EN			BIT(0)
 #define SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET	0x2c
 #define SDHCI_CLOCK_CONTROL					0x2c
+#define  SDHCI_DIVIDER_SHIFT			8
 #define  SDHCI_DIVIDER_HI_SHIFT			6
+#define  SDHCI_DIV_MASK				0xFF
 #define  SDHCI_DIV_HI_MASK			0x300
 #define  SDHCI_DIV_MASK_LEN			8
 #define  SDHCI_FREQ_SEL(x)			(((x) & 0xff) << 8)
@@ -137,6 +139,27 @@
 #define  SDHCI_CAN_DO_ADMA3			0x08000000
 #define  SDHCI_SUPPORT_HS400			0x80000000 /* Non-standard */
 
+#define SDHCI_PRESET_FOR_SDR12	0x66
+#define SDHCI_PRESET_FOR_SDR25	0x68
+#define SDHCI_PRESET_FOR_SDR50	0x6A
+#define SDHCI_PRESET_FOR_SDR104	0x6C
+#define SDHCI_PRESET_FOR_DDR50	0x6E
+#define SDHCI_PRESET_FOR_HS400	0x74 /* Non-standard */
+#define SDHCI_PRESET_CLKGEN_SEL		BIT(10)
+#define SDHCI_PRESET_SDCLK_FREQ_MASK	GENMASK(9, 0)
+
+#define SDHCI_HOST_VERSION	0xFE
+#define  SDHCI_VENDOR_VER_MASK	0xFF00
+#define  SDHCI_VENDOR_VER_SHIFT	8
+#define  SDHCI_SPEC_VER_MASK	0x00FF
+#define  SDHCI_SPEC_VER_SHIFT	0
+#define   SDHCI_SPEC_100	0
+#define   SDHCI_SPEC_200	1
+#define   SDHCI_SPEC_300	2
+#define   SDHCI_SPEC_400	3
+#define   SDHCI_SPEC_410	4
+#define   SDHCI_SPEC_420	5
+
 #define  SDHCI_CLOCK_MUL_SHIFT	16
 
 #define SDHCI_MMC_BOOT						0xC4
@@ -151,6 +174,24 @@ struct sdhci {
 	void (*write32)(struct sdhci *host, int reg, u32 val);
 	void (*write16)(struct sdhci *host, int reg, u16 val);
 	void (*write8)(struct sdhci *host, int reg, u8 val);
+
+	int max_clk; /* Max possible freq (Hz) */
+	int clk_mul; /* Clock Muliplier value */
+
+	unsigned int version; /* SDHCI spec. version */
+
+	enum mci_timing timing;
+	bool preset_enabled; /* Preset is enabled */
+
+	unsigned int quirks;
+#define SDHCI_QUIRK_MISSING_CAPS		BIT(27)
+	unsigned int quirks2;
+#define SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN	BIT(15)
+	u32 caps;	/* CAPABILITY_0 */
+	u32 caps1;	/* CAPABILITY_1 */
+	bool read_caps;	/* Capability flags have been read */
+
+	struct mci_host	*mci;
 };
 
 static inline u32 sdhci_read32(struct sdhci *host, int reg)
@@ -189,6 +230,18 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 			     u32 *xfer);
 int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data);
 int sdhci_reset(struct sdhci *sdhci, u8 mask);
+u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,
+		   unsigned int *actual_clock, unsigned int input_clock);
+void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_clock);
+void sdhci_enable_clk(struct sdhci *host, u16 clk);
+int sdhci_setup_host(struct sdhci *host);
+void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
+			const u32 *caps, const u32 *caps1);
+static inline void sdhci_read_caps(struct sdhci *host)
+{
+	__sdhci_read_caps(host, NULL, NULL, NULL);
+}
+void sdhci_set_bus_width(struct sdhci *host, int width);
 
 #define sdhci_read8_poll_timeout(sdhci, reg, val, cond, timeout_us) \
 	read_poll_timeout(sdhci_read8, val, cond, timeout_us, sdhci, reg)
diff --git a/include/mci.h b/include/mci.h
index 5e6805e8dc..df2437f618 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -365,6 +365,8 @@ enum mci_timing {
 	MMC_TIMING_UHS_SDR104	= 4,
 	MMC_TIMING_UHS_DDR50	= 5,
 	MMC_TIMING_MMC_HS200	= 6,
+	MMC_TIMING_MMC_DDR52	= 7,
+	MMC_TIMING_MMC_HS400	= 8,
 };
 
 struct mci_ios {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


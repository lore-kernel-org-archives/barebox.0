Delivery-date: Tue, 27 Apr 2021 22:25:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUHH-0006am-7v
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:25:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUHE-0006TD-Dt
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:25:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p2g2cXQn/xBK3oGWxM2AAGZtqLluhjNApsWB7t8FYCc=; b=QNs9hdpQFbcFkZSx2Q+67SDl4
	yttBJQAl0/ko5L16uQ29hezVSWrk47mdFLPwGPz0iGFWgldHk1pYLXvHSGX0TomMTyv/JlrgaB5V6
	BmS2zYKTk0k6pDEJ28o21vP1+MKjeCGWCU8+cvYDw9khU9TisBrKgqwhmFx9lf2mbG37ifNIB3MLT
	q736DZY62NRK9U48yL4sqDGloTsRvws5z03+YM0hWFJTKNgCEhDTsHYa2nnhIobk4ddKMEEfrgeA5
	qEmtLUow4ztnfI32ULybSFGm78L3pu+xkCrGnXTEsFEO8nEi4+5jxJRDPddlVhA3vhBNHkH9rnAkH
	bGziipIYw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFw-002C8O-Rc; Tue, 27 Apr 2021 20:24:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFg-002C3F-FD
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=v7mx9Ryn4mo4tTKfsILG6QD3N0D+9tkN7cwOG0IagVs=; b=TjQ7EO9MVxj8bei9aQRrkSb/P3
 Feiem/v0u/bAbAIAnd9mbd7strjvxoR8wFxTEZJdfrlxLCx/2+LNuwmRPiSzSnl8vixhKO9bEsqsl
 6hxvX8O24MNCiZe01DLP7XbKQ0iH7ZFaWosQsQmYdpkJa/IjCbFCwPRYp/Ndav/qtruGR1ZoQyGAd
 7zA8hWYoN9+Jkfgb3jHD36hji7fYX5V7GaeAtt1IxSbepzh8Rx8Vs/uVIqobjOKVq6EoOfesrN5A7
 lc8k8i9bFrjaWhWo0W69L7LGs7gAcBH1miFIh+xgc4+zaDPizL4dYPm0EdBkOlyHgCoH2zXRJBKqf
 WO9ylCbg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFc-00GyLV-9h
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:24:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005Xc-Pt; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016l-3F; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:06 +0200
Message-Id: <20210427202309.32077-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132408_687340_CB739DB0 
X-CRM114-Status: GOOD (  30.53  )
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
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/12] gpio: generic: sync with upstream Linux gpio-mmio driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The gpio-mmio driver in Linux v5.12 has evolved quite a bit since the
last sync. It now supports big endian byte order, 64-bit registers as
well as controllers that have both a dirin and dirout register.

The latter is particularly interesting, because it's required for the
SiFive GPIO controller ported in a later patch.

This commit also touches gpio-mpc8xxx used on the LS1046A.
Because bit and byte endianness can now be configured separately,
the driver needs adjustment. We don't seem to support any boards
that have the peripheral as little-endian, but this is fixed by this
commit. Comparing other bgpio_init users with Linux shows no need for
further fixups.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Antony Pavlov <antonynpavlov@gmail.com>

Would be great if you could test this.
---
 drivers/gpio/gpio-generic.c     | 431 ++++++++++++++++++++++++--------
 drivers/gpio/gpio-mpc8xxx.c     |   6 +-
 include/io.h                    |   2 +
 include/linux/basic_mmio_gpio.h |  14 +-
 4 files changed, 337 insertions(+), 116 deletions(-)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index f381ddbf4e79..713085267a15 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -7,63 +7,117 @@
  */
 
 #include <init.h>
-#include <malloc.h>
 #include <linux/err.h>
+#include <linux/bug.h>
+#include <linux/kernel.h>
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <errno.h>
 #include <linux/log2.h>
-#include <linux/err.h>
+#include <linux/ioport.h>
+#include <io.h>
 #include <linux/basic_mmio_gpio.h>
+#include <linux/slab.h>
+#include <linux/bitops.h>
+#include <driver.h>
+#include <of.h>
+#include <of_device.h>
 
-static void bgpio_write8(void __iomem *reg, unsigned int data)
+static void bgpio_write8(void __iomem *reg, unsigned long data)
 {
 	writeb(data, reg);
 }
 
-static unsigned int bgpio_read8(void __iomem *reg)
+static unsigned long bgpio_read8(void __iomem *reg)
 {
 	return readb(reg);
 }
 
-static void bgpio_write16(void __iomem *reg, unsigned int data)
+static void bgpio_write16(void __iomem *reg, unsigned long data)
 {
 	writew(data, reg);
 }
 
-static unsigned int bgpio_read16(void __iomem *reg)
+static unsigned long bgpio_read16(void __iomem *reg)
 {
 	return readw(reg);
 }
 
-static void bgpio_write32(void __iomem *reg, unsigned int data)
+static void bgpio_write32(void __iomem *reg, unsigned long data)
 {
 	writel(data, reg);
 }
 
-static unsigned int bgpio_read32(void __iomem *reg)
+static unsigned long bgpio_read32(void __iomem *reg)
 {
 	return readl(reg);
 }
 
-static unsigned int bgpio_pin2mask(struct bgpio_chip *bgc, unsigned int pin)
+#if BITS_PER_LONG >= 64
+static void bgpio_write64(void __iomem *reg, unsigned long data)
+{
+	writeq(data, reg);
+}
+
+static unsigned long bgpio_read64(void __iomem *reg)
+{
+	return readq(reg);
+}
+#endif /* BITS_PER_LONG >= 64 */
+
+static void bgpio_write16be(void __iomem *reg, unsigned long data)
+{
+	iowrite16be(data, reg);
+}
+
+static unsigned long bgpio_read16be(void __iomem *reg)
+{
+	return ioread16be(reg);
+}
+
+static void bgpio_write32be(void __iomem *reg, unsigned long data)
+{
+	iowrite32be(data, reg);
+}
+
+static unsigned long bgpio_read32be(void __iomem *reg)
+{
+	return ioread32be(reg);
+}
+
+static unsigned long bgpio_line2mask(struct bgpio_chip *bgc, unsigned int line)
 {
-	return 1 << pin;
+	if (bgc->be_bits)
+		return BIT(bgc->bits - 1 - line);
+	return BIT(line);
 }
 
-static unsigned int bgpio_pin2mask_be(struct bgpio_chip *bgc, unsigned int pin)
+static int bgpio_get_set(struct gpio_chip *gc, unsigned int gpio)
 {
-	return 1 << (bgc->bits - 1 - pin);
+	struct bgpio_chip *bgc = to_bgpio_chip(gc);
+	unsigned long pinmask = bgpio_line2mask(bgc, gpio);
+	bool dir = !!(bgc->dir & pinmask);
+
+	if (dir)
+		return !!(bgc->read_reg(bgc->reg_set) & pinmask);
+	else
+		return !!(bgc->read_reg(bgc->reg_dat) & pinmask);
 }
 
 static int bgpio_get(struct gpio_chip *gc, unsigned int gpio)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
+	return !!(bgc->read_reg(bgc->reg_dat) & bgpio_line2mask(bgc, gpio));
+}
 
-	return !!(bgc->read_reg(bgc->reg_dat) & bgc->pin2mask(bgc, gpio));
+static void bgpio_set_none(struct gpio_chip *gc, unsigned int gpio, int val)
+{
 }
 
 static void bgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
-	unsigned int mask = bgc->pin2mask(bgc, gpio);
+	unsigned long mask = bgpio_line2mask(bgc, gpio);
 
 	if (val)
 		bgc->data |= mask;
@@ -77,7 +131,7 @@ static void bgpio_set_with_clear(struct gpio_chip *gc, unsigned int gpio,
 				 int val)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
-	unsigned int mask = bgc->pin2mask(bgc, gpio);
+	unsigned long mask = bgpio_line2mask(bgc, gpio);
 
 	if (val)
 		bgc->write_reg(bgc->reg_set, mask);
@@ -88,7 +142,7 @@ static void bgpio_set_with_clear(struct gpio_chip *gc, unsigned int gpio,
 static void bgpio_set_set(struct gpio_chip *gc, unsigned int gpio, int val)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
-	unsigned int mask = bgc->pin2mask(bgc, gpio);
+	unsigned long mask = bgpio_line2mask(bgc, gpio);
 
 	if (val)
 		bgc->data |= mask;
@@ -103,6 +157,12 @@ static int bgpio_simple_dir_in(struct gpio_chip *gc, unsigned int gpio)
 	return 0;
 }
 
+static int bgpio_dir_out_err(struct gpio_chip *gc, unsigned int gpio,
+				int val)
+{
+	return -EINVAL;
+}
+
 static int bgpio_simple_dir_out(struct gpio_chip *gc, unsigned int gpio,
 				int val)
 {
@@ -115,69 +175,115 @@ static int bgpio_dir_in(struct gpio_chip *gc, unsigned int gpio)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
 
-	bgc->dir &= ~bgc->pin2mask(bgc, gpio);
-	bgc->write_reg(bgc->reg_dir, bgc->dir);
+	bgc->dir &= ~bgpio_line2mask(bgc, gpio);
+
+	if (bgc->reg_dir_in)
+		bgc->write_reg(bgc->reg_dir_in, ~bgc->dir);
+	if (bgc->reg_dir_out)
+		bgc->write_reg(bgc->reg_dir_out, bgc->dir);
 
 	return 0;
 }
 
-static int bgpio_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
+static int bgpio_get_dir(struct gpio_chip *gc, unsigned int gpio)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
 
-	gc->ops->set(gc, gpio, val);
+	/* Return 0 if output, 1 if input */
+	if (bgc->dir_unreadable) {
+		if (bgc->dir & bgpio_line2mask(bgc, gpio))
+			return GPIOF_DIR_OUT;
+		return GPIOF_DIR_IN;
+	}
 
-	bgc->dir |= bgc->pin2mask(bgc, gpio);
-	bgc->write_reg(bgc->reg_dir, bgc->dir);
+	if (bgc->reg_dir_out) {
+		if (bgc->read_reg(bgc->reg_dir_out) & bgpio_line2mask(bgc, gpio))
+			return GPIOF_DIR_OUT;
+		return GPIOF_DIR_IN;
+	}
 
-	return 0;
+	if (bgc->reg_dir_in)
+		if (!(bgc->read_reg(bgc->reg_dir_in) & bgpio_line2mask(bgc, gpio)))
+			return GPIOF_DIR_OUT;
+
+	return GPIOF_DIR_IN;
 }
 
-static int bgpio_dir_in_inv(struct gpio_chip *gc, unsigned int gpio)
+static void bgpio_dir_out(struct bgpio_chip *bgc, unsigned int gpio, int val)
 {
-	struct bgpio_chip *bgc = to_bgpio_chip(gc);
-
-	bgc->dir |= bgc->pin2mask(bgc, gpio);
-	bgc->write_reg(bgc->reg_dir, bgc->dir);
+	bgc->dir |= bgpio_line2mask(bgc, gpio);
 
-	return 0;
+	if (bgc->reg_dir_in)
+		bgc->write_reg(bgc->reg_dir_in, ~bgc->dir);
+	if (bgc->reg_dir_out)
+		bgc->write_reg(bgc->reg_dir_out, bgc->dir);
 }
 
-static int bgpio_dir_out_inv(struct gpio_chip *gc, unsigned int gpio, int val)
+static int bgpio_dir_out_dir_first(struct gpio_chip *gc, unsigned int gpio,
+				   int val)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
 
+	bgpio_dir_out(bgc, gpio, val);
 	gc->ops->set(gc, gpio, val);
+	return 0;
+}
 
-	bgc->dir &= ~bgc->pin2mask(bgc, gpio);
-	bgc->write_reg(bgc->reg_dir, bgc->dir);
+static int bgpio_dir_out_val_first(struct gpio_chip *gc, unsigned int gpio,
+				   int val)
+{
+	struct bgpio_chip *bgc = to_bgpio_chip(gc);
 
+	gc->ops->set(gc, gpio, val);
+	bgpio_dir_out(bgc, gpio, val);
 	return 0;
 }
 
-static int bgpio_setup_accessors(struct device_d *dev, struct bgpio_chip *bgc,
-				 bool be)
+static int bgpio_setup_accessors(struct device_d *dev,
+				 struct bgpio_chip *bgc,
+				 bool byte_be)
 {
+
 	switch (bgc->bits) {
 	case 8:
 		bgc->read_reg	= bgpio_read8;
 		bgc->write_reg	= bgpio_write8;
 		break;
 	case 16:
-		bgc->read_reg	= bgpio_read16;
-		bgc->write_reg	= bgpio_write16;
+		if (byte_be) {
+			bgc->read_reg	= bgpio_read16be;
+			bgc->write_reg	= bgpio_write16be;
+		} else {
+			bgc->read_reg	= bgpio_read16;
+			bgc->write_reg	= bgpio_write16;
+		}
 		break;
 	case 32:
-		bgc->read_reg	= bgpio_read32;
-		bgc->write_reg	= bgpio_write32;
+		if (byte_be) {
+			bgc->read_reg	= bgpio_read32be;
+			bgc->write_reg	= bgpio_write32be;
+		} else {
+			bgc->read_reg	= bgpio_read32;
+			bgc->write_reg	= bgpio_write32;
+		}
+		break;
+#if BITS_PER_LONG >= 64
+	case 64:
+		if (byte_be) {
+			dev_err(dev,
+				"64 bit big endian byte order unsupported\n");
+			return -EINVAL;
+		} else {
+			bgc->read_reg	= bgpio_read64;
+			bgc->write_reg	= bgpio_write64;
+		}
 		break;
+#endif /* BITS_PER_LONG >= 64 */
 	default:
-		dev_err(dev, "Unsupported data width %u bits\n", bgc->bits);
+		dev_err(dev, "unsupported data width %u bits\n", bgc->bits);
 		return -EINVAL;
 	}
 
-	bgc->pin2mask = be ? bgpio_pin2mask_be : bgpio_pin2mask;
-
 	return 0;
 }
 
@@ -188,7 +294,7 @@ static int bgpio_setup_accessors(struct device_d *dev, struct bgpio_chip *bgc,
  *	- single input/output register resource (named "dat").
  *	- set/clear pair (named "set" and "clr").
  *	- single output register resource and single input resource ("set" and
- *	  dat").
+ *	dat").
  *
  * For the single output register, this drives a 1 by setting a bit and a zero
  * by clearing a bit.  For the set clr pair, this drives a 1 by setting a bit
@@ -206,123 +312,211 @@ static int bgpio_setup_accessors(struct device_d *dev, struct bgpio_chip *bgc,
 static int bgpio_setup_io(struct bgpio_chip *bgc,
 			  void __iomem *dat,
 			  void __iomem *set,
-			  void __iomem *clr)
+			  void __iomem *clr,
+			  unsigned long flags)
 {
-	if (!dat)
-		return -EINVAL;
+	struct gpio_ops *ops = bgc->gc.ops;
 
 	bgc->reg_dat = dat;
+	if (!bgc->reg_dat)
+		return -EINVAL;
 
 	if (set && clr) {
 		bgc->reg_set = set;
 		bgc->reg_clr = clr;
-		bgc->gc.ops->set = bgpio_set_with_clear;
+		ops->set = bgpio_set_with_clear;
 	} else if (set && !clr) {
 		bgc->reg_set = set;
-		bgc->gc.ops->set = bgpio_set_set;
-	} else
-		bgc->gc.ops->set = bgpio_set;
+		ops->set = bgpio_set_set;
+	} else if (flags & BGPIOF_NO_OUTPUT) {
+		ops->set = bgpio_set_none;
+	} else {
+		ops->set = bgpio_set;
+	}
 
-	bgc->gc.ops->get = bgpio_get;
+	if (!(flags & BGPIOF_UNREADABLE_REG_SET) && (flags & BGPIOF_READ_OUTPUT_REG_SET))
+		ops->get = bgpio_get_set;
+	else
+		ops->get = bgpio_get;
 
 	return 0;
 }
 
 static int bgpio_setup_direction(struct bgpio_chip *bgc,
 				 void __iomem *dirout,
-				 void __iomem *dirin)
+				 void __iomem *dirin,
+				 unsigned long flags)
 {
-	if (dirout && dirin)
-		return -EINVAL;
-
-	if (dirout) {
-		bgc->reg_dir = dirout;
-		bgc->gc.ops->direction_output = bgpio_dir_out;
-		bgc->gc.ops->direction_input = bgpio_dir_in;
-	} else if (dirin) {
-		bgc->reg_dir = dirin;
-		bgc->gc.ops->direction_output = bgpio_dir_out_inv;
-		bgc->gc.ops->direction_input = bgpio_dir_in_inv;
+	struct gpio_ops *ops = bgc->gc.ops;
+
+	if (dirout || dirin) {
+		bgc->reg_dir_out = dirout;
+		bgc->reg_dir_in = dirin;
+		if (flags & BGPIOF_NO_SET_ON_INPUT)
+			ops->direction_output = bgpio_dir_out_dir_first;
+		else
+			ops->direction_output = bgpio_dir_out_val_first;
+		ops->direction_input = bgpio_dir_in;
+		ops->get_direction = bgpio_get_dir;
 	} else {
-		bgc->gc.ops->direction_output = bgpio_simple_dir_out;
-		bgc->gc.ops->direction_input = bgpio_simple_dir_in;
+		if (flags & BGPIOF_NO_OUTPUT)
+			ops->direction_output = bgpio_dir_out_err;
+		else
+			ops->direction_output = bgpio_simple_dir_out;
+		ops->direction_input = bgpio_simple_dir_in;
 	}
 
 	return 0;
 }
 
+static int bgpio_request(struct gpio_chip *chip, unsigned gpio_pin)
+{
+	if (gpio_pin < chip->ngpio)
+		return 0;
+
+	return -EINVAL;
+}
+
+/**
+ * bgpio_init() - Initialize generic GPIO accessor functions
+ * @bgc: the GPIO chip to set up
+ * @dev: the parent device of the new GPIO chip (compulsory)
+ * @sz: the size (width) of the MMIO registers in bytes, typically 1, 2 or 4
+ * @dat: MMIO address for the register to READ the value of the GPIO lines, it
+ *	is expected that a 1 in the corresponding bit in this register means the
+ *	line is asserted
+ * @set: MMIO address for the register to SET the value of the GPIO lines, it is
+ *	expected that we write the line with 1 in this register to drive the GPIO line
+ *	high.
+ * @clr: MMIO address for the register to CLEAR the value of the GPIO lines, it is
+ *	expected that we write the line with 1 in this register to drive the GPIO line
+ *	low. It is allowed to leave this address as NULL, in that case the SET register
+ *	will be assumed to also clear the GPIO lines, by actively writing the line
+ *	with 0.
+ * @dirout: MMIO address for the register to set the line as OUTPUT. It is assumed
+ *	that setting a line to 1 in this register will turn that line into an
+ *	output line. Conversely, setting the line to 0 will turn that line into
+ *	an input.
+ * @dirin: MMIO address for the register to set this line as INPUT. It is assumed
+ *	that setting a line to 1 in this register will turn that line into an
+ *	input line. Conversely, setting the line to 0 will turn that line into
+ *	an output.
+ * @flags: Different flags that will affect the behaviour of the device, such as
+ *	endianness etc.
+ */
 int bgpio_init(struct bgpio_chip *bgc, struct device_d *dev,
 	       unsigned int sz, void __iomem *dat, void __iomem *set,
 	       void __iomem *clr, void __iomem *dirout, void __iomem *dirin,
 	       unsigned long flags)
 {
+	struct gpio_ops *ops = &bgc->ops;
 	int ret;
 
-	if ((sz > 4) || !is_power_of_2(sz))
+	if (!is_power_of_2(sz))
 		return -EINVAL;
 
 	bgc->bits = sz * 8;
-	bgc->gc.ngpio = bgc->bits;
+	if (bgc->bits > BITS_PER_LONG)
+		return -EINVAL;
+
 	bgc->gc.base = -1;
+	bgc->gc.ngpio = bgc->bits;
 	bgc->gc.dev = dev;
-	bgc->gc.ops = &bgc->ops;
+	bgc->gc.ops = ops;
+	ops->request = bgpio_request;
+	bgc->be_bits = !!(flags & BGPIOF_BIG_ENDIAN);
 
-	ret = bgpio_setup_io(bgc, dat, set, clr);
+	ret = bgpio_setup_io(bgc, dat, set, clr, flags);
 	if (ret)
 		return ret;
 
-	ret = bgpio_setup_accessors(dev, bgc, flags & BGPIOF_BIG_ENDIAN);
+	ret = bgpio_setup_accessors(dev, bgc, flags & BGPIOF_BIG_ENDIAN_BYTE_ORDER);
 	if (ret)
 		return ret;
 
-	ret = bgpio_setup_direction(bgc, dirout, dirin);
+	ret = bgpio_setup_direction(bgc, dirout, dirin, flags);
 	if (ret)
 		return ret;
 
 	bgc->data = bgc->read_reg(bgc->reg_dat);
-
-	if (bgc->gc.ops->set == bgpio_set_set && !(flags &
-	    BGPIOF_UNREADABLE_REG_SET))
+	if (ops->set == bgpio_set_set &&
+			!(flags & BGPIOF_UNREADABLE_REG_SET))
 		bgc->data = bgc->read_reg(bgc->reg_set);
 
-	if (bgc->reg_dir && !(flags & BGPIOF_UNREADABLE_REG_DIR))
-		bgc->dir = bgc->read_reg(bgc->reg_dir);
+	if (flags & BGPIOF_UNREADABLE_REG_DIR)
+		bgc->dir_unreadable = true;
+
+	/*
+	 * Inspect hardware to find initial direction setting.
+	 */
+	if ((bgc->reg_dir_out || bgc->reg_dir_in) &&
+	    !(flags & BGPIOF_UNREADABLE_REG_DIR)) {
+		if (bgc->reg_dir_out)
+			bgc->dir = bgc->read_reg(bgc->reg_dir_out);
+		else if (bgc->reg_dir_in)
+			bgc->dir = ~bgc->read_reg(bgc->reg_dir_in);
+		/*
+		 * If we have two direction registers, synchronise
+		 * input setting to output setting, the library
+		 * can not handle a line being input and output at
+		 * the same time.
+		 */
+		if (bgc->reg_dir_out && bgc->reg_dir_in)
+			bgc->write_reg(bgc->reg_dir_in, ~bgc->dir);
+	}
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(bgpio_init);
 
 void bgpio_remove(struct bgpio_chip *bgc)
 {
 	gpiochip_remove(&bgc->gc);
 	free(bgc);
 }
+EXPORT_SYMBOL_GPL(bgpio_remove);
 
 #ifdef CONFIG_GPIO_GENERIC_PLATFORM
 
-static void __iomem *bgpio_map(struct device_d *dev, const char *name,
-			       resource_size_t sane_sz, int *err)
+static void __iomem *bgpio_map(struct device_d *dev,
+			       const char *name,
+			       resource_size_t sane_sz)
 {
 	struct resource *r;
-	struct resource *ret;
-
-	*err = 0;
+	resource_size_t sz;
 
-	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
+	r = dev_request_mem_resource_by_name(dev, name);
 	if (IS_ERR(r))
 		return NULL;
 
-	if (resource_size(r) != sane_sz) {
-		*err = -EINVAL;
-		return NULL;
-	}
+	sz = resource_size(r);
+	if (sz != sane_sz)
+		return IOMEM_ERR_PTR(-EINVAL);
+
+	return IOMEM(r->start);
+}
+
+static const struct of_device_id bgpio_of_match[];
 
-	ret = request_iomem_region(dev_name(dev), r->start, r->end);
-	if (IS_ERR(ret)) {
-		*err = PTR_ERR(ret);
+static struct bgpio_pdata *bgpio_parse_dt(struct device_d *dev,
+					  unsigned long *flags)
+{
+	struct bgpio_pdata *pdata;
+
+	if (!of_match_device(bgpio_of_match, dev))
 		return NULL;
-	}
 
-	return IOMEM(ret->start);
+	pdata = xzalloc(sizeof(struct bgpio_pdata));
+
+	pdata->base = -1;
+
+	if (of_device_is_big_endian(dev->device_node))
+		*flags |= BGPIOF_BIG_ENDIAN_BYTE_ORDER;
+
+	if (of_property_read_bool(dev->device_node, "no-output"))
+		*flags |= BGPIOF_NO_OUTPUT;
+
+	return pdata;
 }
 
 static int bgpio_dev_probe(struct device_d *dev)
@@ -337,34 +531,37 @@ static int bgpio_dev_probe(struct device_d *dev)
 	unsigned long flags = 0;
 	int err;
 	struct bgpio_chip *bgc;
+	struct bgpio_pdata *pdata;
 
-	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, "dat");
-	if (IS_ERR(r))
-		return PTR_ERR(r);
+	pdata = bgpio_parse_dt(dev, &flags);
+	if (IS_ERR(pdata))
+		return PTR_ERR(pdata);
+
+	r = dev_request_mem_resource_by_name(dev, "dat");
+	if (!r)
+		return -EINVAL;
 
 	sz = resource_size(r);
 
-	dat = bgpio_map(dev, "dat", sz, &err);
-	if (!dat)
-		return err ? err : -EINVAL;
+	dat = bgpio_map(dev, "dat", sz);
+	if (IS_ERR(dat))
+		return PTR_ERR(dat);
 
-	set = bgpio_map(dev, "set", sz, &err);
-	if (err)
-		return err;
+	set = bgpio_map(dev, "set", sz);
+	if (IS_ERR(set))
+		return PTR_ERR(set);
 
-	clr = bgpio_map(dev, "clr", sz, &err);
-	if (err)
-		return err;
-
-	dirout = bgpio_map(dev, "dirout", sz, &err);
-	if (err)
-		return err;
+	clr = bgpio_map(dev, "clr", sz);
+	if (IS_ERR(clr))
+		return PTR_ERR(clr);
 
-	dirin = bgpio_map(dev, "dirin", sz, &err);
-	if (err)
-		return err;
+	dirout = bgpio_map(dev, "dirout", sz);
+	if (IS_ERR(dirout))
+		return PTR_ERR(dirout);
 
-	dev_get_drvdata(dev, (const void **)&flags);
+	dirin = bgpio_map(dev, "dirin", sz);
+	if (IS_ERR(dirin))
+		return PTR_ERR(dirin);
 
 	bgc = xzalloc(sizeof(struct bgpio_chip));
 
@@ -372,6 +569,12 @@ static int bgpio_dev_probe(struct device_d *dev)
 	if (err)
 		return err;
 
+	bgc->gc.base = pdata->base;
+	bgc->gc.dev = dev;
+	bgc->gc.ops = &bgc->ops;
+	if (pdata->ngpio > 0)
+		bgc->gc.ngpio = pdata->ngpio;
+
 	dev->priv = bgc;
 
 	return gpiochip_add(&bgc->gc);
@@ -384,9 +587,15 @@ static void bgpio_dev_remove(struct device_d *dev)
 	bgpio_remove(bgc);
 }
 
-static struct of_device_id __maybe_unused bgpio_of_match[] = {
+static const struct of_device_id bgpio_of_match[] = {
 	{
 		.compatible = "wd,mbl-gpio",
+	},
+	{
+		.compatible = "brcm,bcm6345-gpio"
+	},
+	{
+		.compatible = "ni,169445-nand-gpio"
 	}, {
 		/* sentinel */
 	}
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index 1ef459684d64..d48a8aa7fbb0 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -65,7 +65,8 @@ static int mpc8xxx_probe(struct device_d *dev)
 		ret = bgpio_init(bgc, dev, 4,
 				 mpc8xxx_gc->regs + GPIO_DAT,
 				 NULL, NULL,
-				 mpc8xxx_gc->regs + GPIO_DIR, NULL, 0);
+				 mpc8xxx_gc->regs + GPIO_DIR, NULL,
+				 BGPIOF_BIG_ENDIAN);
 		if (ret)
 			goto err;
 		dev_dbg(dev, "GPIO registers are LITTLE endian\n");
@@ -74,7 +75,8 @@ static int mpc8xxx_probe(struct device_d *dev)
 				 mpc8xxx_gc->regs + GPIO_DAT,
 				 NULL, NULL,
 				 mpc8xxx_gc->regs + GPIO_DIR, NULL,
-				 BGPIOF_BIG_ENDIAN);
+				 BGPIOF_BIG_ENDIAN
+				 | BGPIOF_BIG_ENDIAN_BYTE_ORDER);
 		if (ret)
 			goto err;
 		dev_dbg(dev, "GPIO registers are BIG endian\n");
diff --git a/include/io.h b/include/io.h
index 913002072240..79d8b56c4e3f 100644
--- a/include/io.h
+++ b/include/io.h
@@ -4,4 +4,6 @@
 
 #include <asm/io.h>
 
+#define IOMEM_ERR_PTR(err) (__force void __iomem *)ERR_PTR(err)
+
 #endif /* __IO_H */
diff --git a/include/linux/basic_mmio_gpio.h b/include/linux/basic_mmio_gpio.h
index e927194b51b3..34e2f470fb07 100644
--- a/include/linux/basic_mmio_gpio.h
+++ b/include/linux/basic_mmio_gpio.h
@@ -27,13 +27,17 @@ struct bgpio_chip {
 	struct gpio_chip gc;
 	struct gpio_ops ops;
 
-	unsigned int (*read_reg)(void __iomem *reg);
-	void (*write_reg)(void __iomem *reg, unsigned int data);
+	unsigned long (*read_reg)(void __iomem *reg);
+	void (*write_reg)(void __iomem *reg, unsigned long data);
 
 	void __iomem *reg_dat;
 	void __iomem *reg_set;
 	void __iomem *reg_clr;
-	void __iomem *reg_dir;
+	void __iomem *reg_dir_out;
+	void __iomem *reg_dir_in;
+
+	bool dir_unreadable;
+	bool be_bits;
 
 	/* Number of bits (GPIOs): <register width> * 8. */
 	int bits;
@@ -65,5 +69,9 @@ void bgpio_remove(struct bgpio_chip *bgc);
 #define BGPIOF_BIG_ENDIAN		BIT(0)
 #define BGPIOF_UNREADABLE_REG_SET	BIT(1) /* reg_set is unreadable */
 #define BGPIOF_UNREADABLE_REG_DIR	BIT(2) /* reg_dir is unreadable */
+#define BGPIOF_BIG_ENDIAN_BYTE_ORDER	BIT(3)
+#define BGPIOF_READ_OUTPUT_REG_SET	BIT(4) /* reg_set stores output value */
+#define BGPIOF_NO_OUTPUT		BIT(5) /* only input */
+#define BGPIOF_NO_SET_ON_INPUT		BIT(6)
 
 #endif /* __BASIC_MMIO_GPIO_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


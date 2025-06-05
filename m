Delivery-date: Thu, 05 Jun 2025 09:49:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN5M8-003w9Z-2d
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 09:49:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN5M7-0007p7-NW
	for lore@pengutronix.de; Thu, 05 Jun 2025 09:49:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r9rIlbV+ZXhXMKjqVrYbb+5y0lEk8AHQw+xigudPjNc=; b=ZxhTm9sqDt7242Ohi27ZPJGNSx
	T7q3QvKgFZ7VUww+E197WEQtfyuc4mEaoIPhWzqiLgqVgJXWVLXRn+/QRitvW2d0u2Z/+K6V6hWmp
	7hYVJsMF6S83O3VLVaSHod2V+IwllCNLiiTBX7w3nADCw7JL3W8hEaJCeGMd3QzlGGpZdb2KzxiD9
	daHaeCCI6/Vrxk89DibXzbowQCxXTG8l5zpVU+0dqjBm0BnjrTtk5EPSGfHbZRCfTH1XG5hrt39rM
	U4XDjKE+7tUcrYoS1PEcr/Sm4ftYP9zdNOM7UZRJ4+nKNQPLn/fZzwAuVTj77JMfKqKZL4Vc+R4fO
	nJEnMEnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5LW-0000000Ez4u-3pdj;
	Thu, 05 Jun 2025 07:49:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5Jk-0000000Eys7-1hC7
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 07:47:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-00065W-JF; Thu, 05 Jun 2025 09:47:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-001v83-0N;
	Thu, 05 Jun 2025 09:47:14 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-00HUuT-06;
	Thu, 05 Jun 2025 09:47:14 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  5 Jun 2025 09:47:10 +0200
Message-Id: <20250605074713.4170334-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605074713.4170334-1-o.rempel@pengutronix.de>
References: <20250605074713.4170334-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_004716_495885_CC78FB2E 
X-CRM114-Status: GOOD (  18.36  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/9] nvmem: bsec: Implement NVMEM protect via regmap_seal for OTP locking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable the NVMEM 'protect' cdev operation for the STM32 BSEC driver.
This allows One-Time Programmable (OTP) memory words managed by the
BSEC driver to be permanently write-locked using the standard NVMEM
protection mechanism.

This change implements the recently added `regmap_bus->reg_seal`
interface for the BSEC driver. A new function,
`stm32_bsec_do_reg_seal_otp`, calls the `BSEC_SMC_WRLOCK_OTP` Secure
Monitor Call to perform the hardware OTP word lock. This function is
triggered when `regmap_seal` is called with the
`REGMAP_SEAL_WRITE_PROTECT | REGMAP_SEAL_PERMANENT` flags, which the
NVMEM-regmap bridge uses for `prot=1` (protect) requests. The
`BSEC_SMC_WRLOCK_OTP` enum value is also added.

This explicit sealing via `regmap_seal` is currently implemented for
the SMC path.

Testing from Barebox CLI:

This functionality allows explicit locking of already programmed OTP
words.  The following example demonstrates programming an OTP word,
locking it, and then verifying the write protection.

Assume the BSEC NVMEM device is `/dev/bsec0` and its parameters are
accessed via `bsec0`.

1. Enable permanent OTP writes:
   bsec0.permanent_write_enable=1

2. Program an OTP word (e.g., byte offset 0x170 with value 0x12345678):
   mw -d /dev/bsec0 -l 0x170 0x12345678
   md -s /dev/bsec0 -l 0x170+4  # Expected: Shows 0x12345678

3. Lock this specific OTP word using the 'protect' command:
   # Protects 4 bytes (one 32-bit word) starting at byte offset 0x170
   protect /dev/bsec0 0x170+4
   # Check dmesg for BSEC driver logs confirming the lock via SMC.

4. Verify the write protection:
   mw -d /dev/bsec0 -l 0x170 0xAABBCCDD
   # This write should fail or have no effect on the hardware's fuses
   # value. The mw command itself might not report an error for OTPs if
   # the underlying hardware silently ignores writes to locked bits/words.

   md -s /dev/bsec0 -l 0x170+4
   # Expected: Should still show the original locked value (0x12345678),
   # confirming the write attempt was blocked or ineffective.

5. Verify unprotection is not possible:
   unprotect /dev/bsec0 0x170 4
   # This command should fail, returning an error (e.g., -EOPNOTSUPP or
   # -EPERM) from the driver, as BSEC OTP locks are permanent.

6. (Optional) Disable permanent OTP writes when done:
   bsec0.permanent_write_enable=0

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/bsec.c        | 27 +++++++++++++++++++++++++++
 include/mach/stm32mp/bsec.h |  1 +
 2 files changed, 28 insertions(+)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 9ca98e6180f8..b67b55addfe0 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -74,9 +74,36 @@ static int stm32_bsec_reg_write(void *ctx, unsigned reg, unsigned val)
 		return bsec_smc(BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
 }
 
+static int stm32_bsec_do_reg_seal_otp(void *ctx, unsigned int reg,
+				      unsigned int flags)
+{
+	struct bsec_priv *priv = ctx;
+	struct device *dev = &priv->dev;
+
+	if (!priv->permanent_write_enable) {
+		dev_warn(dev, "BSEC seal: permanent_write_enable is OFF.\n");
+		return -EACCES;
+	}
+
+	/* Only REGMAP_SEAL_WRITE_PROTECT and REGMAP_SEAL_PERMANENT
+	 * flags are supported for BSEC OTP sealing.
+	 */
+	if ((flags & (REGMAP_SEAL_WRITE_PROTECT | REGMAP_SEAL_PERMANENT)) !=
+	    (REGMAP_SEAL_WRITE_PROTECT | REGMAP_SEAL_PERMANENT)) {
+		dev_warn(dev, "BSEC seal: unsupported flags 0x%x.\n", flags);
+		return -EINVAL;
+	}
+
+	dev_dbg(dev, "BSEC seal: Locking OTP word at byte offset 0x%x via SMC.\n",
+		reg);
+
+	return bsec_smc(BSEC_SMC_WRLOCK_OTP, reg, 0, NULL);
+}
+
 static struct regmap_bus stm32_bsec_regmap_bus = {
 	.reg_write = stm32_bsec_reg_write,
 	.reg_read = stm32_bsec_read_shadow,
+	.reg_seal = stm32_bsec_do_reg_seal_otp,
 };
 
 static void stm32_bsec_set_unique_machine_id(struct regmap *map)
diff --git a/include/mach/stm32mp/bsec.h b/include/mach/stm32mp/bsec.h
index 45eb0a3f4523..be8cec536a40 100644
--- a/include/mach/stm32mp/bsec.h
+++ b/include/mach/stm32mp/bsec.h
@@ -26,6 +26,7 @@ enum bsec_op {
 	BSEC_SMC_READ_OTP	= 4,
 	BSEC_SMC_READ_ALL	= 5,
 	BSEC_SMC_WRITE_ALL	= 6,
+	BSEC_SMC_WRLOCK_OTP	= 7,
 };
 
 static inline enum bsec_smc bsec_read_field(unsigned field, unsigned *val)
-- 
2.39.5




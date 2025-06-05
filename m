Delivery-date: Thu, 05 Jun 2025 09:49:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN5M6-003w8B-0S
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 09:49:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN5M5-0007lf-0D
	for lore@pengutronix.de; Thu, 05 Jun 2025 09:49:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3zBB0PCQ94iHzcSU1fUa8ffP9WixRFkiLAFp35JtPtA=; b=NiTTNcqjNhad0JV2/PsT53u0P1
	I1dCKACGdM8B8bKksQe8hDgSjuef4VXJhGMunRWE10Eouq/NShlWppKnPYmAU+v7duhYk93V6SZFq
	H7VfwfnxiKTMRilmKiP4+UCxcDrCfW3AWpBBxtg5ISea/nX0380KvjEEpkLZOU1GoEjahAmxhpYG8
	w4QIP/EfrWgB6mvsgK1OxjnBeN2OGkRdSoLARlzfPclBbJud9XInNcOXuMDAmEXODc6N5vE4+tjv8
	45Pag0elwvmy+9w/zFB6hpxOJE2HnMXNhTyQe/Le8UGAaa7HwNbyZE5OEfgDZkXOA1TP3uirj6f9h
	yQu0xIuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5LV-0000000Ez41-2zH3;
	Thu, 05 Jun 2025 07:49:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5Jk-0000000Eys2-1eYu
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 07:47:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-00065U-Gj; Thu, 05 Jun 2025 09:47:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-001v82-0O;
	Thu, 05 Jun 2025 09:47:14 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-00HUuP-04;
	Thu, 05 Jun 2025 09:47:14 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  5 Jun 2025 09:47:09 +0200
Message-Id: <20250605074713.4170334-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605074713.4170334-1-o.rempel@pengutronix.de>
References: <20250605074713.4170334-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_004716_470024_09E3E6A2 
X-CRM114-Status: GOOD (  18.34  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/9] nvmem: regmap: Implement protect operation using regmap_seal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Implement the NVMEM 'protect' operation for devices registered via
regmap. This adds a new static function, nvmem_regmap_protect, which
acts as an adapter between the NVMEM core's reg_protect callback
and the recently added regmap_seal() API.

The nvmem_regmap_protect function:
  - Translates the NVMEM 'prot' parameter (0 for unprotect, 1 for
    protect) into the corresponding REGMAP_SEAL_CLEAR |
    REGMAP_SEAL_WRITE_PROTECT or REGMAP_SEAL_WRITE_PROTECT |
    REGMAP_SEAL_PERMANENT flags for the regmap_seal() call.
  - Enforces that the NVMEM operation's offset and size are aligned
    to the regmap's value byte size (obtained via
    regmap_get_val_bytes()).
  - Iterates over the specified byte range, calling regmap_seal() for
    each underlying hardware word.

By assigning nvmem_regmap_protect to config.reg_protect within
nvmem_regmap_register_with_pp, NVMEM devices that are backed by a
regmap can now expose hardware-level protection capabilities. This
is essential for drivers like the STM32 BSEC (in a subsequent patch)
to enable features such as OTP (One-Time Programmable) memory locking
through the standard NVMEM 'protect' cdev operation, provided their
underlying regmap_bus implements the necessary reg_seal method.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/regmap.c | 65 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index 24712fbb0f33..a7b18856f0bb 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -63,6 +63,70 @@ static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes
 	return 0;
 }
 
+static int nvmem_regmap_protect(void *ctx, unsigned int offset, size_t bytes,
+				int prot)
+{
+	unsigned int seal_flags = 0;
+	struct regmap *map = ctx;
+	size_t reg_val_bytes;
+	unsigned int i;
+	int ret = 0;
+
+	reg_val_bytes = regmap_get_val_bytes(map);
+	if (reg_val_bytes == 0) {
+		dev_err(regmap_get_device(map), "Invalid regmap value byte size (0)\n");
+		return -EINVAL;
+	}
+
+	/* NVMEM protect operations should typically be on aligned boundaries
+	 * matching the hardware's lockable unit (which is regmap's val_bytes
+	 * here).
+	 */
+	if ((offset % reg_val_bytes) != 0 || (bytes % reg_val_bytes) != 0) {
+		dev_warn(regmap_get_device(map),
+			 "NVMEM protect op for regmap: offset (0x%x) or size (0x%zx) not aligned to register size (%zu bytes).\n",
+			 offset, bytes, reg_val_bytes);
+		return -EINVAL;
+	}
+
+	switch (prot) {
+	case PROTECT_ENABLE_WRITE:
+		/* NVMEM protect mode 0 = Unlock/Make-writable
+		 * Attempt to clear write protection.
+		 * The underlying bus->reg_seal must support clearing.
+		 * For BSEC OTPs, this will (and should) fail with -EOPNOTSUPP
+		 * or -EPERM.
+		 */
+		seal_flags = REGMAP_SEAL_CLEAR | REGMAP_SEAL_WRITE_PROTECT;
+		break;
+	case PROTECT_DISABLE_WRITE:
+		/* NVMEM protect mode 1 = Lock/Write-protect */
+		/* For OTPs like BSEC, permanent is implied */
+		seal_flags = REGMAP_SEAL_WRITE_PROTECT | REGMAP_SEAL_PERMANENT;
+		break;
+	default:
+		dev_warn(regmap_get_device(map), "Unsupported NVMEM protect mode: %d\n",
+			 prot);
+		return -EOPNOTSUPP;
+	}
+
+	for (i = 0; i < bytes; i += reg_val_bytes) {
+		unsigned int current_reg_offset = offset + i;
+
+		ret = regmap_seal(map, current_reg_offset, seal_flags);
+		if (ret) {
+			dev_err(regmap_get_device(map), "regmap_seal failed for offset 0x%x: %pe\n",
+				current_reg_offset, ERR_PTR(ret));
+			/* No error handling for partial failures, we messed up
+			 * the HW state and can't recover.
+			 */
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 struct nvmem_device *
 nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
 			      nvmem_cell_post_process_t cell_post_process)
@@ -82,6 +146,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
 	config.cell_post_process = cell_post_process;
 	config.reg_write = nvmem_regmap_write;
 	config.reg_read = nvmem_regmap_read;
+	config.reg_protect = nvmem_regmap_protect;
 
 	return nvmem_register(&config);
 }
-- 
2.39.5




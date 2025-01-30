Delivery-date: Thu, 30 Jan 2025 13:08:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdTLs-006Kbl-1s
	for lore@lore.pengutronix.de;
	Thu, 30 Jan 2025 13:08:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdTLs-0002dV-I7
	for lore@pengutronix.de; Thu, 30 Jan 2025 13:08:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ipYxy8Unex9oZbVnF4/+GODAOsIDHPrmlr5Qr420Zkg=; b=jGuv+raIEHSC98A6Kdu7fF/vZp
	IHiUxtDrmLYPhRpB0SeAzOXV4TWlFaHhkRC1CfNh+vnlJzX9+nEoZXwtxnyydE4RlO7Skej6t58An
	tDLne5moE1FPUu+EdzuBmGSi/TZw9eKsCcALcCrA4HIqRtMAzQD10Fu5zQ/3FXeqO9qDb7ji+p91y
	569J6fmdEmchsokJPGFDMt2rSdG5hqrBZNYgzIrzpYLNDGnGvx86aP4/7b7sckPzNmB5yo+0uWicX
	YZDUh8Mp69NTuVDh3AroWtMwZlof9mVT1zYXzR1HIet3ELVlePypLR50Koqk23kGUuXMhjnXtt+lA
	0we8Iibw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdTLJ-00000008kbf-2hRz;
	Thu, 30 Jan 2025 12:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdTLF-00000008kai-3qaC
	for barebox@lists.infradead.org;
	Thu, 30 Jan 2025 12:08:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tdTLD-0002VC-IS; Thu, 30 Jan 2025 13:08:15 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tdTLD-002csb-13;
	Thu, 30 Jan 2025 13:08:15 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tdTLD-004Q2I-0o;
	Thu, 30 Jan 2025 13:08:15 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 30 Jan 2025 13:08:13 +0100
Message-Id: <20250130120814.1053382-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_040817_958023_4F9F309F 
X-CRM114-Status: GOOD (  14.50  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/2] nvmem: bsec: Add support for OTP permanent write lock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

Introduce a mechanism to permanently lock OTP eFuses after programming by
adding a new `writelock` parameter. When `writelock` is enabled, the
driver:

- Programs the OTP fuse using `BSEC_SMC_PROG_OTP`.
- If successful, triggers `BSEC_SMC_WRLOCK_OTP` (OP-TEE:
  `STM32_SIP_SVC_BSEC_WRLOCK_OTP`) to permanently disable further
  modifications to the OTP word.

Security Concern:
Without this lock mechanism, an OTP word can still be altered by OR-ing
additional bits onto the existing value, as STM32 BSEC OTP fuses only
allow one-way bit transitions from 0 to 1. This is a potential security
risk when dealing with keys or sensitive configuration values, as an
attacker could modify certain OTP bits without fully replacing the
original value.

Warning! Write lock is enabled globally per BSEC device:
- While `writelock=1`, all writes via the BSEC device will be
  permanently locked.
- The user must avoid writing unintended values during this period,
  as they will become irrevocable.

Example Use Case:
To program and permanently lock an OTP word:
bsec0.permanent_write_enable=1
bsec0.writelock=1
mw -l -d /dev/stm32-bsec 0x00000170+4 $some_data
bsec0.permanent_write_enable=0
bsec0.writelock=0

After execution, the OTP at address `0x170` will be permanently
write-locked.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/bsec.c        | 14 +++++++++++---
 include/mach/stm32mp/bsec.h |  1 +
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index b92d925956ee..c0ca0a2ab6a4 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -27,6 +27,7 @@ struct bsec_priv {
 	int permanent_write_enable;
 	u8 lower;
 	struct tee_context *ctx;
+	int writelock;
 };

 struct stm32_bsec_data {
@@ -67,11 +68,16 @@ static int stm32_bsec_read_shadow(void *ctx, unsigned reg, unsigned *val)
 static int stm32_bsec_reg_write(void *ctx, unsigned reg, unsigned val)
 {
 	struct bsec_priv *priv = ctx;
+	int ret;

-	if (priv->permanent_write_enable)
-		return bsec_smc(BSEC_SMC_PROG_OTP, reg, val, NULL);
-	else
+	if (!priv->permanent_write_enable)
 		return bsec_smc(BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
+
+	ret = bsec_smc(BSEC_SMC_PROG_OTP, reg, val, NULL);
+	if (!ret && priv->writelock)
+		ret = bsec_smc(BSEC_SMC_WRLOCK_OTP, reg, 0, NULL);
+
+	return ret;
 }

 static struct regmap_bus stm32_bsec_regmap_bus = {
@@ -245,6 +251,8 @@ static int stm32_bsec_probe(struct device *dev)
 	if (IS_ENABLED(CONFIG_STM32_BSEC_WRITE)) {
 		dev_add_param_bool(&priv->dev, "permanent_write_enable",
 				NULL, NULL, &priv->permanent_write_enable, NULL);
+		dev_add_param_bool(&priv->dev, "writelock",
+				NULL, NULL, &priv->writelock, NULL);
 	}

 	nvmem = nvmem_regmap_register(map, "stm32-bsec");
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




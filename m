Delivery-date: Fri, 30 May 2025 13:44:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKyA0-001vpd-1Q
	for lore@lore.pengutronix.de;
	Fri, 30 May 2025 13:44:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKy9z-0002IC-I7
	for lore@pengutronix.de; Fri, 30 May 2025 13:44:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oEAaLxSDnWgc2Mxg/o3QWOVuJt+7SJ9RBKEzb9jRFMk=; b=E140lbWOqhjxVWpFzdwo2VqXW0
	4rcOTv4K1CDTdIbDD9MeAkc4ji42whC7fG0+lsWkrth3q/x8/0fezgz4wsDfSX55XoOteXq5iulyg
	a4FJPO5Knx9+PmVPr9fWiKTsHqDb4GgEc30uzEwgLIqasFqsocnveLLKxt9DZMHnhB4bFiCcbjM+w
	4tpCNknKLPgrSPV+9dYOw2oGASm6tt8YhAf6aCEEciJHqQR3ot4WLFUnlHVqbhh3+3YIuZyZhsHfp
	kFwROhgpw1+en17GsOhlXmZZFJKU/V/Guq+ISrnYbbUGs08Wk5R2b/oIh+Vf6rCUU0WYLThxAS6V3
	IltZV2YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy9J-00000000RpT-2Jjp;
	Fri, 30 May 2025 11:43:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKy6n-00000000Rbb-3Q7D
	for barebox@lists.infradead.org;
	Fri, 30 May 2025 11:41:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-0008Tk-VS; Fri, 30 May 2025 13:41:07 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-000y4n-25;
	Fri, 30 May 2025 13:41:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uKy6l-004EcP-1t;
	Fri, 30 May 2025 13:41:07 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 30 May 2025 13:41:03 +0200
Message-Id: <20250530114106.1009454-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250530114106.1009454-1-o.rempel@pengutronix.de>
References: <20250530114106.1009454-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_044109_891043_E7439E4A 
X-CRM114-Status: GOOD (  21.64  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 4/7] regmap: Add reg_seal operation for hardware protection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a new 'reg_seal' operation to the regmap bus interface, along
with a public API `regmap_seal()`. This is needed for drivers that
must perform hardware-level "sealing" or permanent write-protection
on registers/words, a capability not covered by standard regmap
read/write ops.

The initial use case is for the STM32 BSEC driver (coming in a
follow-up patch) to lock One-Time Programmable (OTP) memory words.
This gives explicit control to make OTP entries permanently read-only
after programming.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/base/regmap/internal.h |  2 ++
 drivers/base/regmap/regmap.c   | 31 +++++++++++++++++++++++++++++++
 include/linux/regmap.h         | 33 +++++++++++++++++++++++++++++++++
 3 files changed, 66 insertions(+)

diff --git a/drivers/base/regmap/internal.h b/drivers/base/regmap/internal.h
index 6f6a34edc7a8..f2b95cc6361e 100644
--- a/drivers/base/regmap/internal.h
+++ b/drivers/base/regmap/internal.h
@@ -39,6 +39,8 @@ struct regmap {
 			unsigned int *val);
 	int (*reg_write)(void *context, unsigned int reg,
 			 unsigned int val);
+	int (*reg_seal)(void *context, unsigned int reg,
+			unsigned int flags);
 };
 
 struct regmap_field {
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 777636c0b319..dc65b9e965ce 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -81,6 +81,17 @@ static int _regmap_bus_reg_write(void *context, unsigned int reg,
 	return map->bus->reg_write(map->bus_context, reg, val);
 }
 
+static int _regmap_bus_reg_seal(void *context, unsigned int reg,
+				unsigned int flags)
+{
+	struct regmap *map = context;
+
+	if (!map->bus->reg_seal)
+		return -EOPNOTSUPP;
+
+	return map->bus->reg_seal(map->bus_context, reg, flags);
+}
+
 /*
  * regmap_init - initialize and register a regmap
  *
@@ -124,6 +135,9 @@ struct regmap *regmap_init(struct device *dev,
 		}
 	}
 
+	if (!map->reg_seal)
+		map->reg_seal = _regmap_bus_reg_seal;
+
 	list_add_tail(&map->list, &regmaps);
 
 	return map;
@@ -186,6 +200,23 @@ int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
 	return map->reg_read(map, reg, val);
 }
 
+/**
+ * regmap_seal() - Seal a register in a map
+ *
+ * @map: Register map to seal
+ * @reg: Register to seal
+ * @flag: Flag to set in the register
+ *
+ * This function is used to seal a register, preventing further writes to it.
+ * The flag is typically used to indicate that the register is sealed.
+ *
+ * Returns zero for success, a negative number on error.
+ */
+int regmap_seal(struct regmap *map, unsigned int reg, unsigned int flags)
+{
+	return map->reg_seal(map, reg, flags);
+}
+
 /**
  * regmap_update_bits() - Perform a read/modify/write cycle on a register
  *
diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index c24b877712cd..0a460f9f541b 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -65,6 +65,35 @@ typedef int (*regmap_hw_reg_read)(void *context, unsigned int reg,
 				  unsigned int *val);
 typedef int (*regmap_hw_reg_write)(void *context, unsigned int reg,
 				   unsigned int val);
+typedef int (*regmap_hw_reg_seal)(void *context, unsigned int reg,
+				  unsigned int flags);
+
+/**
+ * @REGMAP_SEAL_WRITE_PROTECT: Request to make the register(s) write-protected.
+ * If this flag is set, the bus-specific seal operation should attempt to
+ * prevent further writes to the specified register or range.
+ */
+#define REGMAP_SEAL_WRITE_PROTECT	BIT(0)
+
+/**
+ * @REGMAP_SEAL_PERMANENT: Signifies the sealing operation is intended to be
+ * permanent and irreversible. If this flag is not set (and REGMAP_SEAL_CLEAR
+ * is also not set), the protection might be temporary or its permanence
+ * is undefined by this generic flag (bus-specific behavior would dictate).
+ * For operations like OTP locking, this flag should be used with
+ * REGMAP_SEAL_WRITE_PROTECT.
+ */
+#define REGMAP_SEAL_PERMANENT		BIT(1)
+
+/**
+ * @REGMAP_SEAL_CLEAR: Request to clear a previously set protection.
+ * This flag should be used in conjunction with other flags (e.g.,
+ * REGMAP_SEAL_WRITE_PROTECT) to specify which type of protection to attempt
+ * to clear. The underlying hardware must support clearing the protection.
+ * If the protection is permanent, an attempt to clear it should fail with
+ * an appropriate error code (e.g., -EOPNOTSUPP or -EPERM).
+ */
+#define REGMAP_SEAL_CLEAR		BIT(2)
 
 /**
  * struct regmap_bus - Description of a hardware bus for the register map
@@ -73,6 +102,8 @@ typedef int (*regmap_hw_reg_write)(void *context, unsigned int reg,
  * @reg_write: Write a single register value to the given register address. This
  *             write operation has to complete when returning from the function.
  * @reg_read: Read a single register value from a given register address.
+ * @reg_seal: Optional. Perform a hardware operation to seal or permanently
+ *            protect a register or region (e.g., OTP write-locking).
  * @read: Read operation.  Data is returned in the buffer used to transmit
  *         data.
  * @write: Write operation.
@@ -88,6 +119,7 @@ typedef int (*regmap_hw_reg_write)(void *context, unsigned int reg,
 struct regmap_bus {
 	regmap_hw_reg_write reg_write;
 	regmap_hw_reg_read reg_read;
+	regmap_hw_reg_seal reg_seal;
 
 	int (*read)(void *context,
 		    const void *reg_buf, size_t reg_size,
@@ -202,6 +234,7 @@ int regmap_multi_register_cdev(struct regmap *map8,
 
 int regmap_write(struct regmap *map, unsigned int reg, unsigned int val);
 int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val);
+int regmap_seal(struct regmap *map, unsigned int reg, unsigned int flags);
 
 #ifndef regmap_bulk_read
 #define regmap_bulk_read regmap_bulk_read
-- 
2.39.5




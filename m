Delivery-date: Fri, 25 Oct 2024 10:49:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G0r-000Ymf-32
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 10:49:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4G0s-00016o-Gi
	for lore@pengutronix.de; Fri, 25 Oct 2024 10:49:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vMcdJzJLNwBLByXTq6v7hjco10dN9BJ04SQVoSX9oNE=; b=X68B6b14sqzXH1FD6leDcrAYip
	s4iom9dtzdubB1f3gUk4pBVb1eV4hE0UivqPdg5koKq1F20V5wMqPtEd+tE+TpfRKnrsGeUx/U7Dy
	6k4gvfe3CQfYIfrF7EOpBwxt0BcPvY5Hc7I024kRaLSuzrX97GFjKeXPar7CKRLav2CasldXb+hsQ
	4fUoKaVA0U/gpCDKvVC+61fmsxeyamAVFuqAC6IieoTMLKsv/YFJWs6gA9zpYyjV39aILPh7Q2ETB
	3YBPuQw2JOxN/GJC2gKTWbckw5fQ/A9AHZSm76wqXi+P9ZqeDD3i2tGVIrCGR0fIzJFmP2X/1Vt3r
	ZBQmNRUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G0F-000000032Lt-2VNw;
	Fri, 25 Oct 2024 08:49:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4Fus-00000003183-2XXf
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 08:43:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4Fur-0000T8-6A; Fri, 25 Oct 2024 10:43:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4Fuq-000Kqm-3D;
	Fri, 25 Oct 2024 10:43:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4Fuq-008Ts1-2s;
	Fri, 25 Oct 2024 10:43:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Oct 2024 10:43:28 +0200
Message-Id: <20241025084328.2021437-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_014330_676818_A5650751 
X-CRM114-Status: GOOD (  15.86  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] regmap: implement regmap_multi_reg_write()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

regmap_multi_reg_write() can be used to write multiple regmap registers
at once. The code is taken from Linux-6.12 and simplified for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/regmap/regmap.c | 36 ++++++++++++++++++++++++++++++++++++
 include/linux/regmap.h       | 26 ++++++++++++++++++++++++++
 2 files changed, 62 insertions(+)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 1f10424a42..777636c0b3 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -573,6 +573,42 @@ int regmap_field_bulk_alloc(struct regmap *regmap,
 	return 0;
 }
 
+/**
+ * regmap_multi_reg_write() - Write multiple registers to the device
+ *
+ * @map: Register map to write to
+ * @regs: Array of structures containing register,value to be written
+ * @num_regs: Number of registers to write
+ *
+ * Write multiple registers to the device where the set of register, value
+ * pairs are supplied in any order, possibly not all in a single range.
+ *
+ * The 'normal' block write mode will send ultimately send data on the
+ * target bus as R,V1,V2,V3,..,Vn where successively higher registers are
+ * addressed. However, this alternative block multi write mode will send
+ * the data as R1,V1,R2,V2,..,Rn,Vn on the target bus. The target device
+ * must of course support the mode.
+ *
+ * A value of zero will be returned on success, a negative errno will be
+ * returned in error cases.
+ */
+int regmap_multi_reg_write(struct regmap *map, const struct reg_sequence *regs,
+			   int num_regs)
+{
+	int i;
+	int ret;
+
+	for (i = 0; i < num_regs; i++) {
+		ret = regmap_write(map, regs[i].reg, regs[i].def);
+		if (ret != 0)
+			return ret;
+
+		if (regs[i].delay_us)
+			udelay(regs[i].delay_us);
+	}
+	return 0;
+}
+
 /*
  * regmap_register_cdev - register a devfs file for a regmap
  *
diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index e38b4f2dc8..c24b877712 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -276,6 +276,32 @@ static inline int regmap_clear_bits(struct regmap *map,
 
 size_t regmap_size_bytes(struct regmap *map);
 
+/**
+ * struct reg_sequence - An individual write from a sequence of writes.
+ *
+ * @reg: Register address.
+ * @def: Register value.
+ * @delay_us: Delay to be applied after the register write in microseconds
+ *
+ * Register/value pairs for sequences of writes with an optional delay in
+ * microseconds to be applied after each write.
+ */
+struct reg_sequence {
+	unsigned int reg;
+	unsigned int def;
+	unsigned int delay_us;
+};
+
+#define REG_SEQ(_reg, _def, _delay_us) {		\
+				.reg = _reg,		\
+				.def = _def,		\
+				.delay_us = _delay_us,	\
+				}
+#define REG_SEQ0(_reg, _def)	REG_SEQ(_reg, _def, 0)
+
+int regmap_multi_reg_write(struct regmap *map, const struct reg_sequence *regs,
+			   int num_regs);
+
 /**
  * regmap_read_poll_timeout - Poll until a condition is met or a timeout occurs
  *
-- 
2.39.5




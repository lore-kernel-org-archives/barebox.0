Delivery-date: Tue, 02 Jan 2024 12:22:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcqk-000VvZ-0n
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:22:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcqj-0005Eh-7D
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:22:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wnv/+r1ugaxX0KOr0S9WnQd8kJBhkUPUbrCnuOgqRc8=; b=aj0XTCHzk/ZBUa
	gYBasc951L4lhC1kY5HZhpEaRglgn0zUYPPp01FmYNQGUP/NaIDpGJhEkotNIF4e1k74ctMjF10ll
	4/6hDiwbB/kCGk42qoKEiPcMBNO2w0jn0viPcX9Z6z1By8t8apW/jSDowJUca3qgIPSEjQr3e6XhW
	ikK1uOhKYllrJgkKUK7YTMUT8zxheupTlrLkWtgXc7EfoTagJdWxBsnxx+W9PAlQFpN5HcMkegjSG
	PNGHtm+1NJrafnmUaWVOJOSh2X0APJCFx0BQ5ZRsqEd+fmdF6hDY68yi165f7t/K+PfnD9JM6SleT
	k7+lh24aZ5XeInZMLeqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcpi-007hRc-0N;
	Tue, 02 Jan 2024 11:21:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcpg-007hQx-01
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:21:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcpe-00054B-L3; Tue, 02 Jan 2024 12:21:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcpd-003AZy-5j; Tue, 02 Jan 2024 12:21:14 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcpe-001BWP-0f;
	Tue, 02 Jan 2024 12:21:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 Jan 2024 12:21:13 +0100
Message-Id: <20240102112113.282609-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_032116_041970_3C192209 
X-CRM114-Status: GOOD (  11.69  )
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
Cc: bst@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] pbl/pmic.h: rename pmic_reg_write() to pmic_reg_write8()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pmic_reg_write() does 8 bit writes, so rename the function accordingly.

When adding 16/32 bit writes there is no point in abstracting the
register width in pmic_reg_write(), because the caller actually must
know the register width to make useful register changes. This means
we better add pmic_reg_write16/32 when need arises.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/mnt-reform/lowlevel.c | 2 +-
 include/pbl/pmic.h                    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
index 01a50fac56..9f951508df 100644
--- a/arch/arm/boards/mnt-reform/lowlevel.c
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -59,7 +59,7 @@ static void i2c_mux_set(struct pbl_i2c *i2c, u8 channel)
 
 static void i2c_regulator_set_voltage(struct pbl_i2c *i2c, u8 reg, u8 voffs)
 {
-	pmic_reg_write(i2c, 0x60, reg, 0x80 + voffs);
+	pmic_reg_write8(i2c, 0x60, reg, 0x80 + voffs);
 }
 
 #define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MQ_PAD_CTL_DSE_45R | \
diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
index 0f882c5649..695e47a564 100644
--- a/include/pbl/pmic.h
+++ b/include/pbl/pmic.h
@@ -9,7 +9,7 @@ struct pmic_config {
 	u8 val;
 };
 
-static void pmic_reg_write(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
+static void pmic_reg_write8(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
 {
 	int ret;
 	u8 buf[32];
@@ -35,7 +35,7 @@ static inline void pmic_configure(struct pbl_i2c *i2c, u8 addr,
 				  size_t config_len)
 {
 	for (; config_len--; config++)
-		pmic_reg_write(i2c, addr, config->reg, config->val);
+		pmic_reg_write8(i2c, addr, config->reg, config->val);
 }
 
 #endif
-- 
2.39.2




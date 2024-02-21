Delivery-date: Wed, 21 Feb 2024 16:04:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8n-00HNoF-24
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 16:04:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8m-00059s-VZ
	for lore@pengutronix.de; Wed, 21 Feb 2024 16:04:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=saBINaSgSm5h3X+JqGrSup8t48zzx0GdgoVaqnYI69s=; b=cu5jvid6MrWzQHrOg9LtWhaG9g
	Plo1VGNh9UFwZafmgYXMU22SFzy2ahpdLxg3RZfpI4Y4vfwcbQXMIAq1HHdULS4549DumNJtv6OOW
	fu4n+yVM6S/rMLUL5lh6wzR5Jv16+KraGA000AA9JdLQP84o3Sgoo81kHsO9CSxn46RZD7FzO4Gpz
	CnC+nJTU/Ur54ZrmX56WNBulk2c1yGI9/Td0CqJFkfBxWH9yqkw5tkA64rlAsLXbIf6Q7USZu7aTC
	+WilNUBl0TkzUt/vckAU2rbSqewFLzCFNC+rG4Rmj05itxDqVTGhqlCkvramTzBowVnn3nRUHrmnW
	h6yTBrJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco8F-00000001ORc-2Sd9;
	Wed, 21 Feb 2024 15:03:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco86-00000001OM6-1zuu
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 15:03:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0004gW-M1; Wed, 21 Feb 2024 16:03:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0023j1-9E; Wed, 21 Feb 2024 16:03:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-00BYvn-0Z;
	Wed, 21 Feb 2024 16:03:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 16:03:18 +0100
Message-Id: <20240221150323.2715164-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221150323.2715164-1-s.hauer@pengutronix.de>
References: <20240221150323.2715164-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_070326_614380_911C566B 
X-CRM114-Status: GOOD (  13.56  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/8] board: tq: add support for 16bit eeprom
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some I2C EEPROMs must be addressed with two bytes. Add the address
argument to pbl_tq_read_eeprom(). The actual EEPROM address will be 0x0
always, but we can use the address to pass I2C_ADDR_16_BIT through it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma93xx/lowlevel.c | 2 +-
 common/boards/tq/tq_eeprom.c        | 4 ++--
 include/boards/tq/tq_eeprom.h       | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/tqma93xx/lowlevel.c b/arch/arm/boards/tqma93xx/lowlevel.c
index 07491867d4..8d89ee530f 100644
--- a/arch/arm/boards/tqma93xx/lowlevel.c
+++ b/arch/arm/boards/tqma93xx/lowlevel.c
@@ -28,7 +28,7 @@ static int tqma93xx_get_formfactor(void)
 
 	i2c = imx93_i2c_early_init(IOMEM(MX9_I2C1_BASE_ADDR));
 
-	eeprom = pbl_tq_read_eeprom(i2c, 0x53);
+	eeprom = pbl_tq_read_eeprom(i2c, 0x53, 0);
 	if (!eeprom)
 		return VARD_FORMFACTOR_TYPE_CONNECTOR;
 
diff --git a/common/boards/tq/tq_eeprom.c b/common/boards/tq/tq_eeprom.c
index 06f11a8a94..fe776d6bab 100644
--- a/common/boards/tq/tq_eeprom.c
+++ b/common/boards/tq/tq_eeprom.c
@@ -118,13 +118,13 @@ static void tq_read_string(const char *src, char *dst, int len)
 	dst[i] = '\0';
 }
 
-struct tq_eeprom *pbl_tq_read_eeprom(struct pbl_i2c *i2c, u8 addr)
+struct tq_eeprom *pbl_tq_read_eeprom(struct pbl_i2c *i2c, u8 addr, u32 eeprom_addr)
 {
 	struct tq_eeprom_data raw;
 	static struct tq_eeprom eeprom;
 	int ret;
 
-	ret = eeprom_read(i2c, addr, 0, &raw, sizeof(raw));
+	ret = eeprom_read(i2c, addr, eeprom_addr, &raw, sizeof(raw));
 	if (ret)
 		return NULL;
 
diff --git a/include/boards/tq/tq_eeprom.h b/include/boards/tq/tq_eeprom.h
index 9a81e6e61d..8b639e2014 100644
--- a/include/boards/tq/tq_eeprom.h
+++ b/include/boards/tq/tq_eeprom.h
@@ -191,6 +191,6 @@ struct tq_eeprom {
 
 struct pbl_i2c;
 
-struct tq_eeprom *pbl_tq_read_eeprom(struct pbl_i2c *i2c, u8 addr);
+struct tq_eeprom *pbl_tq_read_eeprom(struct pbl_i2c *i2c, u8 addr, u32 eeprom_addr);
 
 #endif
-- 
2.39.2




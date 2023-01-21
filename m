Delivery-date: Sat, 21 Jan 2023 15:46:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8k-0012ku-Gc
	for lore@lore.pengutronix.de; Sat, 21 Jan 2023 15:46:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8i-0000M5-4O
	for lore@pengutronix.de; Sat, 21 Jan 2023 15:46:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ep4wrY5gNAr1lVSSGnfdOiHlD9mhgZzXiLuJ9gbBBPc=; b=Es5kjhJOZxNeaBxiJGKqGpJ5HT
	5g1rwbWBL5XZDBauht5qb/HLOYRf618vd07zDWGRpmi2B73qzVcx/Fknp0+d7n3fqixCM1bbs4Yqo
	UQp8Z7GUTC/RTUavVue93YwNYdOixO1xmUkuiJzb3g4zb9GyqrD15qptlXOMBh66JqF8FGCo/Ys5s
	92qP9OEvdv5+vYIrWElipYOX8Dgvgbf6+q+zcxki3EMdd6Rdsf9HzYfGrWkrSZ/TNg/F229R443Ai
	uPs5wFwrbAwITQjb95WRemT8jqk5C6XnQgCUCEETN89A07dKVt3f0zk0r+CazgmV2//hCDx4hPFrz
	t+ixChuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF7T-00DyVD-7C; Sat, 21 Jan 2023 14:45:23 +0000
Received: from out2.migadu.com ([188.165.223.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF7N-00DyRb-TM
	for barebox@lists.infradead.org; Sat, 21 Jan 2023 14:45:19 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674312315;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ep4wrY5gNAr1lVSSGnfdOiHlD9mhgZzXiLuJ9gbBBPc=;
	b=jYNiPHC+fSuNt840XQiZhPTCN1ad8a2kf0DuDtVHyAwTPJ3zz4jTPIxA0tkVS0N2CyEkig
	1ZPOmdF1eioZX5xXqTrQ9Wk+vTBNoQlBO0Um8K74IIcf/wTsTbJiJIpti+JzgTYBXigGuk
	HvzIas5h3x+xGtb5g3oIkHb5z9FLlhCcAbnFxGG/AoppXYJK5sB8RQJ2W3M2bsre4C6w97
	bkW2ksXmHPO16f/5uiRnO+OWCu7yWLbRdcxQ2ZE14/qu/1VALPdCEHvx/kJVgE+Tivx8D9
	l2IuwYWdKrbPzK32/fltx4UoQumPFQAYfohlHKaKemadLFk/envUD09S7BRxUA==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Sun, 22 Jan 2023 01:44:29 +1100
Message-Id: <20230121144429.3524905-8-contact@jookia.org>
In-Reply-To: <20230121144429.3524905-1-contact@jookia.org>
References: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_064518_140028_01C4A1EF 
X-CRM114-Status: GOOD (  13.03  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] ddr_spd: Support reading SPD from DDR3 sticks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

DDR4 splits the read in two pages while other DDR types do not.
Introduce a new parameter to indicate how to read the SPD.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/boards/ls1046ardb/lowlevel.c |  2 +-
 common/ddr_spd.c                      | 16 +++++++++++-----
 include/ddr_spd.h                     |  3 ++-
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 055e5f4c99..9eae032377 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -205,7 +205,7 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 	IMD_USED_OF(fsl_ls1046a_rdb);
 
 	i2c = ls1046_i2c_init(IOMEM(LSCH2_I2C1_BASE_ADDR));
-	ret = spd_read_eeprom(i2c, 0x51, &spd_eeprom);
+	ret = spd_read_eeprom(i2c, 0x51, &spd_eeprom, SPD_MEMTYPE_DDR4);
 	if (ret) {
 		pr_err("Cannot read SPD EEPROM: %d\n", ret);
 		goto err;
diff --git a/common/ddr_spd.c b/common/ddr_spd.c
index dd3b8511e6..f7792360de 100644
--- a/common/ddr_spd.c
+++ b/common/ddr_spd.c
@@ -480,6 +480,7 @@ static int read_buf(struct pbl_i2c *i2c,
  * @i2c: I2C controller handle
  * @addr: I2C bus address for the EEPROM
  * @buf: buffer to read the SPD data to
+ * @memtype: Memory type, such as SPD_MEMTYPE_DDR4
  *
  * This function takes a I2C message transfer function and reads the contents
  * from a SPD EEPROM to the buffer provided at @buf. The buffer should at least
@@ -487,19 +488,24 @@ static int read_buf(struct pbl_i2c *i2c,
  * otherwise.
  */
 int spd_read_eeprom(struct pbl_i2c *i2c,
-		    uint8_t addr, void *buf)
+		    uint8_t addr, void *buf,
+		    int memtype)
 {
 	unsigned char *buf8 = buf;
 	int ret;
 
-	ret = read_buf(i2c, addr, SPD_SPA0_ADDRESS, buf);
-	if (ret < 0)
-		return ret;
+	if (memtype == SPD_MEMTYPE_DDR4) {
+		ret = read_buf(i2c, addr, SPD_SPA0_ADDRESS, buf);
+		if (ret < 0)
+			return ret;
 
-	if (buf8[2] == SPD_MEMTYPE_DDR4) {
 		ret = read_buf(i2c, addr, SPD_SPA1_ADDRESS, buf + 256);
 		if (ret < 0)
 			return ret;
+	} else {
+		ret = read_buf(i2c, addr, 0, buf);
+		if (ret < 0)
+			return ret;
 	}
 
 	return 0;
diff --git a/include/ddr_spd.h b/include/ddr_spd.h
index bcc2171d2a..a96d01df85 100644
--- a/include/ddr_spd.h
+++ b/include/ddr_spd.h
@@ -575,6 +575,7 @@ int ddr3_spd_check(const struct ddr3_spd_eeprom *spd);
 int ddr4_spd_check(const struct ddr4_spd_eeprom *spd);
 
 int spd_read_eeprom(struct pbl_i2c *i2c,
-		    uint8_t addr, void *buf);
+		    uint8_t addr, void *buf,
+		    int memtype);
 
 #endif /* _DDR_SPD_H_ */
-- 
2.39.0




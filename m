Delivery-date: Fri, 05 Aug 2022 14:57:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwtM-00CWQ9-Sd
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 14:57:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwtN-0005kB-Et
	for lore@pengutronix.de; Fri, 05 Aug 2022 14:57:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tf8OrzdpAeIpe0oy8e+srO3zZLHjKLfuNIq3P5xRkrk=; b=zvalxeYSBTcaycwsC0VTnJe0SK
	DKH/aLFBCVob+0JqjYU2Ui8cUMDyOACSHRQehXDGrjj+2AxqxUWvTpTieuYoXyaNZ9q9B0ZqRbTWD
	rTSqEp9DbqiYLU8wt90eMslDfQPQuyOvJgibKzIP2hulLjgQV3jmX2vE/Ygqna/Pl3quvfdwHC9hS
	UvgjpQLuefREiQEjC5nJyTYyDJGBePYuRBdvSU3fCwYCNzwybpy2m6JyfEjkBIV54l/25dhUEX55c
	pja1crxDK8qF8AITdVsxXRT60hTzpmw/05++cA0GlT6nqmRlQaaA7HqYbDtB7732LEvlCSmQBOfbh
	tAIW+hSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwrn-00FApa-MZ; Fri, 05 Aug 2022 12:55:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqQ-00FA5a-Iw
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:54:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqH-0004bc-C9; Fri, 05 Aug 2022 14:54:17 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqE-001tgV-Ac; Fri, 05 Aug 2022 14:54:16 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-004w1T-DN; Fri, 05 Aug 2022 14:54:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:54:12 +0200
Message-Id: <20220805125413.1046239-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055426_650985_4EF6D657 
X-CRM114-Status: GOOD (  14.52  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 8/9] i2c: add <pbl/pmic.h> for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have much duplication in the i.MX8M boards related to PMIC setup,
add a common header to cut down on it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/pbl/i2c.h  | 16 ++++++++++++++++
 include/pbl/pmic.h | 41 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)
 create mode 100644 include/pbl/pmic.h

diff --git a/include/pbl/i2c.h b/include/pbl/i2c.h
index 1f26e3dfc6ca..d9910f531f53 100644
--- a/include/pbl/i2c.h
+++ b/include/pbl/i2c.h
@@ -18,4 +18,20 @@ static inline int pbl_i2c_xfer(struct pbl_i2c *i2c,
 struct pbl_i2c *imx8m_i2c_early_init(void __iomem *regs);
 struct pbl_i2c *ls1046_i2c_init(void __iomem *regs);
 
+static inline int i2c_dev_probe(struct pbl_i2c *i2c, int addr, bool onebyte)
+{
+	u8 buf[1];
+	struct i2c_msg msgs[] = {
+		{
+			.addr = addr,
+			.buf = buf,
+			.flags = I2C_M_RD,
+			.len = onebyte,
+		},
+	};
+
+	return pbl_i2c_xfer(i2c, msgs, 1) == 1 ? 0 : -ENODEV;
+}
+
+
 #endif /* __I2C_EARLY_H */
diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
new file mode 100644
index 000000000000..0f882c5649d9
--- /dev/null
+++ b/include/pbl/pmic.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __PBL_PMIC_H_
+#define __PBL_PMIC_H_
+
+#include <pbl/i2c.h>
+
+struct pmic_config {
+	u8 reg;
+	u8 val;
+};
+
+static void pmic_reg_write(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
+{
+	int ret;
+	u8 buf[32];
+	struct i2c_msg msgs[] = {
+		{
+			.addr = addr,
+			.buf = buf,
+		},
+	};
+
+	buf[0] = reg;
+	buf[1] = val;
+
+	msgs[0].len = 2;
+
+	ret = pbl_i2c_xfer(i2c, msgs, ARRAY_SIZE(msgs));
+	if (ret != 1)
+		pr_err("Failed to write to pmic@%x: %d\n", addr, ret);
+}
+
+static inline void pmic_configure(struct pbl_i2c *i2c, u8 addr,
+				  const struct pmic_config *config,
+				  size_t config_len)
+{
+	for (; config_len--; config++)
+		pmic_reg_write(i2c, addr, config->reg, config->val);
+}
+
+#endif
-- 
2.30.2




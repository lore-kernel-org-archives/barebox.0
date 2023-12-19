Delivery-date: Tue, 19 Dec 2023 17:13:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFciT-004oHD-29
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 17:13:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFciS-0006c8-Ur
	for lore@pengutronix.de; Tue, 19 Dec 2023 17:13:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Plgwvt5dPF7gICgB9N8wQGFqXoDkiivmX9hOuF67LbU=; b=SdnqnIu3H1Vbv5nYjIzspgq2br
	iZXhamm9UTmoH9g+/hQ43JZnWZjlNNCO6gC4Tr4tRYUakbUUMk6qM/ONZ2cVar80Ih/Ufd4hnbwgC
	lCl4roy0f7XlEf2Pjf4tU1S1phDlK+evNZJWNN+7qUkuIjaBGOGouaggKo8LHuYyo7eNH+Lx5YJ59
	1J5gxpQOHA7fSJatoFp0DopawKn0f2ahH4tSRetbXGbC8cQia3E6Li42OWMCnUUO3w7k4/3aQ0VCZ
	boK3weQxzl+64+8cxFwTTECaMP8pcHnR8tV1amQiXW5X9k8HvI3KAvMN0TD1sI3rSmd0txz51ILfh
	bSZR2m3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFchD-00Ee4L-1o;
	Tue, 19 Dec 2023 16:11:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFch9-00Ee3f-2N
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 16:11:49 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1rFch4-00064w-4L; Tue, 19 Dec 2023 17:11:42 +0100
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Tue, 19 Dec 2023 17:11:35 +0100
Message-Id: <20231219161135.1388398-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_081147_772007_67266F4A 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c: add pmic_reg_read() for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a common PMIC read function to PBL which allows easy porting of
U-Boot's pmic_reg_read() in lowlevel board code.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 include/pbl/pmic.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
index 0f882c5649d..bd0583370ec 100644
--- a/include/pbl/pmic.h
+++ b/include/pbl/pmic.h
@@ -9,6 +9,27 @@ struct pmic_config {
 	u8 val;
 };
 
+static void pmic_reg_read(struct pbl_i2c *i2c, int addr, u8 reg, void *buf)
+{
+	int ret;
+	struct i2c_msg msg[] = {
+		{
+			.addr = addr,
+			.buf = &reg,
+			.len = 1,
+		}, {
+			.addr = addr,
+			.flags = I2C_M_RD,
+			.buf = buf,
+			.len = 1,
+		},
+	};
+
+	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
+	if (ret != ARRAY_SIZE(msg))
+		pr_err("Failed to read from pmic@%x: %d\n", addr, ret);
+}
+
 static void pmic_reg_write(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
 {
 	int ret;
-- 
2.39.2




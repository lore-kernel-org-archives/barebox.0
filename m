Delivery-date: Tue, 02 Jan 2024 12:27:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcw2-000WNk-39
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:27:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcw1-0005sU-Va
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:27:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cRYFFRZ5ofmIdH9JddeA6DrFc4k+cSCwL7i1mm2Y9mA=; b=DiZJiA3rY15M8M
	kOo7yB4TC0/HcmltEOOrXgejK52ho1sR8kiIklGwQUji5EnDZb7Oip3EzBop1bO01qiobaSYitpie
	oR1YtHRjoZnYLib7pTg4cP3whsgcdXzepr57ftTK5I9gY9cU7eE1c84/r2jMi+/mx8xJEjzDKGRwJ
	k8u3oGk17vWn0jGf7pC357I9H5FviwjTSuv6pIPBcrOyO5pNlpW91uZEqfTuo2u8DFxUlhktQOHWw
	mW3DJS8dX6tYF5OawjHHqC4ggZWdOOsw6bDMYiRVz6JVQ5yTxhxy/Rx5AJuXKHMCCyLPknbr006Z3
	Mc1hQeqpEYRHmWamoHGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcuz-007iGU-2e;
	Tue, 02 Jan 2024 11:26:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcuw-007iG7-2T
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:26:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcut-0005kZ-8V; Tue, 02 Jan 2024 12:26:39 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcur-003Aar-PI; Tue, 02 Jan 2024 12:26:38 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rKcus-001KhD-2b;
	Tue, 02 Jan 2024 12:26:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 Jan 2024 12:26:38 +0100
Message-Id: <20240102112638.317875-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_032643_108125_32EAB1A0 
X-CRM114-Status: GOOD (  10.83  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, bst@pengutronix.de
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
Subject: [PATCH] i2c: add pmic_reg_read8() for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Bastian Krause <bst@pengutronix.de>

Add a common PMIC read function to PBL which allows easy porting of
U-Boot's pmic_reg_read() in lowlevel board code.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20231220104739.10700-1-bst@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/pbl/pmic.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/pbl/pmic.h b/include/pbl/pmic.h
index 695e47a564..91c5be3ff3 100644
--- a/include/pbl/pmic.h
+++ b/include/pbl/pmic.h
@@ -9,6 +9,27 @@ struct pmic_config {
 	u8 val;
 };
 
+static inline void pmic_reg_read8(struct pbl_i2c *i2c, int addr, u8 reg, u8 *val)
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
+			.buf = val,
+			.len = 1,
+		},
+	};
+
+	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
+	if (ret != ARRAY_SIZE(msg))
+		pr_err("Failed to read from pmic@%x: %d\n", addr, ret);
+}
+
 static void pmic_reg_write8(struct pbl_i2c *i2c, int addr, u8 reg, u8 val)
 {
 	int ret;
-- 
2.39.2




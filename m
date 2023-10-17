Delivery-date: Tue, 17 Oct 2023 16:55:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTQ-00Bsf0-DH
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTO-0003bL-L6
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7fZcjoM9eCebaL7OhsEjU2otvvsz8WqhHc9VJDwZV3Y=; b=wA2ZGY9MW37mEo5qKCXOIy3JWd
	VW14+LGuy62hHH3CZOtAwQPFPh5kdfl/NaAXzf2jzQfF1RIkpBxKG8IbQ9Ob96WsAYZdajkNulLnL
	AB54ZEhKwVpNwgiaFiKHTwYZeNRmdiHoJMCy+KPOFNYzrf7b7JmizKE/+xEM+EToQKJQoSV6H5jN+
	4LxnpKBbHDktOLc9k+EOd1oXRgzgIWrIfWVR1FA1Yyw1bSmRMwW/UokFKsKJX+jTj/6kYJvvDUR74
	FLt+USFB1b3gwFvvBi81mm9+i4EfMqq960NhAamuRDgprYTCmG3MjCAYQAHdID5scbXscFYEQEixl
	t+RxX/Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslS6-00CefR-0Y;
	Tue, 17 Oct 2023 14:53:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ2-00CcM1-0k
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:44 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-CK
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:05 +0200
Message-Id: <20231017145131.3069283-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_075138_423639_48F54E70 
X-CRM114-Status: GOOD (  12.98  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/29] i.MX: HABv4: fix i.MX8MQ device lockdown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The i.MX8M family of processors moved the SEC_CONFIG_1 fuse to a
different location. Fix this by adding dedicated imx8mq ops which uses
the new hook.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
[m.felsch@pengutronix.de: split commit into two]
[m.felsch@pengutronix.de: integrate review feedback]
[a.fatoum@pengutronix.de: fixup imx_hab_device_locked_down_ocotp logic for imx6 and imx8m]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- integrate Ahmads fixup patch
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 drivers/hab/hab.c                | 47 +++++++++++++++++++++++++++-----
 include/mach/imx/ocotp-fusemap.h |  3 ++
 2 files changed, 43 insertions(+), 7 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index afe6a6682276..29379ff871c8 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -150,7 +150,7 @@ static int imx_hab_permanent_write_enable_ocotp(int enable)
 	return imx_ocotp_permanent_write(enable);
 }
 
-static int imx_hab_lockdown_device_ocotp(void)
+static int imx6_hab_lockdown_device_ocotp(void)
 {
 	int ret;
 
@@ -161,7 +161,18 @@ static int imx_hab_lockdown_device_ocotp(void)
 	return imx_ocotp_write_field(OCOTP_SEC_CONFIG_1, 1);
 }
 
-static int imx_hab_device_locked_down_ocotp(void)
+static int imx8m_hab_lockdown_device_ocotp(void)
+{
+	int ret;
+
+	ret = imx_ocotp_write_field(MX8M_OCOTP_SEC_CONFIG_1, 1);
+	if (ret < 0)
+		return ret;
+
+	return imx_ocotp_write_field(MX8MQ_OCOTP_DIR_BT_DIS, 1);
+}
+
+static int imx6_hab_device_locked_down_ocotp(void)
 {
 	int ret;
 	unsigned int v;
@@ -173,6 +184,18 @@ static int imx_hab_device_locked_down_ocotp(void)
 	return v;
 }
 
+static int imx8m_hab_device_locked_down_ocotp(void)
+{
+	int ret;
+	unsigned int v;
+
+	ret = imx_ocotp_read_field(MX8M_OCOTP_SEC_CONFIG_1, &v);
+	if (ret < 0)
+		return ret;
+
+	return v;
+}
+
 struct imx_hab_ops {
 	int (*init)(void);
 	int (*write_srk_hash)(const u8 *srk, unsigned flags);
@@ -190,11 +213,19 @@ static struct imx_hab_ops imx_hab_ops_iim = {
 	.permanent_write_enable = imx_hab_permanent_write_enable_iim,
 };
 
-static struct imx_hab_ops imx_hab_ops_ocotp = {
+static struct imx_hab_ops imx6_hab_ops_ocotp = {
+	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
+	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
+	.lockdown_device = imx6_hab_lockdown_device_ocotp,
+	.device_locked_down = imx6_hab_device_locked_down_ocotp,
+	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
+};
+
+static struct imx_hab_ops imx8m_hab_ops_ocotp = {
 	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
 	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
-	.lockdown_device = imx_hab_lockdown_device_ocotp,
-	.device_locked_down = imx_hab_device_locked_down_ocotp,
+	.lockdown_device = imx8m_hab_lockdown_device_ocotp,
+	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
 };
 
@@ -208,8 +239,10 @@ static struct imx_hab_ops *imx_get_hab_ops(void)
 
 	if (IS_ENABLED(CONFIG_HABV3) && (cpu_is_mx25() || cpu_is_mx35()))
 		tmp = &imx_hab_ops_iim;
-	else if (IS_ENABLED(CONFIG_HABV4) && (cpu_is_mx6() || cpu_is_mx8mq()))
-		tmp = &imx_hab_ops_ocotp;
+	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx6())
+		tmp = &imx6_hab_ops_ocotp;
+	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx8mq())
+		tmp = &imx8m_hab_ops_ocotp;
 	else
 		return NULL;
 
diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index 6ba794c16619..823273895502 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -53,5 +53,8 @@
 #define OCOTP_GP1			(OCOTP_WORD(0x660) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 #define OCOTP_GP2			(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 #define OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
+/* i.MX8M moved the security related fuses */
+#define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
+#define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
 
 #endif /* __MACH_IMX_OCOTP_FUSEMAP_H */
-- 
2.39.2




Delivery-date: Tue, 10 Oct 2023 16:35:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDp9-003BKR-4d
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:35:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDp3-0008QT-Kx
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:35:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wt74ZylrN8X7MwjUFUwFFIbyOTgTc3UKriSl/EXrcMk=; b=z4QIJ1h2OiQUEacodLo/2qAOs5
	Yv/PZTPgB2nNHch8QP0lX4LrjQ3rMrauwHI/BU+2/b55X0oj4NxuRNgPcuta3NgE5qF6RsxyV1Ca7
	o9ExD2OAjI2QvxaRPvaX3fm9LBppAj3F9LOE6rRSpMgSsLirAiMJTEiZlQHOnyQXleEEzL3p4TU2g
	ofFH6hD7bw1BWlnFleCGX1AiddjVY+7LyPJMhzFBNXoYUnfgbWH/Z3gBEK/4Rx7DPp0QFOZjrSoUr
	DPfoElaWdfqx5uMoB4Eg/GrIB1Wp3ufp1fS6cQQ99OtJatFOIP5dtmS83GYi2UsEP4NNXrivki2sU
	RUZqxNcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnm-00DZds-0l;
	Tue, 10 Oct 2023 14:33:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnY-00DZQ7-2K
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-68
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:32:53 +0200
Message-Id: <20231010143314.2031253-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_073324_770669_F9D2F824 
X-CRM114-Status: GOOD (  12.96  )
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
Subject: [PATCH 05/26] i.MX: HABv4: extend support to i.MX8M SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Instead of only supporting i.MX8MQ based boards, extend support to the
whole i.MX8M family.

OCRAM address values were taken from AN12263 Rev1 06/2020. While at it
turn the OCRAM addresses into defines as well and remove the superfluous
comment lines.

The fuses do match with the i.MX8MQ except for the DIR_BT_DIS fuse.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
[m.felsch@pengutronix.de: adapt commit message]
[m.felsch@pengutronix.de: integrate review feedback]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/hab/hab.c   |  6 +++++-
 drivers/hab/habv4.c | 26 ++++++++++++++++++--------
 2 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index a1c1e89eb249..444472511771 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -169,6 +169,10 @@ static int imx8m_hab_lockdown_device_ocotp(void)
 	if (ret < 0)
 		return ret;
 
+	/* Only i.MX8MQ requires fusing of DIR_BT_DIS */
+	if (!cpu_is_mx8mq())
+		return ret;
+
 	return imx_ocotp_write_field(MX8MQ_OCOTP_DIR_BT_DIS, 1);
 }
 
@@ -227,7 +231,7 @@ static struct imx_hab_ops *imx_get_hab_ops(void)
 		ops = &imx_hab_ops_iim;
 	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx6())
 		ops = &imx6_hab_ops_ocotp;
-	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx8mq())
+	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx8m())
 		ops = &imx8m_hab_ops_ocotp;
 	else
 		return NULL;
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index bbfbf697b520..0238b98dfb7e 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -193,18 +193,34 @@ static enum hab_status hab_sip_report_status(enum hab_config *config,
 	return (enum hab_status)res.a0;
 }
 
+#define IMX8MQ_ROM_OCRAM_ADDRESS	0x9061C0
+#define IMX8MM_ROM_OCRAM_ADDRESS	0x908040
+#define IMX8MN_ROM_OCRAM_ADDRESS	0x908040
+#define IMX8MP_ROM_OCRAM_ADDRESS	0x90D040
+
 static enum hab_status imx8m_read_sram_events(enum hab_status status,
 					     uint32_t index, void *event,
 					     uint32_t *bytes)
 {
 	struct hab_event_record *events[10];
 	int num_events = 0;
-	char *sram = (char *)0x9061c0;
+	char *sram;
 	int i = 0;
 	int internal_index = 0;
 	char *end = 0;
 	struct hab_event_record *search;
 
+	if (cpu_is_mx8mq())
+		sram = (char *)IMX8MQ_ROM_OCRAM_ADDRESS;
+	else if (cpu_is_mx8mm())
+		sram = (char *)IMX8MM_ROM_OCRAM_ADDRESS;
+	else if (cpu_is_mx8mn())
+		sram = (char *)IMX8MN_ROM_OCRAM_ADDRESS;
+	else if (cpu_is_mx8mp())
+		sram = (char *)IMX8MP_ROM_OCRAM_ADDRESS;
+	else
+		return HAB_STATUS_FAILURE;
+
 	/*
 	 * AN12263 HABv4 Guidelines and Recommendations
 	 * recommends the address and size, however errors are usually contained
@@ -590,7 +606,7 @@ static int imx8m_hab_get_status(void)
 
 static int init_imx8m_hab_get_status(void)
 {
-	if (!cpu_is_mx8mq())
+	if (!cpu_is_mx8m())
 		/* can happen in multi-image builds and is not an error */
 		return 0;
 
@@ -602,12 +618,6 @@ static int init_imx8m_hab_get_status(void)
 
 	return 0;
 }
-
-/*
- *
- *
- *
- */
 postmmu_initcall(init_imx8m_hab_get_status);
 
 static int init_imx6_hab_get_status(void)
-- 
2.39.2




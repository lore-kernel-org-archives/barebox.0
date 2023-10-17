Delivery-date: Tue, 17 Oct 2023 16:54:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTH-00BscD-E0
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:54:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTF-0003TQ-Hi
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:54:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gNkvOXwDzHSqwCCYPrrf1B6CRblLb5U7Px1lK3oIcDU=; b=fCy2MeOsQgC1hXzZtHn6dRZZOG
	vTXS6Jd0Kh21SE9WMHEwnQX6BTeHD8AN769VsX7bK2lxHLuiyJorzCXiWxW40s5ouk08Tx7+uEYsK
	/uAu2A0lD1ymUUw/W1oSROYLHA2Ad23equx+sPwxrLEMpUuEiuBDqnsOV6tbOcPlFfstkut8aW3r4
	67uqKZaOAjU5W2PSIi+592x8VXwdY4LeN3HLxST0gk5tsvOHvvaS1Yu1sMSStZovgXZ0Lu8m0H09c
	sSbRdrEwixamDRzWfQb6Rg+t1zezLybxk8sEoVd6SHkhQxoSAYOmvJ2oNghUV29BQgiCSNHS1Msui
	2gFAeyig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslRn-00CeWI-2k;
	Tue, 17 Oct 2023 14:53:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ1-00CcMB-2R
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:39 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-Gg
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:08 +0200
Message-Id: <20231017145131.3069283-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_075137_839088_C8F5B418 
X-CRM114-Status: GOOD (  10.56  )
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
Subject: [PATCH v2 06/29] i.MX: HABv4: retrieve HAB ROM version for i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The HAB userguide mentions this additional API calls introduced in 2018
(which coincides with the introduction of i.MX8M SoCs).
Call this API call unconditionally on i.MX8M SoCs to print the HAB
version the ROM code supports.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 drivers/hab/habv4.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 0238b98dfb7e..f74de009fce0 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -168,6 +168,7 @@ struct habv4_rvt {
 #define FSL_SIP_HAB_REPORT_STATUS       0x04
 #define FSL_SIP_HAB_FAILSAFE            0x05
 #define FSL_SIP_HAB_CHECK_TARGET        0x06
+#define FSL_SIP_HAB_GET_VERSION		0x07
 
 static enum hab_status hab_sip_report_status(enum hab_config *config,
 					     enum habv4_state *state)
@@ -193,6 +194,15 @@ static enum hab_status hab_sip_report_status(enum hab_config *config,
 	return (enum hab_status)res.a0;
 }
 
+static uint32_t hab_sip_get_version(void)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(FSL_SIP_HAB, FSL_SIP_HAB_GET_VERSION, 0, 0, 0, 0, 0, 0, &res);
+
+	return (uint32_t)res.a0;
+}
+
 #define IMX8MQ_ROM_OCRAM_ADDRESS	0x9061C0
 #define IMX8MM_ROM_OCRAM_ADDRESS	0x908040
 #define IMX8MN_ROM_OCRAM_ADDRESS	0x908040
@@ -610,6 +620,8 @@ static int init_imx8m_hab_get_status(void)
 		/* can happen in multi-image builds and is not an error */
 		return 0;
 
+	pr_info("ROM version: 0x%x\n", hab_sip_get_version());
+
 	/*
 	 * Nobody will check the return value if there were HAB errors, but the
 	 * initcall will fail spectaculously with a strange error message.
-- 
2.39.2




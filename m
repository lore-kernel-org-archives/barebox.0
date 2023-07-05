Delivery-date: Wed, 05 Jul 2023 16:43:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3jd-00GKS1-4S
	for lore@lore.pengutronix.de; Wed, 05 Jul 2023 16:43:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qH3ja-0001Tt-Do
	for lore@pengutronix.de; Wed, 05 Jul 2023 16:43:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4fzHhvsrGAlP8zMXEp+obrQxqnLGD/3Yimu4vXXxVvw=; b=kuuTmVKpWCCr3xcSRupxVd7qn8
	hE7B5tXm/WM+HK/SColp0wWuLXtsyHV/837dXLvgk+h/1iHgaPrIQUndHBZ1y2qqeUogComkqWTrL
	x8K8e+nWPQ1MZjm7TBzYnsXg7qaMkaUajIh/4SVGyjtBtHNvnTa+gvwbtAqPCVbY5+b+FibuI40z3
	6zMqW/k12WcezUnS7/2cn59ojXwxeWTV3Nt8AJ/GlabutfXVp20hy8OJIXJ9MNxG0lGENfkmMHBxg
	c0l2+6ucD3wXoMd+7VBXDRtWYepRKnJgUY5j68op/veU0+hPYSDBPwZp5Q0yPY8u3joaUIYRuGPqv
	jzjbihmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iG-00GAqF-1M;
	Wed, 05 Jul 2023 14:42:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3iB-00GAnJ-0p
	for barebox@lists.infradead.org;
	Wed, 05 Jul 2023 14:42:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qH3i9-00012Q-00; Wed, 05 Jul 2023 16:42:29 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed,  5 Jul 2023 16:42:16 +0200
Message-ID: <20230705144219.504194-3-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
References: <20230705144219.504194-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_074231_337161_FDCB4B04 
X-CRM114-Status: GOOD (  12.03  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/6] i.MX: HABv4: extend support to i.MX8M SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of only supporting i.MX8MQ based boards, extend support to the
whole i.MX8M family. OCRAM address values were taken from AN12263 Rev1
06/2020. While at it turn the OCRAM adresses into defines as well.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/hab/habv4.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 26463c8ce0..f558465618 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -205,18 +205,36 @@ static enum hab_status hab_sip_report_status(enum hab_config *config,
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
 
+	if (cpu_is_mx8mq()) {
+		sram = (char *)IMX8MQ_ROM_OCRAM_ADDRESS;
+	} else if (cpu_is_mx8mm()) {
+		sram = (char *)IMX8MM_ROM_OCRAM_ADDRESS;
+	} else if (cpu_is_mx8mn()) {
+		sram = (char *)IMX8MN_ROM_OCRAM_ADDRESS;
+	} else if (cpu_is_mx8mp()) {
+		sram = (char *)IMX8MP_ROM_OCRAM_ADDRESS;
+	} else {
+		/* No known i.MX8M variant */
+		return HAB_STATUS_FAILURE;
+	}
+
 	/*
 	 * AN12263 HABv4 Guidelines and Recommendations
 	 * recommends the address and size, however errors are usually contained
@@ -593,7 +611,7 @@ static int imx8m_hab_get_status(void)
 
 static int init_imx8m_hab_get_status(void)
 {
-	if (!cpu_is_mx8mq())
+	if (!cpu_is_mx8m())
 		/* can happen in multi-image builds and is not an error */
 		return 0;
 
-- 
2.41.0




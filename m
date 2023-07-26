Delivery-date: Wed, 26 Jul 2023 21:28:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOkBg-00BBpn-Nw
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 21:28:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOkBe-0001Ya-67
	for lore@pengutronix.de; Wed, 26 Jul 2023 21:28:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cl8M8eTBDTCohi2qFiJ7Ze6J1k6VkRx2TQXXAwbfCCU=; b=mpJXf2TsnflFtfnzs52mnimAem
	YxH9Thp/PURpats38qpixf7eTuYnXMSv4POs4EyE1aBsy8w4LyFQoKb8JnY8dS4mM9OqV4MSytMcM
	tD8+wleifo9wwqyIB1xyPWMbhOJOoHVmj+bbCBV5hxiXKVyLMO31ZzdfTCgRQ9aLHeUlqBuH3qg84
	3Cqyfvnhj0IVkl9KAfH0mBCim3hAs9Aa9dYlo9lQwT+VVYXsAMQJLNk//1Wa6N4bMv0huA++7ruGL
	mkYWxBA1NMVLLWvMCTTYpd5HaIXQ1TY5NDNYR8uYW0N273FYCFa2FPo/Db3vCTVHiIQPv5x7T6dhS
	vr/Ci/Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOkAY-00BNwY-2P;
	Wed, 26 Jul 2023 19:27:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOkAO-00BNu6-2F
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 19:27:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAL-0001Ml-GY; Wed, 26 Jul 2023 21:27:21 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAK-002JSf-SS; Wed, 26 Jul 2023 21:27:20 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qOkAK-003pBw-0T;
	Wed, 26 Jul 2023 21:27:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Jul 2023 21:27:18 +0200
Message-Id: <20230726192718.911735-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230726192718.911735-1-a.fatoum@pengutronix.de>
References: <20230726192718.911735-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_122724_784698_5C08CE7E 
X-CRM114-Status: GOOD (  13.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] hab: habv4: export function to query HAB state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Board code may want to base runtime decisions on whether the system
is secure booting. Add a function to query that state.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/habv4.c | 29 +++++++++++++----------------
 include/hab.h       | 17 +++++++++++++++++
 2 files changed, 30 insertions(+), 16 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index b6baa92c679d..9f54aed5f508 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -68,18 +68,6 @@ enum hab_config {
 	HAB_CONFIG_CLOSED = 0xcc,	/* Secure IC */
 };
 
-/* State definitions */
-enum hab_state {
-	HAB_STATE_INITIAL = 0x33,	/* Initialising state (transitory) */
-	HAB_STATE_CHECK = 0x55,		/* Check state (non-secure) */
-	HAB_STATE_NONSECURE = 0x66,	/* Non-secure state */
-	HAB_STATE_TRUSTED = 0x99,	/* Trusted state */
-	HAB_STATE_SECURE = 0xaa,	/* Secure state */
-	HAB_STATE_FAIL_SOFT = 0xcc,	/* Soft fail state */
-	HAB_STATE_FAIL_HARD = 0xff,	/* Hard fail state (terminal) */
-	HAB_STATE_NONE = 0xf0,		/* No security state machine */
-};
-
 enum hab_reason {
 	HAB_REASON_RSN_ANY = 0x00,		/* Match any reason */
 	HAB_REASON_UNS_COMMAND = 0x03,		/* Unsupported command */
@@ -168,7 +156,7 @@ struct habv4_rvt {
 	enum hab_status (*run_csf)(const void *csf, uint8_t cid);
 	enum hab_status (*assert)(enum hab_assertion assertion, const void *data, uint32_t count);
 	enum hab_status (*report_event)(enum hab_status status, uint32_t index, void *event, uint32_t *bytes);
-	enum hab_status (*report_status)(enum hab_config *config, enum hab_state *state);
+	enum hab_status (*report_status)(enum hab_config *config, enum habv4_state *state);
 	void (*failsafe)(void);
 } __packed;
 
@@ -182,7 +170,7 @@ struct habv4_rvt {
 #define FSL_SIP_HAB_CHECK_TARGET        0x06
 
 static enum hab_status hab_sip_report_status(enum hab_config *config,
-					     enum hab_state *state)
+					     enum habv4_state *state)
 {
 	struct arm_smccc_res res;
 
@@ -290,7 +278,7 @@ static const char *habv4_get_config_str(enum hab_config config)
 	return "<unknown>";
 }
 
-static const char *habv4_get_state_str(enum hab_state state)
+static const char *habv4_get_state_str(enum habv4_state state)
 {
 	switch (state) {
 	case HAB_STATE_INITIAL:
@@ -518,6 +506,13 @@ static uint8_t *hab_get_event(const struct habv4_rvt *rvt, int index, int *len)
 	return buf;
 }
 
+static int habv4_state = -EPROBE_DEFER;
+
+int habv4_get_state(void)
+{
+	return habv4_state;
+}
+
 static int habv4_get_status(const struct habv4_rvt *rvt)
 {
 	uint8_t *data;
@@ -525,7 +520,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 	int i;
 	enum hab_status status;
 	enum hab_config config = 0x0;
-	enum hab_state state = 0x0;
+	enum habv4_state state = 0x0;
 
 	if (rvt->header.tag != HAB_TAG_RVT) {
 		pr_err("ERROR - RVT not found!\n");
@@ -533,6 +528,8 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 	}
 
 	status = rvt->report_status(&config, &state);
+	habv4_state = state;
+
 	pr_info("Status: %s (0x%02x)\n", habv4_get_status_str(status), status);
 	pr_info("Config: %s (0x%02x)\n", habv4_get_config_str(config), config);
 	pr_info("State: %s (0x%02x)\n",	habv4_get_state_str(state), state);
diff --git a/include/hab.h b/include/hab.h
index d594ad9ee185..ebe19ce357a6 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -8,9 +8,22 @@
 
 #include <errno.h>
 
+/* State definitions */
+enum habv4_state {
+	HAB_STATE_INITIAL = 0x33,	/* Initialising state (transitory) */
+	HAB_STATE_CHECK = 0x55,		/* Check state (non-secure) */
+	HAB_STATE_NONSECURE = 0x66,	/* Non-secure state */
+	HAB_STATE_TRUSTED = 0x99,	/* Trusted state */
+	HAB_STATE_SECURE = 0xaa,	/* Secure state */
+	HAB_STATE_FAIL_SOFT = 0xcc,	/* Soft fail state */
+	HAB_STATE_FAIL_HARD = 0xff,	/* Hard fail state (terminal) */
+	HAB_STATE_NONE = 0xf0,		/* No security state machine */
+};
+
 #ifdef CONFIG_HABV4
 int imx28_hab_get_status(void);
 int imx6_hab_get_status(void);
+int habv4_get_state(void);
 #else
 static inline int imx28_hab_get_status(void)
 {
@@ -20,6 +33,10 @@ static inline int imx6_hab_get_status(void)
 {
 	return -EPERM;
 }
+static inline int habv4_get_state(void)
+{
+	return -ENOSYS;
+}
 #endif
 
 #ifdef CONFIG_HABV3
-- 
2.39.2




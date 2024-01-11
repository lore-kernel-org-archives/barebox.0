Delivery-date: Thu, 11 Jan 2024 16:44:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxDv-00D8NV-24
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 16:44:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNxDu-0002e0-UC
	for lore@pengutronix.de; Thu, 11 Jan 2024 16:44:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NccQNVaVaXzOYYSgNYpWux44U3fmi1++VLbc9psavzM=; b=l2hI8sJLUzwC+n9+KAxQGIANQt
	EfUD7pEUIUJVw/i9d4iPHNA+IqQDNR6OODKA2sObwJSd+cYaXrXJS+SssckAowquV3H1rtvyPIsUW
	z6Sl46xRdofmgVoEhwg9mO76nqw6ntFQy0SUBv/+6RMPmz3mD5t2fHs3zIMOi9q8R6S09RjKcjl3x
	FmWvEokgcYMfrhtCOHCd/ERv8JqoAc7LMqc1QYHxNNzK9GGLq5JmBJ6Kq0hlh5JJTUDNUXisV3pTW
	tVx1c5avBjs/CgTYQ2X8IPT0ZvHzq+cN55ZLPtV5dYabXGfG/d8EbD/m4yp8wyX32NK1CLWD0SijA
	rIKZdzFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxCs-000U6p-1f;
	Thu, 11 Jan 2024 15:42:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxCo-000U5a-1X
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 15:42:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-0002JD-K0; Thu, 11 Jan 2024 16:42:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-001xVI-6w; Thu, 11 Jan 2024 16:42:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rNxCl-009OBb-0W;
	Thu, 11 Jan 2024 16:42:51 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 11 Jan 2024 16:42:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240111-fix-habv4-event-report-v1-1-15d9a990f01e@pengutronix.de>
References: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
In-Reply-To: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_074254_539348_A5391B8C 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] habv4: correct habv4 rom vector table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All function signatures have been taken from the NXP manual "High
Assurance Boot Version 4 Application Programming Interface Reference
Manual" revision 1.4 under section "4.5 ROM vector table". A copy can be
obtained from the imx code signing tool (imx-cst).

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/hab/habv4.c | 50 ++++++++++++++++++++++++++++++--------------------
 1 file changed, 30 insertions(+), 20 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index ed6d4db77c..dfa0207435 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -144,31 +144,41 @@ struct hab_header {
 	uint8_t par;
 } __packed;
 
-typedef enum hab_status hab_loader_callback_fn(void **start, uint32_t *bytes, const void *boot_data);
+typedef enum hab_status hab_loader_callback_fn(void **start, size_t *bytes, const void *boot_data);
+typedef void (*hab_image_entry_fn)(void);
 
+/* This table is constructed from the NXP manual "High Assurance Boot Version 4
+ * Application Programming Interface Reference Manual", section 4.5 ROM vector
+ * table. Revision 1.4 */
 struct habv4_rvt {
 	struct hab_header header;
 	enum hab_status (*entry)(void);
 	enum hab_status (*exit)(void);
-	enum hab_status (*check_target)(enum hab_target target, const void *start, uint32_t bytes);
-	void *(*authenticate_image)(uint8_t cid, uint32_t ivt_offset, void **start, uint32_t *bytes, hab_loader_callback_fn *loader);
-	enum hab_status (*run_dcd)(const void *dcd);
-	enum hab_status (*run_csf)(const void *csf, uint8_t cid);
+	enum hab_status (*check_target)(enum hab_target target, const void *start, size_t bytes);
+	void *(*authenticate_image)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn *loader);
+	enum hab_status (*run_dcd)(const uint8_t *dcd);
+	enum hab_status (*run_csf)(const uint8_t *csf, uint8_t cid, uint32_t srkmask);
 	enum hab_status (*assert)(enum hab_assertion assertion, const void *data, uint32_t count);
-	enum hab_status (*report_event)(enum hab_status status, uint32_t index, void *event, uint32_t *bytes);
+	enum hab_status (*report_event)(enum hab_status status, uint32_t index, uint8_t *event, size_t *bytes);
 	enum hab_status (*report_status)(enum hab_config *config, enum habv4_state *state);
 	void (*failsafe)(void);
+	hab_image_entry_fn(* authenticate_image_no_dcd)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn loader);
+	uint32_t(* get_version)(void);
+	enum hab_status (*authenticate_container)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn loader, uint32_t srkmask, int skip_dcd);
 } __packed;
 
-#define FSL_SIP_HAB             0xC2000007
-#define FSL_SIP_HAB_AUTHENTICATE        0x00
-#define FSL_SIP_HAB_ENTRY               0x01
-#define FSL_SIP_HAB_EXIT                0x02
-#define FSL_SIP_HAB_REPORT_EVENT        0x03
-#define FSL_SIP_HAB_REPORT_STATUS       0x04
-#define FSL_SIP_HAB_FAILSAFE            0x05
-#define FSL_SIP_HAB_CHECK_TARGET        0x06
-#define FSL_SIP_HAB_GET_VERSION		0x07
+#define FSL_SIP_HAB 0xC2000007
+
+enum hab_sip_cmd {
+	FSL_SIP_HAB_AUTHENTICATE = 0x00,
+	FSL_SIP_HAB_ENTRY = 0x01,
+	FSL_SIP_HAB_EXIT = 0x02,
+	FSL_SIP_HAB_REPORT_EVENT = 0x03,
+	FSL_SIP_HAB_REPORT_STATUS = 0x04,
+	FSL_SIP_HAB_FAILSAFE = 0x05,
+	FSL_SIP_HAB_CHECK_TARGET = 0x06,
+	FSL_SIP_HAB_GET_VERSION = 0x07,
+};
 
 static enum hab_status hab_sip_report_status(enum hab_config *config,
 					     enum habv4_state *state)
@@ -211,8 +221,8 @@ static uint32_t hab_sip_get_version(void)
 #define IMX8MP_ROM_OCRAM_ADDRESS	0x90D040
 
 static enum hab_status imx8m_read_sram_events(enum hab_status status,
-					     uint32_t index, void *event,
-					     uint32_t *bytes)
+					     uint32_t index, uint8_t *event,
+					     size_t *bytes)
 {
 	struct hab_event_record *events[10];
 	int num_events = 0;
@@ -478,7 +488,7 @@ static void habv4_display_event_record(struct hab_event_record *record)
 	pr_err("Engine: %s (0x%02x)\n", habv4_get_engine_str(record->engine), record->engine);
 }
 
-static void habv4_display_event(uint8_t *data, uint32_t len)
+static void habv4_display_event(uint8_t *data, size_t len)
 {
 	unsigned int i;
 
@@ -525,7 +535,7 @@ static bool is_known_rng_fail_event(const uint8_t *data, size_t len)
 	return false;
 }
 
-static uint8_t *hab_get_event(const struct habv4_rvt *rvt, int index, int *len)
+static uint8_t *hab_get_event(const struct habv4_rvt *rvt, int index, size_t *len)
 {
 	enum hab_status err;
 	uint8_t *buf;
@@ -558,7 +568,7 @@ int habv4_get_state(void)
 static int habv4_get_status(const struct habv4_rvt *rvt)
 {
 	uint8_t *data;
-	uint32_t len;
+	size_t len;
 	int i;
 	enum hab_status status;
 	enum hab_config config = 0x0;

-- 
2.39.2




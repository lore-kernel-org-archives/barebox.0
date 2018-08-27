Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuJE4-000775-Vv
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 15:15:00 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 27 Aug 2018 17:14:27 +0200
Message-Id: <20180827151428.3032-5-mkl@pengutronix.de>
In-Reply-To: <20180827151428.3032-1-mkl@pengutronix.de>
References: <20180827151428.3032-1-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] i.MX habv4: habv4_display_event_record(): Add function to
 decode event record
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

The code was leveraged from u-boot commit:

    29067abfaf39 iMX: adding parsing to hab_status command

by: Ulises Cardenas <Ulises.Cardenas@freescale.com>

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/hab/habv4.c | 211 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 211 insertions(+)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 74b5af2229c3..28fd42ecd7a8 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -29,6 +29,21 @@
 #define HABV4_RVT_IMX6_NEW 0x00000098
 #define HABV4_RVT_IMX6UL 0x00000100
 
+struct __packed hab_hdr {
+	uint8_t tag;			/* Tag field */
+	__be16 len;			/* Length field in bytes (big-endian) */
+	uint8_t par;			/* Parameters field */
+};
+
+struct __packed hab_event_record {
+	struct hab_hdr hdr;
+	uint8_t status;			/* Status -> enum hab_status*/
+	uint8_t reason;			/* Reason -> enum hab_reason */
+	uint8_t context;		/* Context -> enum hab_context */
+	uint8_t engine;			/* Engine -> enum hab_engine */
+	uint8_t data[0];		/* Record Data */
+};
+
 enum hab_tag {
 	HAB_TAG_IVT = 0xd1,		/* Image Vector Table */
 	HAB_TAG_DCD = 0xd2,		/* Device Configuration Data */
@@ -69,6 +84,66 @@ enum hab_state {
 	HAB_STATE_NONE = 0xf0,		/* No security state machine */
 };
 
+enum hab_reason {
+	HAB_REASON_RSN_ANY = 0x00,		/* Match any reason */
+	HAB_REASON_UNS_COMMAND = 0x03,		/* Unsupported command */
+	HAB_REASON_INV_IVT = 0x05,		/* Invalid ivt */
+	HAB_REASON_INV_COMMAND = 0x06,		/* Invalid command: command malformed */
+	HAB_REASON_UNS_STATE = 0x09,		/* Unsuitable state */
+	HAB_REASON_UNS_ENGINE = 0x0a,		/* Unsupported engine */
+	HAB_REASON_INV_ASSERTION = 0x0c,	/* Invalid assertion */
+	HAB_REASON_INV_INDEX = 0x0f,		/* Invalid index: access denied */
+	HAB_REASON_INV_CSF = 0x11,		/* Invalid csf */
+	HAB_REASON_UNS_ALGORITHM = 0x12,	/* Unsupported algorithm */
+	HAB_REASON_UNS_PROTOCOL = 0x14,		/* Unsupported protocol */
+	HAB_REASON_INV_SIZE = 0x17,		/* Invalid data size */
+	HAB_REASON_INV_SIGNATURE = 0x18,	/* Invalid signature */
+	HAB_REASON_UNS_KEY = 0x1b,		/* Unsupported key type/parameters */
+	HAB_REASON_INV_KEY = 0x1d,		/* Invalid key */
+	HAB_REASON_INV_RETURN = 0x1e,		/* Failed callback function */
+	HAB_REASON_INV_CERTIFICATE = 0x21,	/* Invalid certificate */
+	HAB_REASON_INV_ADDRESS = 0x22,		/* Invalid address: access denied */
+	HAB_REASON_UNS_ITEM = 0x24,		/* Unsupported configuration item */
+	HAB_REASON_INV_DCD = 0x27,		/* Invalid dcd */
+	HAB_REASON_INV_CALL = 0x28,		/* Function called out of sequence */
+	HAB_REASON_OVR_COUNT = 0x2b,		/* Expired poll count */
+	HAB_REASON_OVR_STORAGE = 0x2d,		/* Exhausted storage region */
+	HAB_REASON_MEM_FAIL = 0x2e,		/* Memory failure */
+	HAB_REASON_ENG_FAIL = 0x30,		/* Engine failure */
+};
+
+enum hab_context {
+	HAB_CONTEXT_ANY = 0x00,			/* Match any context */
+	HAB_CONTEXT_AUTHENTICATE = 0x0a,	/* Logged in hab_rvt.authenticate_image() */
+	HAB_CONTEXT_TARGET = 0x33,		/* Event logged in hab_rvt.check_target() */
+	HAB_CONTEXT_ASSERT = 0xa0,		/* Event logged in hab_rvt.assert() */
+	HAB_CONTEXT_COMMAND = 0xc0,		/* Event logged executing csf/dcd command */
+	HAB_CONTEXT_CSF = 0xcf,			/* Event logged in hab_rvt.run_csf() */
+	HAB_CONTEXT_AUT_DAT = 0xdb,		/* Authenticated data block */
+	HAB_CONTEXT_DCD = 0xdd,			/* Event logged in hab_rvt.run_dcd() */
+	HAB_CONTEXT_ENTRY = 0xe1,		/* Event logged in hab_rvt.entry() */
+	HAB_CONTEXT_EXIT = 0xee,		/* Event logged in hab_rvt.exit() */
+	HAB_CONTEXT_FAB = 0xff,			/* Event logged in hab_fab_test() */
+};
+
+enum hab_engine {
+	HAB_ENGINE_ANY = 0x00,		/* Select first compatible engine */
+	HAB_ENGINE_SCC = 0x03,		/* Security controller */
+	HAB_ENGINE_RTIC = 0x05,		/* Run-time integrity checker */
+	HAB_ENGINE_SAHARA = 0x06,	/* Crypto accelerator */
+	HAB_ENGINE_CSU = 0x0a,		/* Central Security Unit */
+	HAB_ENGINE_SRTC = 0x0c,		/* Secure clock */
+	HAB_ENGINE_DCP = 0x1b,		/* Data Co-Processor */
+	HAB_ENGINE_CAAM = 0x1d,		/* CAAM */
+	HAB_ENGINE_SNVS = 0x1e,		/* Secure Non-Volatile Storage */
+	HAB_ENGINE_OCOTP = 0x21,	/* Fuse controller */
+	HAB_ENGINE_DTCP = 0x22,		/* DTCP co-processor */
+	HAB_ENGINE_HDCP = 0x24,		/* HDCP co-processor */
+	HAB_ENGINE_ROM = 0x36,		/* Protected ROM area */
+	HAB_ENGINE_RTL = 0x77,		/* RTL simulation engine */
+	HAB_ENGINE_SW = 0xff,		/* Software engine */
+};
+
 enum hab_target {
 	HAB_TARGET_MEMORY = 0x0f,	/* Check memory white list */
 	HAB_TARGET_PERIPHERAL = 0xf0,	/* Check peripheral white list*/
@@ -157,6 +232,140 @@ static const char *habv4_get_state_str(enum hab_state state)
 	return "<unknown>";
 }
 
+static const char *habv4_get_reason_str(enum hab_reason reason)
+{
+	switch (reason) {
+	case HAB_REASON_RSN_ANY:
+		return "Match any reason"; break;
+	case HAB_REASON_UNS_COMMAND:
+		return "Unsupported command"; break;
+	case HAB_REASON_INV_IVT:
+		return "Invalid ivt"; break;
+	case HAB_REASON_INV_COMMAND:
+		return "Invalid command: command malformed"; break;
+	case HAB_REASON_UNS_STATE:
+		return "Unsuitable state"; break;
+	case HAB_REASON_UNS_ENGINE:
+		return "Unsupported engine"; break;
+	case HAB_REASON_INV_ASSERTION:
+		return "Invalid assertion"; break;
+	case HAB_REASON_INV_INDEX:
+		return "Invalid index: access denied"; break;
+	case HAB_REASON_INV_CSF:
+		return "Invalid csf"; break;
+	case HAB_REASON_UNS_ALGORITHM:
+		return "Unsupported algorithm"; break;
+	case HAB_REASON_UNS_PROTOCOL:
+		return "Unsupported protocol"; break;
+	case HAB_REASON_INV_SIZE:
+		return "Invalid data size"; break;
+	case HAB_REASON_INV_SIGNATURE:
+		return "Invalid signature"; break;
+	case HAB_REASON_UNS_KEY:
+		return "Unsupported key type/parameters"; break;
+	case HAB_REASON_INV_KEY:
+		return "Invalid key"; break;
+	case HAB_REASON_INV_RETURN:
+		return "Failed callback function"; break;
+	case HAB_REASON_INV_CERTIFICATE:
+		return "Invalid certificate"; break;
+	case HAB_REASON_INV_ADDRESS:
+		return "Invalid address: access denied"; break;
+	case HAB_REASON_UNS_ITEM:
+		return "Unsupported configuration item"; break;
+	case HAB_REASON_INV_DCD:
+		return "Invalid dcd"; break;
+	case HAB_REASON_INV_CALL:
+		return "Function called out of sequence"; break;
+	case HAB_REASON_OVR_COUNT:
+		return "Expired poll count"; break;
+	case HAB_REASON_OVR_STORAGE:
+		return "Exhausted storage region"; break;
+	case HAB_REASON_MEM_FAIL:
+		return "Memory failure"; break;
+	case HAB_REASON_ENG_FAIL:
+		return "Engine failure"; break;
+	}
+
+	return "<unknown>";
+}
+
+static const char *habv4_get_context_str(enum hab_context context)
+{
+	switch (context){
+	case HAB_CONTEXT_ANY:
+		return "Match any context"; break;
+	case HAB_CONTEXT_AUTHENTICATE:
+		return "Logged in hab_rvt.authenticate_image()"; break;
+	case HAB_CONTEXT_TARGET:
+		return "Event logged in hab_rvt.check_target()"; break;
+	case HAB_CONTEXT_ASSERT:
+		return "Event logged in hab_rvt.assert()"; break;
+	case HAB_CONTEXT_COMMAND:
+		return "Event logged executing csf/dcd command"; break;
+	case HAB_CONTEXT_CSF:
+		return "Event logged in hab_rvt.run_csf()"; break;
+	case HAB_CONTEXT_AUT_DAT:
+		return "Authenticated data block"; break;
+	case HAB_CONTEXT_DCD:
+		return "Event logged in hab_rvt.run_dcd()"; break;
+	case HAB_CONTEXT_ENTRY:
+		return "Event logged in hab_rvt.entry()"; break;
+	case HAB_CONTEXT_EXIT:
+		return "Event logged in hab_rvt.exit()"; break;
+	case HAB_CONTEXT_FAB:
+		return "Event logged in hab_fab_test()"; break;
+	}
+
+	return "<unknown>";
+}
+
+static const char *habv4_get_engine_str(enum hab_engine engine)
+{
+	switch (engine){
+	case HAB_ENGINE_ANY:
+		return "Select first compatible engine"; break;
+	case HAB_ENGINE_SCC:
+		return "Security controller"; break;
+	case HAB_ENGINE_RTIC:
+		return "Run-time integrity checker"; break;
+	case HAB_ENGINE_SAHARA:
+		return "Crypto accelerator"; break;
+	case HAB_ENGINE_CSU:
+		return "Central Security Unit"; break;
+	case HAB_ENGINE_SRTC:
+		return "Secure clock"; break;
+	case HAB_ENGINE_DCP:
+		return "Data Co-Processor"; break;
+	case HAB_ENGINE_CAAM:
+		return "CAAM"; break;
+	case HAB_ENGINE_SNVS:
+		return "Secure Non-Volatile Storage"; break;
+	case HAB_ENGINE_OCOTP:
+		return "Fuse controller"; break;
+	case HAB_ENGINE_DTCP:
+		return "DTCP co-processor"; break;
+	case HAB_ENGINE_HDCP:
+		return "HDCP co-processor"; break;
+	case HAB_ENGINE_ROM:
+		return "Protected ROM area"; break;
+	case HAB_ENGINE_RTL:
+		return "RTL simulation engine"; break;
+	case HAB_ENGINE_SW:
+		return "Software engine"; break;
+	}
+
+	return "<unknown>";
+}
+
+static void habv4_display_event_record(struct hab_event_record *record)
+{
+	pr_err("Status: %s (0x%02x)\n", habv4_get_status_str(record->status), record->status);
+	pr_err("Reason: %s (0x%02x)\n", habv4_get_reason_str(record->reason), record->reason);
+	pr_err("Context: %s (0x%02x)\n", habv4_get_context_str(record->context), record->context);
+	pr_err("Engine: %s (0x%02x)\n", habv4_get_engine_str(record->engine), record->engine);
+}
+
 static void habv4_display_event(uint8_t *data, uint32_t len)
 {
 	unsigned int i;
@@ -174,6 +383,8 @@ static void habv4_display_event(uint8_t *data, uint32_t len)
 		}
 		pr_cont("\n");
 	}
+
+	habv4_display_event_record((struct hab_event_record *)data);
 }
 
 static int habv4_get_status(const struct habv4_rvt *rvt)
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

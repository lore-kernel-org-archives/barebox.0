Delivery-date: Tue, 07 Apr 2026 19:10:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9x1-009dYN-0B
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 19:10:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA9wz-0000rT-Ny
	for lore@pengutronix.de; Tue, 07 Apr 2026 19:10:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GEswrgZ9z14mpk4hvP/NG8v5OLdGP2RV31UHD6c5ez8=; b=q/J9CzygoJDpPk35KY9TOWmq7b
	/cBTkOC2B4K4S7HKrdIk0SnQ+oOH46LN9palg2KX0OrJ2Z91hQNc7ywMiruo/U4s5MXCEd5SCsPh/
	umBTRdrtFoTbO0oInzttfJBAkeVDAVpiDStouAKA5JzKkhW056JFAOCrh72WSXTDVkpuAYk+5YoWa
	vWFO5Du2hc7PBR/AlPAWkvFoSSwUkDfMmF6vMLAxk+AgQqoT0ythK6rA7ebcN72vXHUyBgjTFS9/E
	P3NMqk50aouZ/HwW2jafCkvVFEvMoYwkA59z+vAYebjj4Ctud8QnOVrdkNmO+XfBuCJPYwA4rZF6k
	+8mJJY5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wK-00000006pih-0Mea;
	Tue, 07 Apr 2026 17:10:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA9wD-00000006peA-3GMH
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 17:10:08 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wA9wA-0000PH-3P; Tue, 07 Apr 2026 19:10:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 07 Apr 2026 19:09:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-socfpga-iossm-v1-v1-2-6440a5337eff@pengutronix.de>
References: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
In-Reply-To: <20260407-socfpga-iossm-v1-v1-0-6440a5337eff@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_101005_904586_872AEE58 
X-CRM114-Status: GOOD (  12.61  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/10] arm: socfpga: iossm: add version check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is a version 1 of the IOSSM, which is used if the board
configuration was created with Quartus 25.3.0 or later.

Warn the user if barebox didn't detect the supported version 0.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 27 +++++++++++++++++++++++++++
 arch/arm/mach-socfpga/iossm_mailbox.h |  2 ++
 2 files changed, 29 insertions(+)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index d89117da4fd4..d14399f305de 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -27,6 +27,9 @@
 #define INTF_IP_TYPE_MASK	GENMASK(31, 29)
 #define INTF_INSTANCE_ID_MASK	GENMASK(28, 24)
 
+#define IOSSM_MAILBOX_HEADER_OFFSET			0x0
+#define IOSSM_MAILBOX_SPEC_VERSION_MASK			GENMASK(2, 0)
+
 /* supported DDR type list */
 static const char *ddr_type_list[7] = {
 		"DDR4", "DDR5", "DDR5_RDIMM", "LPDDR4", "LPDDR5", "QDRIV", "UNKNOWN"
@@ -163,6 +166,18 @@ int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id,
 	return 0;
 }
 
+static int io96b_mb_version(struct io96b_info *io96b_ctrl)
+{
+	phys_addr_t io96b_csr_addr = io96b_ctrl->io96b[0].io96b_csr_addr;
+	u32 mailbox_header;
+	int version;
+
+	mailbox_header = readl(io96b_csr_addr + IOSSM_MAILBOX_HEADER_OFFSET);
+	version = FIELD_GET(IOSSM_MAILBOX_SPEC_VERSION_MASK, mailbox_header);
+
+	return version;
+}
+
 /*
  * Initial function to be called to set memory interface IP type and instance ID
  * IP type and instance ID need to be determined before sending mailbox command
@@ -172,6 +187,18 @@ void io96b_mb_init(struct io96b_info *io96b_ctrl)
 	struct io96b_mb_resp usr_resp;
 	u8 ip_type_ret, instance_id_ret;
 	int i, j, k;
+	int version;
+
+	version = io96b_mb_version(io96b_ctrl);
+	switch (version) {
+	case 0:
+		pr_debug("IOSSM: mailbox version %d\n", version);
+		break;
+	default:
+		pr_warn("IOSSM: unsupported mailbox version %d\n", version);
+		break;
+	}
+	io96b_ctrl->version = version;
 
 	pr_debug("%s: num_instance %d\n", __func__, io96b_ctrl->num_instance);
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
index 29b3f069072d..bd66621d5f70 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.h
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -110,6 +110,7 @@ struct io96b_instance {
 /*
  * Overall IO96B instance(s) information
  *
+ * @version:		Version of the IO96B
  * @num_instance:	Number of instance(s) assigned to HPS
  * @overall_cal_status: Overall calibration status for all IO96B instance(s)
  * @ddr_type:		DDR memory type
@@ -120,6 +121,7 @@ struct io96b_instance {
  * @num_port:		Number of IO96B port.
  */
 struct io96b_info {
+	int			 version;
 	u8			 num_instance;
 	bool			 overall_cal_status;
 	const char		*ddr_type;

-- 
2.47.3




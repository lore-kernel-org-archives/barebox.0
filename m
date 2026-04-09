Delivery-date: Thu, 09 Apr 2026 15:54:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApqS-00AJNu-1L
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 15:54:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wApqQ-0006fE-FW
	for lore@pengutronix.de; Thu, 09 Apr 2026 15:54:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sz6Yqi/xjajVmSVE8Hha4G8+x1XsQ91kvq+BPO0aWTA=; b=3GnuW2eWTphDPfVPvfEfSfMSay
	8kglSlQZa2IrGYq3QiLbHTRrjxjhyWZiVswdsaUs7mIVFtr/x/bDDzvsvRXZK+Qa5ygA7TK2nPI7X
	4lxDwxIBWm9ePveJ3fFgBSTsQSPvXkpVrdnzxddechCSYsB9ZD5SLd5ic3Pqzr7pPFt62oDWPSmwj
	ijo/MfHwN8XfyYRHtgHmESnqAYVt8kw4jTbdvxVHlfJt9HGuhtrW4A6TSCh3/o3pv7u/DTIz5IlTn
	NEzXSpdQc3KHnYOiMZR0VLp1HNEy0DNM0c6p4id7ZJLr5uy3o7D217hCVlW0yKJ3QuB76y4ydkbD6
	HVr0sd8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApp4-0000000AarW-2dMo;
	Thu, 09 Apr 2026 13:53:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApoX-0000000AaX0-1QRu
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 13:53:12 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wApoL-0005uF-9i; Thu, 09 Apr 2026 15:52:45 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 09 Apr 2026 15:52:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-socfpga-iossm-v1-v2-2-09effab91bc1@pengutronix.de>
References: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
In-Reply-To: <20260409-socfpga-iossm-v1-v2-0-09effab91bc1@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065257_556973_F711A8AB 
X-CRM114-Status: GOOD (  13.25  )
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
Subject: [PATCH v2 02/10] arm: socfpga: iossm: add version check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is a version 1 of the IOSSM, which is used if the board
configuration was created with Quartus 25.3.0 or later.

Warn the user if barebox didn't detect the supported version 0.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:

- none
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




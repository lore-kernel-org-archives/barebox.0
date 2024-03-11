Delivery-date: Mon, 11 Mar 2024 11:22:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcnk-000tW2-1Z
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:22:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcne-0008Av-AI
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:22:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rpv2hlKunOY6XEDlMPAkF4+KBjvrZe/nP+3c1Ee0kfw=; b=YSyfoLYQD3hokDXMyh132Zlcvn
	kqSPvl3jxdkenmJw1ryZtkQScZAUytovHYTdP2cXBVJMEj/DpB8NdNc9zLESnjhbZkJH5yncppz65
	tnHYn9owKJByUEMtqnWaWEqC2it46+vOs8d1L9z0Nf0UEtU0zQwsup/sDfJfsGSyFrJVcU+ITvsaZ
	ga5K3nrkf1EuDJsMslPnReBqSjeyxaqARiR9myc1V4wSJB5HiYlP0R+XEGeiiXxHFewPun0oBZPR5
	3PEdBZxU4W2//Xi4IJWfOYBno7OH4+TChtd8KbAGRA2pvNn67NInuBQfFkzgL20Cd+QHxqL0i1sC6
	vkffpOcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcn9-000000014n1-0Fih;
	Mon, 11 Mar 2024 10:21:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcn6-000000014l4-3JSi
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:21:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-0007fM-Sw; Mon, 11 Mar 2024 11:21:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-005gyq-GH; Mon, 11 Mar 2024 11:21:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-001WE1-1J;
	Mon, 11 Mar 2024 11:21:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Mar 2024 11:21:50 +0100
Message-Id: <20240311102152.360762-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240311102152.360762-1-s.hauer@pengutronix.de>
References: <20240311102152.360762-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_032156_870111_CB264B02 
X-CRM114-Status: GOOD (  14.02  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/5] ARM: i.MX: ele: add ele_write_shadow_fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ocotp fuses have shadow values. For some fuses the shadow values
can be read from and written to. While it's not really clear where
the ROM really uses these shadow values, it still helps reading and
writing them to get an idea if we are about to write the correct
fuses before we finally enable permanent write.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ele.c | 33 +++++++++++++++++++++++++++++++++
 include/mach/imx/ele.h  |  2 ++
 2 files changed, 35 insertions(+)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index ce5ad287d8..58cffad797 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -305,6 +305,39 @@ int ele_write_fuse(u16 fuse_id, u32 fuse_val, bool lock, u32 *response)
 	return ret;
 }
 
+/*
+ * ele_write_shadow_fuse - write a fuse
+ * @fuse_id: The fuse to write to
+ * @fuse_val: The value to write to the fuse
+ * @lock: lock fuse after writing
+ * @response: on return contains the response from ELE
+ *
+ * This writes the 32bit given in @fuse_val to the fuses at @fuse_id. This is
+ * a permanent change, be careful.
+ *
+ * Return: 0 when the ELE call succeeds, negative error code otherwise
+ */
+int ele_write_shadow_fuse(u16 fuse_id, u32 fuse_val, u32 *response)
+{
+	struct ele_msg msg;
+	int ret;
+
+	msg.version = ELE_VERSION;
+	msg.tag = ELE_CMD_TAG;
+	msg.size = 3;
+	msg.command = ELE_WRITE_SHADOW_REQ;
+	msg.data[0] = fuse_id;
+
+	msg.data[1] = fuse_val;
+
+	ret = imx9_s3mua_call(&msg);
+
+	if (response)
+		*response = msg.data[0];
+
+	return ret;
+}
+
 /*
  * ele_forward_lifecycle - forward lifecycle
  * @lc: The lifecycle value to forward to
diff --git a/include/mach/imx/ele.h b/include/mach/imx/ele.h
index da4b0aa50d..7ba8afde20 100644
--- a/include/mach/imx/ele.h
+++ b/include/mach/imx/ele.h
@@ -45,6 +45,7 @@
 #define ELE_ATTEST_REQ (0xDB)
 #define ELE_RELEASE_PATCH_REQ (0xDC)
 #define ELE_OTP_SEQ_SWITH_REQ (0xDD)
+#define ELE_WRITE_SHADOW_REQ (0xF2)
 #define ELE_READ_SHADOW_REQ (0xF3)
 
 /* ELE failure indications */
@@ -152,6 +153,7 @@ int ele_call(struct ele_msg *msg);
 int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response);
 int ele_release_rdc(u8 core_id, u8 xrdc, u32 *response);
 int ele_read_shadow_fuse(u16 fuse_id, u32 *fuse_word, u32 *response);
+int ele_write_shadow_fuse(u16 fuse_id, u32 fuse_val, u32 *response);
 int ele_get_info(struct ele_get_info_data *info);
 int ele_write_fuse(u16 fuse_id, u32 fuse_val, bool lock, u32 *response);
 int ele_authenticate_container(unsigned long addr, u32 *response);
-- 
2.39.2




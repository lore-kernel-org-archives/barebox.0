Delivery-date: Fri, 01 Mar 2024 12:19:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg0vj-001frk-1y
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 12:19:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg0vi-0005Ei-T1
	for lore@pengutronix.de; Fri, 01 Mar 2024 12:19:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZI4P4CFXL3oHVRQGKlVLqdgIfzgjvg3U+ILGTSDBoLI=; b=SzvhZsGP8AVtaxPizsCTRVWfg9
	DRUAKEtxLRYOKVHzwfWj9Gyvf41KxVvrJijFTXq1NPIJIKRvMqIFSfxaA1AGusvnuOy1gDRxvs1Xe
	NO3j3yb8p1xMUOaZ1jdwHJCw+ZG4JVUU4TSGBr1MjPST9OK3xdi9uPBlLSpCBns4VXzg7N8UWyliF
	hCwX5YUMOmwf3mn4P7UK4WfSd9YouaHPOTA1u9ybOvyP7a8kj4kCThuofYq5e2APUr14JvpULkCBZ
	IaxGEqpYTM10PcSlUajyS+cBdsXb6+gWZ4cfppt2bSF8FmyrZWRL2d+rgMikslIaEi0qKX8DqRsYd
	NkAjVeMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg0vB-0000000HX7G-3uN0;
	Fri, 01 Mar 2024 11:19:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg0v8-0000000HX6f-0RKI
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 11:19:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rg0v6-000565-SK; Fri, 01 Mar 2024 12:19:16 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rg0v6-003lj1-Fn; Fri, 01 Mar 2024 12:19:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rg0v6-00AEfJ-1F;
	Fri, 01 Mar 2024 12:19:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  1 Mar 2024 12:19:15 +0100
Message-Id: <20240301111915.2439646-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_031918_171841_0662EBA9 
X-CRM114-Status: GOOD (  14.08  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX: ele: remove unnecessary argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The get_response argument to imx9_s3mua_call() is always set to true by
the callers. It must be like that because in the ELE API Reference Guide
every call into the ELE has a response. Drop the unnecessary argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ele.c | 34 ++++++++++++++++------------------
 include/mach/imx/ele.h  |  2 +-
 2 files changed, 17 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index 18161428c6..ab3958cbd3 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -116,7 +116,7 @@ static int mu_write(void __iomem *base, struct ele_msg *msg)
 	return 0;
 }
 
-static int imx9_s3mua_call(struct ele_msg *msg, bool get_response)
+static int imx9_s3mua_call(struct ele_msg *msg)
 {
 	void __iomem *s3mua = IOMEM(MX9_S3MUA_BASE_ADDR);
 	u32 result;
@@ -126,11 +126,9 @@ static int imx9_s3mua_call(struct ele_msg *msg, bool get_response)
 	if (ret)
 		return ret;
 
-	if (get_response) {
-		ret = mu_read(s3mua, msg);
-		if (ret)
-			return ret;
-	}
+	ret = mu_read(s3mua, msg);
+	if (ret)
+		return ret;
 
 	result = msg->data[0];
 	if ((result & 0xff) == 0xd6)
@@ -139,9 +137,9 @@ static int imx9_s3mua_call(struct ele_msg *msg, bool get_response)
 	return -EIO;
 }
 
-int ele_call(struct ele_msg *msg, bool get_response)
+int ele_call(struct ele_msg *msg)
 {
-	return imx9_s3mua_call(msg, get_response);
+	return imx9_s3mua_call(msg);
 }
 
 int ele_get_info(struct ele_get_info_data *info)
@@ -159,7 +157,7 @@ int ele_get_info(struct ele_get_info_data *info)
 	};
 	int ret;
 
-	ret = ele_call(&msg, true);
+	ret = ele_call(&msg);
 	if (ret)
 		pr_err("Could not get ELE info: ret %d, response 0x%x\n",
 			ret, msg.data[0]);
@@ -201,7 +199,7 @@ int imx93_ele_load_fw(void *bl33)
 	/* Actual address of the container header */
 	msg.data[2] = lower_32_bits((unsigned long)firmware);
 
-	ret = ele_call(&msg, true);
+	ret = ele_call(&msg);
 	if (ret)
 		pr_err("Could not start ELE firmware: ret %d, response 0x%x\n",
 			ret, msg.data[0]);
@@ -220,7 +218,7 @@ int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 	msg.command = ELE_READ_FUSE_REQ;
 	msg.data[0] = fuse_id;
 
-	ret = imx9_s3mua_call(&msg, true);
+	ret = imx9_s3mua_call(&msg);
 
 	if (response)
 		*response = msg.data[0];
@@ -243,7 +241,7 @@ int ele_read_shadow_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 	msg.command = ELE_READ_SHADOW_REQ;
 	msg.data[0] = fuse_id;
 
-	ret = imx9_s3mua_call(&msg, true);
+	ret = imx9_s3mua_call(&msg);
 
 	if (response)
 		*response = msg.data[0];
@@ -281,7 +279,7 @@ int ele_write_fuse(u16 fuse_id, u32 fuse_val, bool lock, u32 *response)
 
 	msg.data[1] = fuse_val;
 
-	ret = imx9_s3mua_call(&msg, true);
+	ret = imx9_s3mua_call(&msg);
 
 	if (response)
 		*response = msg.data[0];
@@ -312,7 +310,7 @@ int ele_forward_lifecycle(enum ele_lifecycle lc, u32 *response)
 	msg.command = ELE_FWD_LIFECYCLE_UP_REQ;
 	msg.data[0] = lc;
 
-	ret = imx9_s3mua_call(&msg, true);
+	ret = imx9_s3mua_call(&msg);
 
 	if (response)
 		*response = msg.data[0];
@@ -342,7 +340,7 @@ int ele_authenticate_container(unsigned long addr, u32 *response)
 	msg.data[0] = upper_32_bits(addr);
 	msg.data[1] = lower_32_bits(addr);
 
-	ret = imx9_s3mua_call(&msg, true);
+	ret = imx9_s3mua_call(&msg);
 
 	if (response)
 		*response = msg.data[0];
@@ -369,7 +367,7 @@ int ele_release_container(u32 *response)
 	msg.size = 1;
 	msg.command = ELE_RELEASE_CONTAINER_REQ;
 
-	ret = imx9_s3mua_call(&msg, true);
+	ret = imx9_s3mua_call(&msg);
 
 	if (response)
 		*response = msg.data[0];
@@ -404,7 +402,7 @@ int ele_release_rdc(u8 core_id, u8 xrdc, u32 *response)
 		return -EINVAL;
 	}
 
-	ret = ele_call(&msg, true);
+	ret = ele_call(&msg);
 	if (ret)
 		pr_err("%s: ret %d, core id %u, response 0x%x\n",
 			__func__, ret, core_id, msg.data[0]);
@@ -571,7 +569,7 @@ static int ahab_get_events(u32 *events)
 	msg.size = 1;
 	msg.command = ELE_GET_EVENTS_REQ;
 
-	ret = imx9_s3mua_call(&msg, true);
+	ret = imx9_s3mua_call(&msg);
 	if (ret) {
 		pr_err("%s: ret %d, response 0x%x\n", __func__, ret, msg.data[0]);
 
diff --git a/include/mach/imx/ele.h b/include/mach/imx/ele.h
index 018e8345aa..0c863f6cb3 100644
--- a/include/mach/imx/ele.h
+++ b/include/mach/imx/ele.h
@@ -146,7 +146,7 @@ enum ele_lifecycle {
 
 #define ELE_INFO_SOC_REV	GENMASK(31, 24)
 
-int ele_call(struct ele_msg *msg, bool get_response);
+int ele_call(struct ele_msg *msg);
 
 int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response);
 int ele_release_rdc(u8 core_id, u8 xrdc, u32 *response);
-- 
2.39.2




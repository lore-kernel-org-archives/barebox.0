Delivery-date: Mon, 11 Mar 2024 09:07:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjago-000lMx-3C
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:07:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjago-0003iE-EM
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:07:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P7MUbzp7kkLFZrF3dR6sGwvZoUfWF/rGsnteYUfx2B0=; b=R5Te5y+9RfkuWof3SSzQ13o1q0
	qlj/ysfXKc0BGgown9AWAOLafgyCdWaslufeQfTXhK1EHK4EUXvx1t3+l6KhQbyRcjkhn9T2EyIPq
	K0TvqGXqEugshtTpAVt3jkd/c2us7R/ORYLZ5K/dtO+l3Cq/IL6or+HujxRaVuvlTNMdQ8zJUBXAG
	59OBGHB3Ic4iXmWtoaWfJQXo0bXr2LhrL0EP9EVVVcM4WWouWUHdjJ46f77AkEbdmWmIgrgM3BVdO
	KDFEkb9zkqOwMc/VJyjJ3Yas1yUUJ73xAmTV/iWDyhsNptgyNOBelNdSn5F8uACcUowbBv4vvIbjO
	vvEdOxMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjag5-00000000Z9t-1wBd;
	Mon, 11 Mar 2024 08:06:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjag1-00000000Z8l-2xFu
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:06:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjafx-0003CS-Lm; Mon, 11 Mar 2024 09:06:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjafx-005fU1-9L; Mon, 11 Mar 2024 09:06:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjafx-007hvI-0Y;
	Mon, 11 Mar 2024 09:06:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Mar 2024 09:06:24 +0100
Message-Id: <20240311080624.1836184-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_010629_764766_CB92A614 
X-CRM114-Status: GOOD (  10.97  )
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
Subject: [PATCH] ARM: i.MX93: ele: start TRNG on i.MX93 rev a1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX93 a0 the TRNG seems to be started automatically. On rev a1 it's
not and OP-TEE panics with "Cannot retrieve random data from ELE". Start
the TRNG to let OP-TEE startup successfully.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ele.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index ab3958cbd3..f8093fc694 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -165,6 +165,23 @@ int ele_get_info(struct ele_get_info_data *info)
 	return ret;
 }
 
+static int ele_get_start_trng(void)
+{
+        struct ele_msg msg = {
+		.version = ELE_VERSION,
+		.tag = ELE_CMD_TAG,
+		.size = 1,
+		.command = ELE_START_RNG,
+	};
+	int ret;
+
+	ret = ele_call(&msg);
+	if (ret)
+		pr_err("Could not start TRNG, response 0x%x\n", msg.data[0]);
+
+	return ret;
+}
+
 int imx93_ele_load_fw(void *bl33)
 {
 	struct ele_get_info_data info = {};
@@ -204,6 +221,9 @@ int imx93_ele_load_fw(void *bl33)
 		pr_err("Could not start ELE firmware: ret %d, response 0x%x\n",
 			ret, msg.data[0]);
 
+	if (rev == 0xa1)
+		ele_get_start_trng();
+
 	return 0;
 }
 
-- 
2.39.2




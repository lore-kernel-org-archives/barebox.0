Delivery-date: Thu, 13 Nov 2025 10:35:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjX-000Us4-1b
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjW-0007QW-Fi
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UEmA03vu5g4cj3EiGQhMy+ORgJXyX0WYG1pCxzwi9Ps=; b=nQw7rCxJph0zt9VGnqRGHJPZQy
	fMges8Gtgrs0wQfWeHFnsfP016tQW/EdWV6ipzu3tDHtUM3VOUJS4EzR6XaBugm+YZYraQq7zwUsO
	F8q8FDBVSzCiaf97V90yICBML6D8zDq2hbwOxZ8323tSlSRkmtvbRODKqv8xl3pQTntUy4yo9PYv3
	bPC/vA2JOLWoWgR4piTYQmafB7LMxMsZb/17ni/gcdOL9oBKE17fxeXX2jHtChVARj+js/eOLXcWH
	A2HNDc78k1KHop3hEeQoxAVFNXnjDmOERMB/fM+FYI055aCRYYZCdCsJVaBKQx0n0F53jcnGyYFJn
	zx43oMTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTj9-0000000ACc0-2rfT;
	Thu, 13 Nov 2025 09:34:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTj5-0000000ACYt-3xIY
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 09:34:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070I-Ds; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTin-000EXq-38;
	Thu, 13 Nov 2025 10:34:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1Cyj;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-soc-uid-v1-2-29a256e07144@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
In-Reply-To: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=2947;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+a0UW6WSQDJBbvxNFOiqu3/p/gwn1uEihVRMIfbhjyg=;
 b=G/cvuIR2Kyrg8l6PXV95OnqY/ysWVAcrUO4qHH6Xv9OUVfCGtSd07w+ICGgPqZvaSCr5PJywY
 wyeBm2/4lt1BLVFoyJf9ru6fkWMQq+a8pS7Hx5+wtp1br8Q+wj1ga+m
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_013447_996111_10B0ED20 
X-CRM114-Status: GOOD (  13.53  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] soc: imx8mp: Soc ID is 128bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX8MP the SoC ID has 128 bits instead of 64 bits as on other i.MX8M
SoCs. Read the remaining 64 bits which so far haven't been included in
the SoC ID.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/imx/soc-imx8m.c | 33 +++++++++++++++++++++++----------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index 3b83284fcbfd56d543cc300b8d42771202aa0bbb..b17f088ad04f3afbf06b823caaaefc1b19f664ea 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -48,7 +48,7 @@ struct imx8_soc_data {
 	void (*save_boot_loc)(void);
 };
 
-static u64 soc_uid;
+static u64 soc_uid[2];
 
 #ifdef CONFIG_HAVE_ARM_SMCCC
 static u32 imx8mq_soc_revision_from_atf(void)
@@ -99,9 +99,9 @@ static u32 __init imx8mq_soc_revision(void)
 			rev = REV_B1;
 	}
 
-	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
-	soc_uid <<= 32;
-	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
+	soc_uid[0] = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
+	soc_uid[0] <<= 32;
+	soc_uid[0] |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
 
 	/* Keep the OCOTP clk on for the TF-A else the CPU stuck */
 	of_node_put(np);
@@ -109,13 +109,16 @@ static u32 __init imx8mq_soc_revision(void)
 	return rev;
 }
 
+#define IMX8MP_OCOTP_UID_2_LOW	0xe00
+#define IMX8MP_OCOTP_UID_2_HIGH	0xe10
+
 static void __init imx8mm_soc_uid(void)
 {
 	void __iomem *ocotp_base;
 	struct device_node *np;
 	struct clk *clk;
-	u32 offset = of_machine_is_compatible("fsl,imx8mp") ?
-		     IMX8MP_OCOTP_UID_OFFSET : 0;
+	bool is_imx8mp = of_machine_is_compatible("fsl,imx8mp");
+	u32 offset = is_imx8mp ? IMX8MP_OCOTP_UID_OFFSET : 0;
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-ocotp");
 	if (!np)
@@ -131,9 +134,15 @@ static void __init imx8mm_soc_uid(void)
 
 	clk_prepare_enable(clk);
 
-	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
-	soc_uid <<= 32;
-	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
+	soc_uid[0] = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
+	soc_uid[0] <<= 32;
+	soc_uid[0] |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
+
+	if (is_imx8mp) {
+		soc_uid[1] = readl_relaxed(ocotp_base + IMX8MP_OCOTP_UID_2_HIGH);
+		soc_uid[1] <<= 32;
+		soc_uid[1] |= readl_relaxed(ocotp_base + IMX8MP_OCOTP_UID_2_LOW);
+	}
 
 	/* Keep the OCOTP clk on for the TF-A else the CPU stuck */
 	of_node_put(np);
@@ -265,7 +274,11 @@ static int __init imx8_soc_init(void)
 		goto free_soc;
 	}
 
-	soc_dev_attr->serial_number = xasprintf("%016llX", soc_uid);
+	if (soc_uid[1])
+		soc_dev_attr->serial_number = xasprintf("%016llX%016llX",
+							soc_uid[1], soc_uid[0]);
+	else
+		soc_dev_attr->serial_number = xasprintf("%016llX", soc_uid[0]);
 	if (!soc_dev_attr->serial_number) {
 		ret = -ENOMEM;
 		goto free_rev;

-- 
2.47.3




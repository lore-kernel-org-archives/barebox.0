Delivery-date: Mon, 05 Feb 2024 14:57:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWzTS-004Ktz-1G
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 14:57:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWzTT-0002q2-2e
	for lore@pengutronix.de; Mon, 05 Feb 2024 14:57:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1Np/cet3FplOLH2F1S5YG4z8uHA8bYnMqMUlw7A82+A=; b=1Ae9KTojYgmzI5Ty+Ape3vgYd5
	LLBRiPsDa894ZYBIvBmDmPP0thCBsohziA9Wx3Q0vFO0tO0Z/JWBHReng2T5vAT3HaktaZEV2G09p
	cOT/Cd4SgOMwi3LKBJWKX/hqdl/xHEXN4kNwAWkhw1u6pB2Qkczg8VJyEL4HMhIh2q60DJ3zqhIfn
	xzoOVDJzLrGJYEibE2OZO+EIVez/N1ryjD0J+0bMHf7+6YY+dfoGIO4qpH1CZqG/UEXrXbnaB79dg
	8FhkAQjkS86iALApAyQmvx0dRCnfOiwG4yjPXYWEOy+pafYt692aBL8Ifm40+I731Q9u/A8mW4LGg
	LzJwMQDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWzSs-00000003V1U-1RcD;
	Mon, 05 Feb 2024 13:56:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWzSp-00000003Uzw-21Wl
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 13:56:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWzSm-0002mA-BQ; Mon, 05 Feb 2024 14:56:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWzSl-004dwE-V9; Mon, 05 Feb 2024 14:56:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWzSl-00CC6F-2l;
	Mon, 05 Feb 2024 14:56:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  5 Feb 2024 14:56:42 +0100
Message-Id: <20240205135642.2906131-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_055647_542246_56C30C14 
X-CRM114-Status: GOOD (  13.82  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] nvmem: imx-ocotp-ele: provide machine_id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX93 fusemap has a unique machine id. Use that for providing a
machine_id.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index b748a30b1f..9708d3f4bb 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -9,6 +9,10 @@
 #include <linux/nvmem-provider.h>
 #include <linux/regmap.h>
 #include <mach/imx/ele.h>
+#include <machine_id.h>
+
+#define UNIQUE_ID_NUM 4
+#define OCOTP_UNIQUE_ID(n) (0xc0 + (n) * 4)
 
 enum fuse_type {
 	FUSE_FSB = 1,
@@ -113,7 +117,20 @@ static int imx_ocotp_cell_pp(void *context, const char *id, unsigned int offset,
 
 static struct regmap_bus imx_ocotp_regmap_bus = {
 	.reg_read = imx_ocotp_reg_read,
-};      
+};
+
+static void imx_ocotp_set_unique_machine_id(struct imx_ocotp_priv *priv)
+{
+	uint32_t unique_id_parts[UNIQUE_ID_NUM];
+	int i;
+
+	for (i = 0; i < UNIQUE_ID_NUM; i++)
+		if (imx_ocotp_reg_read(priv, OCOTP_UNIQUE_ID(i),
+					 &unique_id_parts[i]))
+			return;
+
+	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
+}
 
 static int imx_ele_ocotp_probe(struct device *dev)
 {
@@ -145,6 +162,9 @@ static int imx_ele_ocotp_probe(struct device *dev)
 	if (IS_ERR(priv->map))
 		return PTR_ERR(priv->map);
 
+	if (IS_ENABLED(CONFIG_MACHINE_ID))
+		imx_ocotp_set_unique_machine_id(priv);
+
 	nvmem = nvmem_regmap_register_with_pp(priv->map, "imx-ocotp",
 					      imx_ocotp_cell_pp);
 	if (IS_ERR(nvmem))
-- 
2.39.2




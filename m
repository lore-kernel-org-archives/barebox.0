Delivery-date: Thu, 13 Nov 2025 10:35:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjQ-000UqW-1j
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjP-0007LU-Cu
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wpgM6kAU1tIvrcqOs9AhJ6WVcE2GFgQBH2FkVhPUoI4=; b=qB86GYNntv8ZMsAcY1ucrv9myH
	2RqZwQ5Rh46O+Upmq6Hp0towEd1cdSd+JtURBwg8QuUFy0LdHT5+lwSZiuACL9msbMLas5IEfG+z4
	nOZT7orFUOizIQqeTR5QfBMpv/K0BaDVnWORnCcjF0DCWvADwSFS+4FxaWDy8HiwGolUzLfDX+/dd
	Ram9sH7qsE3qhebOgrPysyL/cTjrIEpOzKqsjPU8Oh9UlkHFHtQCj10IVMVDSXyPSa6rwKegq88xo
	rT4+20hKyhAZOKcRwJLRCUQnAdFEIvLfT0aDljCNZsKTsHWLbWjNordDhKaqnllGTw5n7Yo3oU3jV
	VcvlR+Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTiu-0000000ACSq-08tj;
	Thu, 13 Nov 2025 09:34:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTir-0000000ACRZ-3DEH
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 09:34:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070M-Dt; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTin-000EXt-38;
	Thu, 13 Nov 2025 10:34:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1GHL;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-soc-uid-v1-5-29a256e07144@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
In-Reply-To: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=1632;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=GesspUQWr9jEtOuT/+LuFOokoB7UycETvxf98IVO8DA=;
 b=S+4to+je4R8N8aB0PCALHRMMkWkvOETaALRNAUqLl9j6P9DD1Spi8a5c0ImtCji+Bx4Fr3qu7
 b2XRD8QqTY4DdTXMFHt8gBh2kRW7GCuvngZcPI8xAUW6rvyPdXaIZ7x
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_013433_851513_1845BCC2 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] nvmem: imx-ocotp-ele: call barebox_set_soc_uid()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox_set_soc_uid() calls barebox_set_soc_uid() the same way as done
previously, but also exposes the SoC ID in the barebox environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 797c6f8d7a2a069fbf342c517031eb5dc3f09d7a..ee7c5a3d4a43e00a7d09ebbca3b703db685053f5 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -143,13 +143,20 @@ static void imx_ocotp_set_unique_machine_id(struct imx_ocotp_priv *priv)
 {
 	uint32_t unique_id_parts[UNIQUE_ID_NUM];
 	int i;
+	char *uidstr;
 
 	for (i = 0; i < UNIQUE_ID_NUM; i++)
 		if (imx_ocotp_reg_read(priv, OCOTP_UNIQUE_ID(i),
 					 &unique_id_parts[i]))
 			return;
 
-	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
+	uidstr = xasprintf("%08X%08X%08X%08X",
+			   unique_id_parts[1], unique_id_parts[0],
+			   unique_id_parts[3], unique_id_parts[2]);
+
+	barebox_set_soc_uid(uidstr, unique_id_parts, sizeof(unique_id_parts));
+
+	free(uidstr);
 }
 
 static int permanent_write_enable_set(struct param_d *param, void *ctx)
@@ -194,8 +201,7 @@ static int imx_ele_ocotp_probe(struct device *dev)
 	if (IS_ERR(priv->map))
 		return PTR_ERR(priv->map);
 
-	if (IS_ENABLED(CONFIG_MACHINE_ID))
-		imx_ocotp_set_unique_machine_id(priv);
+	imx_ocotp_set_unique_machine_id(priv);
 
 	nvmem = nvmem_regmap_register_with_pp(priv->map, "imx_ocotp",
 					      imx_ocotp_fixup_dt_cell_info);

-- 
2.47.3




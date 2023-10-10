Delivery-date: Tue, 10 Oct 2023 20:38:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqHcX-003RIB-Rr
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 20:38:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqHcV-0003jR-S5
	for lore@pengutronix.de; Tue, 10 Oct 2023 20:38:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bXW8X6Dhp+9jioiqATHRSFZpxMrPhlnKHwb37nCRJjc=; b=DTqKpgq75R64mIzVUsSe3Wmkun
	q2TcVNZ3vCzVtj3VVXzdYf+/YE83YQNQSkgoug0cc1TD79e2j3L0/m/g4CuP/J5tZGtoZBU/OLFSw
	gVtoc1LgJQb+MlFmKVnK6D0zJXba6v7Gn0DK6ZoMYiYnlO2r+UhE2zFVm+M1DhHev+fpc+8425j3R
	5Iyfpp2ovYaNLE9QjCH3mk2NUy59jdWyQJPsNS3rspFqA/RiCFOllejwHm5zqN5549BjhoKFbMShY
	LpbbVDfKQiikirdm+qzQuq/YT448CzpTSXIpMxCidfKHfa0PsYEbbJNFgU2BCq/1UYXeRPTDtYF7D
	z3CLn6ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqHaI-00DxNm-0e;
	Tue, 10 Oct 2023 18:35:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqHaE-00DxNE-2I
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 18:35:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qqHaA-0003TX-Te; Tue, 10 Oct 2023 20:35:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qqHaA-000iv0-HG; Tue, 10 Oct 2023 20:35:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qqHaA-0080DU-1b;
	Tue, 10 Oct 2023 20:35:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Oct 2023 20:35:41 +0200
Message-Id: <20231010183541.1907425-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-4-m.felsch@pengutronix.de>
References: <20231010143314.2031253-4-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_113554_752726_4843DFB3 
X-CRM114-Status: GOOD (  11.10  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! i.MX: HABv4: fix i.MX8MQ device lockdown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fixed up patch splits imx_hab_lockdown_device_ocotp into two
functions, one i.MX6- and another i.MX8M-specific, because they differ
in the fuse written: OCOTP_SEC_CONFIG_1 vs MX8M_OCOTP_SEC_CONFIG_1.

The same OCOTP_SEC_CONFIG_1 fuse is also read in
imx_hab_device_locked_down_ocotp, so split that two into imx6 and imx8m
variants.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/hab.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 444472511771..1edc495aee94 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -176,7 +176,7 @@ static int imx8m_hab_lockdown_device_ocotp(void)
 	return imx_ocotp_write_field(MX8MQ_OCOTP_DIR_BT_DIS, 1);
 }
 
-static int imx_hab_device_locked_down_ocotp(void)
+static int imx6_hab_device_locked_down_ocotp(void)
 {
 	int ret;
 	unsigned int v;
@@ -188,6 +188,18 @@ static int imx_hab_device_locked_down_ocotp(void)
 	return v;
 }
 
+static int imx8m_hab_device_locked_down_ocotp(void)
+{
+	int ret;
+	unsigned int v;
+
+	ret = imx_ocotp_read_field(MX8M_OCOTP_SEC_CONFIG_1, &v);
+	if (ret < 0)
+		return ret;
+
+	return v;
+}
+
 struct imx_hab_ops {
 	int (*write_srk_hash)(const u8 *srk, unsigned flags);
 	int (*read_srk_hash)(u8 *srk);
@@ -208,7 +220,7 @@ static struct imx_hab_ops imx6_hab_ops_ocotp = {
 	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
 	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
 	.lockdown_device = imx6_hab_lockdown_device_ocotp,
-	.device_locked_down = imx_hab_device_locked_down_ocotp,
+	.device_locked_down = imx6_hab_device_locked_down_ocotp,
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
 };
 
@@ -216,7 +228,7 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
 	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
 	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
 	.lockdown_device = imx8m_hab_lockdown_device_ocotp,
-	.device_locked_down = imx_hab_device_locked_down_ocotp,
+	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
 };
 
-- 
2.39.2




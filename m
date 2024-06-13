Delivery-date: Thu, 13 Jun 2024 15:10:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDn-005Nis-0G
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:10:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDm-00061p-8p
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:10:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/+k0Twt5pTccsZ6kw2W0xCsYAZCwxulXrsqSZSXZNtU=; b=IPDbTfg7Al2dsevLZfBc/1daB4
	WmRHj1oSDxajo46/wvGAdwtV6bdYbeJaPZyfVrqBbb9ismhTeCWIN300aw/8b7zOr9VMRn4u9kWHY
	yeNlsiYiQ9D40oTaVPplKNJISgXn3BExgf+khHfxg7RBOybDYcly7uv9IPxmqhxI2i9J+cCNDHtVZ
	uAptqychFDP+ZQNDQDdgs4A8C16k0ZsxmFlKvTkRlGAAusmHAGs1dAFZvUPzzl2WnKmtywuIRikdk
	jzsWGl7vjYMewXu0UQlL7BLO2dF40eNTtQJs6/mcNwAiSVpO9LFg5d8MY0XKnjCMnLvuDgnRNL4Qf
	Cjp21NLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkDI-0000000GdVN-3oC3;
	Thu, 13 Jun 2024 13:10:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkD9-0000000GdNf-2BtO
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:09:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkD8-0005fE-BE
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:09:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:09:36 +0200
Message-Id: <20240613130944.264396-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_060951_645035_AFE24E4F 
X-CRM114-Status: GOOD (  12.16  )
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
Subject: [PATCH 1/9] i.MX: HABv4: fix SRK_LOCK for i.MX8M devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All current known i.MX8M devices: i.MX8MQ, i.MX8MP, i.MX8MN, i.MX8MM use
an other fuse to lock the SRK hash. Fix this by refactoring
imx_hab_write_srk_hash_ocotp() and make the lock fusing device specific.

Fixes: 6c4d5bb5acfe ("i.MX: HABv4: implement interface for i.MX8MQ")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/hab/hab.c                | 34 +++++++++++++++++++++++++++++---
 include/mach/imx/ocotp-fusemap.h |  1 +
 2 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index ed091058d8fb..28a091841a69 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -128,7 +128,7 @@ static int imx_hab_read_srk_hash_ocotp(u8 *__srk)
 	return 0;
 }
 
-static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
+static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk)
 {
 	u32 *newsrk = (u32 *)__newsrk;
 	int ret, i;
@@ -139,6 +139,17 @@ static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
 			return ret;
 	}
 
+	return 0;
+}
+
+static int imx6_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
+{
+	int ret;
+
+	ret = imx_hab_write_srk_hash_ocotp(newsrk);
+	if (ret)
+		return ret;
+
 	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
 		ret = imx_ocotp_write_field(OCOTP_SRK_LOCK, 1);
 		if (ret < 0)
@@ -148,6 +159,23 @@ static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
 	return 0;
 }
 
+static int imx8m_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
+{
+	int ret;
+
+	ret = imx_hab_write_srk_hash_ocotp(newsrk);
+	if (ret)
+		return ret;
+
+	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
+		ret = imx_ocotp_write_field(MX8M_OCOTP_SRK_LOCK, 1);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int imx_hab_permanent_write_enable_ocotp(int enable)
 {
 	return imx_ocotp_permanent_write(enable);
@@ -222,7 +250,7 @@ static struct imx_hab_ops imx_hab_ops_iim = {
 };
 
 static struct imx_hab_ops imx6_hab_ops_ocotp = {
-	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
+	.write_srk_hash = imx6_hab_write_srk_hash_ocotp,
 	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
 	.lockdown_device = imx6_hab_lockdown_device_ocotp,
 	.device_locked_down = imx6_hab_device_locked_down_ocotp,
@@ -231,7 +259,7 @@ static struct imx_hab_ops imx6_hab_ops_ocotp = {
 };
 
 static struct imx_hab_ops imx8m_hab_ops_ocotp = {
-	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
+	.write_srk_hash = imx8m_hab_write_srk_hash_ocotp,
 	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
 	.lockdown_device = imx8m_hab_lockdown_device_ocotp,
 	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index 823273895502..c4f94e61e8f8 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -54,6 +54,7 @@
 #define OCOTP_GP2			(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 #define OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
 /* i.MX8M moved the security related fuses */
+#define MX8M_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(9) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
 #define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
 
-- 
2.39.2




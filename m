Delivery-date: Wed, 03 Jul 2024 19:21:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3fB-001F3V-1N
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 19:21:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3fA-0007Sg-EY
	for lore@pengutronix.de; Wed, 03 Jul 2024 19:21:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qIJBhjUZmTKiFvDIC/YPb4yWkUPH55sv7Obnh1EgUIQ=; b=a+VgypKxpip/OPcA4hMurHQ3bB
	bL27ApFyITy0aHubvW9pngitKcO7vPFtvDZlfkyeAdliZVphsiUBK+4vjn8ICJ4ililDulSXY9Juw
	ewJwprc87wGHdZPGATuJ7VTFrKAcoMxpOaZtkdWd/IRRePYIYCzSveX8B+9oJQQVnq0IB2cW8fbNF
	S0FqIIX8rx9HJcWHpjc+F3tUQRoUX/RqEWzmaFq/l3wUA6HIzzHqD/7EzTJr6s6ft+EQX6iYkiYep
	oTYiugeojyWHPaRjz+te1igC0S8KCzratsvqiVaVHmY3t1fMsuZxOKXeHDXMugyysDXYVA1COrFzl
	JBDc2uTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3ed-0000000AybI-3MIh;
	Wed, 03 Jul 2024 17:20:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3eW-0000000AyX5-3Q3R
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 17:20:23 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3eU-00073M-Lm; Wed, 03 Jul 2024 19:20:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 19:20:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-hab-v2-1-17419aa5d3a3@pengutronix.de>
References: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_102021_262989_7B856F04 
X-CRM114-Status: GOOD (  14.03  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/9] i.MX: HABv4: fix SRK_LOCK for i.MX8M devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fuse to lock the SRK hash on i.MX8M* SoCs is different than the one
used for the i.MX6 SoCs. Fix this by refactoring
imx_hab_write_srk_hash_ocotp() and make the lock fusing SoC specific.

Fixes: 6c4d5bb5acfe ("i.MX: HABv4: implement interface for i.MX8MQ")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/hab/hab.c                | 34 +++++++++++++++++++++++++++++++---
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




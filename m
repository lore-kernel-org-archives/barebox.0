Delivery-date: Thu, 13 Jun 2024 15:10:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDj-005Nhm-0v
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:10:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDi-0005zh-Ip
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:10:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c8Jfa9aZbltvqMwcRY1O64gzCU9KVkD12v00/SVq4u8=; b=l2eIyKmKFDb8Xp+4k5E3frWvNV
	dCy/OIcY70zbgIm+AkbOdiFHGzdY/nwijRbvjpgGMA77PpQ3/TtZbBZWXX1oW2j++ohKXr8I013mm
	tX7hBYDe1SEX1qF3csJZSUzy1dW0CwVoMGgXC3Tz4zzYA0sUgAFkEA2KJlVEaf8p8YTsf4Xkf+5Hr
	Qe4y0yXI8vkpvajutEqysUY6A+qazUgFAV3tan3D9Lm8XZESpi1YcyegkOzVSmbFfZplzGxJurMPr
	DQZYVZqocQ30trXJqK6Mxt4EYOMR3JtoNgVmYP1Rs25Lvek1aoRjLp/t+Xw1zwwkDvrC/NCRbzjAw
	NYhTDLkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkDE-0000000GdRX-0JHQ;
	Thu, 13 Jun 2024 13:09:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkD9-0000000GdNk-2Ike
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:09:52 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkD8-0005fE-F9
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:09:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:09:40 +0200
Message-Id: <20240613130944.264396-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613130944.264396-1-m.felsch@pengutronix.de>
References: <20240613130944.264396-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_060951_666041_E47DEAF1 
X-CRM114-Status: GOOD (  16.13  )
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
Subject: [PATCH 5/9] i.MX: HAB: add imx_hab_revoke_key support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an helper to revoke an i.MX SRK key. At the moment the helper
supprts i.MX8M devices only, but adding support for other SoCs can be
done easily by providing the .revoke_key() hook.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/hab/hab.c                | 45 ++++++++++++++++++++++++++++++++
 include/hab.h                    |  6 +++++
 include/mach/imx/ocotp-fusemap.h |  1 +
 3 files changed, 52 insertions(+)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 28a091841a69..e21a3c3acf81 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -231,6 +231,27 @@ static int imx8m_hab_device_locked_down_ocotp(void)
 	return v;
 }
 
+static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
+{
+	int ret;
+
+	/* Prohibit revocation of last possible key */
+	if (key_idx >= 4)
+		return -EINVAL;
+
+	ret = imx_ocotp_srk_revoke_locked();
+	if (ret < 0)
+		return ret;
+
+	/* Return -EINVAL in case the SRK_REVOKE write is locked */
+	if (ret == 1)
+		return -EINVAL;
+
+	ret = imx_ocotp_write_field(MX8M_OCOTP_SRK_REVOKE, BIT(key_idx));
+
+	return ret;
+}
+
 struct imx_hab_ops {
 	int (*write_srk_hash)(const u8 *srk, unsigned flags);
 	int (*read_srk_hash)(u8 *srk);
@@ -238,6 +259,7 @@ struct imx_hab_ops {
 	int (*lockdown_device)(unsigned flags);
 	int (*device_locked_down)(void);
 	int (*print_status)(void);
+	int (*revoke_key)(unsigned key_idx);
 };
 
 static struct imx_hab_ops imx_hab_ops_iim = {
@@ -265,6 +287,7 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
 	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
 	.print_status = imx8m_hab_print_status,
+	.revoke_key = imx8m_hab_revoke_key_ocotp,
 };
 
 static int imx_ahab_write_srk_hash(const u8 *__newsrk, unsigned flags)
@@ -536,3 +559,25 @@ static int init_imx_hab_print_status(void)
 	return 0;
 }
 postmmu_initcall(init_imx_hab_print_status);
+
+int imx_hab_revoke_key(unsigned key_idx, unsigned flags)
+{
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+	int ret;
+
+	if (!ops || !ops->revoke_key)
+		return -ENOSYS;
+
+	if (flags & IMX_SRK_REVOKE_KEY_PERMANENT) {
+		ret = ops->permanent_write_enable(1);
+		if (ret)
+			return ret;
+	}
+
+	ret = ops->revoke_key(key_idx);
+
+	if (flags & IMX_SRK_REVOKE_KEY_PERMANENT)
+		ops->permanent_write_enable(0);
+
+	return ret;
+}
diff --git a/include/hab.h b/include/hab.h
index 2cef3841d149..fd32bff15ef8 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -42,6 +42,11 @@ static inline int habv4_get_state(void)
  * fuses so that the key hash can not be modified.
  */
 #define IMX_SRK_HASH_WRITE_LOCK		BIT(2)
+/*
+ * Revoke the SRK key permanently, without the flag only shadow registers are
+ * written.
+ */
+#define IMX_SRK_REVOKE_KEY_PERMANENT	BIT(3)
 
 bool imx_hab_srk_hash_valid(const void *buf);
 int imx_hab_write_srk_hash(const void *buf, unsigned flags);
@@ -51,5 +56,6 @@ int imx_hab_read_srk_hash(void *buf);
 int imx_hab_lockdown_device(unsigned flags);
 int imx_hab_device_locked_down(void);
 int imx_hab_print_status(void);
+int imx_hab_revoke_key(unsigned key_idx, unsigned flags);
 
 #endif /* __HABV4_H */
diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index c4f94e61e8f8..e6fa96b40ba9 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -57,5 +57,6 @@
 #define MX8M_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(9) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
 #define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))
 
 #endif /* __MACH_IMX_OCOTP_FUSEMAP_H */
-- 
2.39.2




Delivery-date: Thu, 13 Jun 2024 15:10:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDu-005NkO-1C
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:10:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkDt-00067R-Kf
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:10:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jAIFOXI1Hp2u1V9y7RXRXdMxdRr76vfnytDvXKt/q9s=; b=rqzc1fZb3HsZjoDHTyxoixkBOq
	KpaT99fdAzJktjEe6+pCXYruJSZNQWPpBK825QgQWyaHevbU0iWtDw9Wyay68UvJkeShft4lRQ+aR
	/upykXqomTLAJkaQQ2R0SwgJEkojrlfRLYo/QD+xNj377J4dZk4uBVkYTBGJ5Vn6nQkWb+8qKvn4M
	4mieNEoPaFXJ1qruqk5h+J1byZ1LC7EUpeSPiY1xiNEd/zHRbwJOgi4EhfovMrbAs0xXsVN7nVEW9
	k5lXzln/9ZzlJ8dX1zIvdfjVCKSpPkQVBE1jgLjBL92qfHOvL72Y4mSWN26eGHV5Q363cDkkpBynG
	mfQ86+ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkDM-0000000GdYR-3PFO;
	Thu, 13 Jun 2024 13:10:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkD9-0000000GdNp-2skd
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:09:56 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkD8-0005fE-JE
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:09:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:09:44 +0200
Message-Id: <20240613130944.264396-9-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613130944.264396-1-m.felsch@pengutronix.de>
References: <20240613130944.264396-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_060951_824838_06393F60 
X-CRM114-Status: GOOD (  15.32  )
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
Subject: [PATCH 9/9] i.MX: HAB: add imx_hab_field_return support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a convenient common helper to burn the field-return fuse which wraps
the platform specific hook. At the moment only i.MX8M devices are
supported. Adding support for other platforms can be done by providing
the platform specific hook.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/hab/hab.c                | 41 ++++++++++++++++++++++++++++++++
 include/hab.h                    |  6 +++++
 include/mach/imx/ocotp-fusemap.h |  1 +
 3 files changed, 48 insertions(+)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index e21a3c3acf81..943e8333e746 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -252,6 +252,23 @@ static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
 	return ret;
 }
 
+static int imx8m_hab_field_return_ocotp(void)
+{
+	int ret;
+
+	ret = imx_ocotp_field_return_locked();
+	if (ret < 0)
+		return ret;
+
+	/* Return -EINVAL in case the FIELD_RETURN write is locked */
+	if (ret == 1)
+		return -EINVAL;
+
+	ret = imx_ocotp_write_field(MX8M_OCOTP_FIELD_RETURN, 1);
+
+	return ret;
+}
+
 struct imx_hab_ops {
 	int (*write_srk_hash)(const u8 *srk, unsigned flags);
 	int (*read_srk_hash)(u8 *srk);
@@ -260,6 +277,7 @@ struct imx_hab_ops {
 	int (*device_locked_down)(void);
 	int (*print_status)(void);
 	int (*revoke_key)(unsigned key_idx);
+	int (*field_return)(void);
 };
 
 static struct imx_hab_ops imx_hab_ops_iim = {
@@ -288,6 +306,7 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
 	.print_status = imx8m_hab_print_status,
 	.revoke_key = imx8m_hab_revoke_key_ocotp,
+	.field_return = imx8m_hab_field_return_ocotp,
 };
 
 static int imx_ahab_write_srk_hash(const u8 *__newsrk, unsigned flags)
@@ -581,3 +600,25 @@ int imx_hab_revoke_key(unsigned key_idx, unsigned flags)
 
 	return ret;
 }
+
+int imx_hab_field_return(unsigned flags)
+{
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+	int ret;
+
+	if (!ops || !ops->field_return)
+		return -ENOSYS;
+
+	if (flags & IMX_FIELD_RETURN_PERMANENT) {
+		ret = ops->permanent_write_enable(1);
+		if (ret)
+			return ret;
+	}
+
+	ret = ops->field_return();
+
+	if (flags & IMX_FIELD_RETURN_PERMANENT)
+		ops->permanent_write_enable(0);
+
+	return ret;
+}
diff --git a/include/hab.h b/include/hab.h
index fd32bff15ef8..3db46fe256fe 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -47,6 +47,11 @@ static inline int habv4_get_state(void)
  * written.
  */
 #define IMX_SRK_REVOKE_KEY_PERMANENT	BIT(3)
+/*
+ * Set FIELD_RETURN fuse permanently, without the flag only shadow registers are
+ * written.
+ */
+#define IMX_FIELD_RETURN_PERMANENT	BIT(4)
 
 bool imx_hab_srk_hash_valid(const void *buf);
 int imx_hab_write_srk_hash(const void *buf, unsigned flags);
@@ -57,5 +62,6 @@ int imx_hab_lockdown_device(unsigned flags);
 int imx_hab_device_locked_down(void);
 int imx_hab_print_status(void);
 int imx_hab_revoke_key(unsigned key_idx, unsigned flags);
+int imx_hab_field_return(unsigned flags);
 
 #endif /* __HABV4_H */
diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index 1aece9195ff9..37f1ee8298c2 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -67,6 +67,7 @@
 #define MX8M_OCOTP_TZASC_EN		(OCOTP_WORD(0x480) | OCOTP_BIT(11) | OCOTP_WIDTH(1))
 #define MX8MP_OCOTP_ROM_NO_LOG		(OCOTP_WORD(0x480) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_RECOVERY_SDMMC_BOOT_DIS	(OCOTP_WORD(0x490) | OCOTP_BIT(23) | OCOTP_WIDTH(1))
+#define MX8M_OCOTP_FIELD_RETURN		(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))
 
 #endif /* __MACH_IMX_OCOTP_FUSEMAP_H */
-- 
2.39.2




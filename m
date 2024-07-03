Delivery-date: Wed, 03 Jul 2024 19:20:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3f9-001F1t-0B
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 19:20:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3f7-0007Qa-Tm
	for lore@pengutronix.de; Wed, 03 Jul 2024 19:20:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8hquUND6V7zaDUJpA2LQWeNqx7HrbIgjrMRS/QRTYyc=; b=synuodu7ruOOFai15lxwSwvMTn
	VM+u9JzlGvTamw46b5nhwdUHR1zl3ARr/pVuwqQZbuDDATE5YDsVGAf5x99z3O8YPS+oeK8jAUDGv
	AKAVMFuqAaxU6SyvtTGrdn+kdoS3xRePgquYbeVbCbgtG9UtgvmJlFr+QqfgoUmJ+fscTlgDugQQb
	S7oHY9pjy1z0AauWgNA7ITGKXmkooXntzpFHLDqhBYc5lpeho8N2Vwx8XhPV9rQvJlFGXAMq9qj7i
	FUA1qvRLug6z6Vz/NIpi/eMeOHQMR9oh/6mJ3/Ue5BCBmMfXe9gIDJeSa6rlcncmUFnZaIp5PRcM6
	6JLouWQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3eg-0000000AycT-2697;
	Wed, 03 Jul 2024 17:20:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3eW-0000000AyXE-3Qg8
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 17:20:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3eU-00073M-Tu; Wed, 03 Jul 2024 19:20:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 19:20:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-hab-v2-9-17419aa5d3a3@pengutronix.de>
References: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_102021_278367_1E013799 
X-CRM114-Status: GOOD (  14.81  )
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
Subject: [PATCH v2 9/9] i.MX: HAB: add imx_hab_field_return support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a convenient helper to burn the field-return fuse which wraps the
platform specific hook. At the moment only i.MX8M devices are supported.
Adding support for other platforms can be done by providing the platform
specific hook.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/hab/hab.c                | 41 ++++++++++++++++++++++++++++++++++++++++
 include/hab.h                    |  1 +
 include/mach/imx/ocotp-fusemap.h |  1 +
 3 files changed, 43 insertions(+)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 7c840303d395..73d470be131e 100644
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
@@ -581,3 +600,25 @@ int imx_hab_revoke_key(unsigned key_idx, bool permanent)
 
 	return ret;
 }
+
+int imx_hab_field_return(bool permanent)
+{
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+	int ret;
+
+	if (!ops || !ops->field_return)
+		return -ENOSYS;
+
+	if (permanent) {
+		ret = ops->permanent_write_enable(1);
+		if (ret)
+			return ret;
+	}
+
+	ret = ops->field_return();
+
+	if (permanent)
+		ops->permanent_write_enable(0);
+
+	return ret;
+}
diff --git a/include/hab.h b/include/hab.h
index 7a70c67f0488..393cf0513e0c 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -52,5 +52,6 @@ int imx_hab_lockdown_device(unsigned flags);
 int imx_hab_device_locked_down(void);
 int imx_hab_print_status(void);
 int imx_hab_revoke_key(unsigned key_idx, bool permanent);
+int imx_hab_field_return(bool permanent);
 
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



